#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

cat > "$PWD/uploader.json" <<EOF
{
  "Drive": "OneDrive",
  "RefreshToken": "$ODRS_REFRESH_TOKEN",
  "ThreadNum": 10,
  "BlockSize": 10,
  "MainLand": false,
  "Language": "en",
  "TimeOut": 60,
  "BotKey": "",
  "UserID": "",
  "Other": null
}
EOF

exit 0
