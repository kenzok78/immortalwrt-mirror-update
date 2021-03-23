#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

THREAD=5
COUNT=0

TMP_FIFO="$(mktemp --dry-run)"
mkfifo "$TMP_FIFO"
exec 6<>"$TMP_FIFO"

for ((FDIO=0;FDIO<"$THREAD";FDIO++));do
	echo
done >&6

for FILE in "$SOURCE_PATH/dl"/*; do
	let COUNT++
	[ "$COUNT" -gt "$THREAD" ] && { sleep 5s; COUNT=0; }
	read -u6
	{
		printf '%s' "$FILE" | grep -q "tar\.xz" || SKIP_ARG="-skip"
		"$PWD/OneDriveUploader" -f -c "$UPLOADER_CONF" $SKIP_ARG -s "$FILE" -r "immortalwrt/package-sources/$BRANCH"
		echo >&6
	} &
done

wait

exec 6>&-
rm -f "$TMP_FIFO"
exit 0
