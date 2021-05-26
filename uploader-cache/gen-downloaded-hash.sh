#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

DL_PATH="immortalwrt/dl"
LIST_FILE="uploaded-files/$UPLOADER_TYPE.sha256sum"

mkdir -p "uploaded-files"

sha256sum "$DL_PATH"/* > "$LIST_FILE" 2>"/dev/null"
exit 0