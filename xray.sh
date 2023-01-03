#!/bin/sh
if [ ! -f UUID ]; then
  UUID="27e2a30c-41f8-4131-b32e-05873350ca44"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

