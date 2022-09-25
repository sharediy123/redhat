#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8081,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "f0e31541-a6b0-41d8-9df0-0430a07ce8e6",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/window"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
