#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

cat > "$PWD/config.json" <<EOF
{
  "REFRESH_TOKEN": "$ALI_REFRESH_TOKEN",
  "DRIVE_ID": "$ALI_DRIVE_ID",
  "ROOT_PATH": "immortalwrt",
  "FILE_PATH": "$PWD/../package-sources",
  "MULTITHREADING": true,
  "MAX_WORKERS": 4,
  "CHUNK_SIZE": 104857600,
  "RESUME": true,
  "OVERWRITE": true,
  "RETRY": 3,
  "RESIDENT": false,
  "VERSIONS":"v2021.0804.1200"
}
EOF

exit 0
