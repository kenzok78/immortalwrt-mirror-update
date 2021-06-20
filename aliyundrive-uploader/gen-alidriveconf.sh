#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

cat > "$PWD/config.json" <<EOF
{
  "REFRESH_TOKEN": "$ALI_REFRESH_TOKEN",
  "DRIVE_ID": "$ALI_DRIVE_ID",
  "ROOT_PATH": "immortalwrt/package-sources",
  "FILE_PATH": "../package-sources-mirror",
  "MULTITHREADING": true,
  "MAX_WORKERS": 4,
  "CHUNK_SIZE": 104857600,
  "RESUME": true,
  "OVERWRITE": false
}
EOF

exit 0
