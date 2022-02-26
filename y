#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
apt install wget -y
apt install curl -y
clear
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
	if ! which wget > /dev/null; then
         clear
  	   echo -e "${red}Wah Mau Belajar Nakal Yah !${NC}"
         sleep 2
     	   exit 0
	   clear
	else
	   echo "Wget is already installed"
	fi

	if ! which curl > /dev/null; then
         clear
  	   echo -e "${red}Wah Mau Belajar Nakal Yah !${NC}"
         sleep 2
     	   exit 0
	   clear
	else
	   echo "curl is already installed"
	fi
fileee=/usr/bin/wget
minimumsize=400000
actualsize=$(wc -c <"$fileee")
if [ $actualsize -ge $minimumsize ]; then
    clear
    echo -e "${green}Checking...${NC}"
else
    clear
    echo -e "${red}Permission Denied!${NC}";
    echo "Reason : Modified Package To Bypass Sc"
    exit 0
fi
fileeex=/usr/bin/curl
minimumsizex=15000
clear
actualsizex=$(wc -c <"$fileeex")
if [ $actualsizex -ge $minimumsizex ]; then
    clear
    echo -e "${green}Checking...${NC}"
else
    clear
    echo -e "${red}Permission Denied!${NC}";
    echo "Reason : Modified Package To Bypass Sc"
    exit 0
fi
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/xkjdox/rijrekeksdpdolwoqkqkakodix/main/Nxbdjekkwso.txt | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
echo " Update Script...."
cd /usr/bin
wget -O menu2 "https://raw.githubusercontent.com/scriptvpskita/xray-learning/main/menu2.sh"
wget -O menu "https://raw.githubusercontent.com/scriptvpskita/xray-learning/main/menu.sh"
wget -O add-trws "https://raw.githubusercontent.com/scriptvpskita/xray-learning/main/add-trws.sh"
chmod +x menu
chmod +x menu2
chmod +x add-trws
clear
cat > /usr/local/etc/xray/config.json << END 
{
  "log": {
    "access": "/var/log/xray/access.log",
    "error": "/var/log/xray/error.log",
    "loglevel": "info"
    },
    "inbounds": [
        {
            "port": 443,
            "protocol": "vless",
            "settings": {
                "clients": [
                    {
                        "id": "$uuid",
                        "flow": "xtls-rprx-direct",
                        "level": 0,
                        "email": "user"
                    }
#vlessxtls
                ],
                "decryption": "none",
                "fallbacks": [
                    {
                        "dest": 1310,
                        "xver": 1
                    },
                    {
                        "path": "/trojanws",
                        "dest": 1320,
                        "xver": 1
                    },
                    {
                        "path": "/vlessws",
                        "dest": 1234,
                        "xver": 1
                    },
                    {
                        "path": "/vmesstcp",
                        "dest": 2345,
                        "xver": 1
                    },
                    {
                        "path": "/vmessws",
                        "dest": 3456,
                        "xver": 1
                    }
                ]
            },
            "streamSettings": {
                "network": "tcp",
                "security": "xtls",
                "xtlsSettings": {
                    "alpn": [
                        "http/1.1"
                    ],
                    "certificates": [
                        {
                            "certificateFile": "/etc/ssl/private/fullchain.pem",
                            "keyFile": "/etc/ssl/private/privkey.pem"
                        }
                    ]
                }
            }
        },
        {
            "port": 1310,
            "listen": "127.0.0.1",
            "protocol": "trojan",
            "settings": {
                "clients": [
                    {
                        "password": "$uuid",
                        "level": 0,
                        "email": "user"
                    }
#trojantcp
                ],
                "fallbacks": [
                    {
                        "dest": 81
                    }
                ]
            },
            "streamSettings": {
                "network": "tcp",
                "security": "none",
                "tcpSettings": {
                    "acceptProxyProtocol": true
                }
            }
        },
      {
          "port": 1320,
          "listen": "127.0.0.1",
          "protocol": "trojan",
          "settings": {
           "clients": [
       {
           "password": "$uuid",
           "level": 0,
           "email": "user"
       }
#trojanws
      ],
           "fallbacks": [
       {
           "dest": 8081
       }
     ]
  },
      "streamSettings": {
        "network": "ws",
        "security": "none",
        "wsSettings": {
          "acceptProxyProtocol": true,
          "path": "/trojanws"
         }
      }
    },
        {
            "port": 1234,
            "listen": "127.0.0.1",
            "protocol": "vless",
            "settings": {
                "clients": [
                    {
                        "id": "$uuid",
                        "level": 0,
                        "email": "user"
                    }
#vlessws
                ],
                "decryption": "none"
            },
            "streamSettings": {
                "network": "ws",
                "security": "none",
                "wsSettings": {
                    "acceptProxyProtocol": true,
                    "path": "/vlessws"
                }
            }
        },
        {
            "port": 2345,
            "listen": "127.0.0.1",
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "$uuid",
                        "level": 0,
                        "email": "user"
                    }
#vmesstcp
                ]
            },
            "streamSettings": {
                "network": "tcp",
                "security": "none",
                "tcpSettings": {
                    "acceptProxyProtocol": true,
                    "header": {
                        "type": "http",
                        "request": {
                            "path": [
                                "/vmesstcp"
                            ]
                        }
                    }
                }
            }
        },
        {
            "port": 3456,
            "listen": "127.0.0.1",
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "$uuid",
                        "level": 0,
                        "email": "user"
                     }
#vmessws
                ]
            },
            "streamSettings": {
                "network": "ws",
                "security": "none",
                "wsSettings": {
                    "acceptProxyProtocol": true,
                    "path": "/vmessws"
                }
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom"
        }
    ]
}
END
systemctl restart xray
echo "update selesai"
echo "reboot dalam 3 detik..."
sleep 3
reboot
