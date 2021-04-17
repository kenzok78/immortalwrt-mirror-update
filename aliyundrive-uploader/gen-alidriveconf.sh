#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

cat > "$PWD/config.json" <<EOF
{
  "REFRESH_TOKEN": "$ALI_REFRESH_TOKEN",
  "DRIVE_ID": "$ALI_DRIVE_ID",
  "ROOT_PATH": "immortalwrt/package-sources/$BRANCH",
  "FILE_PATH": "$PWD/../$SOURCE_PATH/dl",
  "MULTITHREADING": false,
  "MAX_WORKERS": 5
}
EOF

exit 0
