contains() {
    string="$1"
    substring="$2"
    if test "${string#*$substring}" != "$string"
    then
        return 0    # $substring is in $string
    else
        return 1    # $substring is not in $string
    fi
}

while true; do
result=$(curl -s 'https://www.google.com/voice/b/0/service/post' -H 'origin: https://www.google.com' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: zh-CN,zh;q=0.8' -H 'user-agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36' -H 'x-chrome-uma-enabled: 1' -H 'content-type: application/x-www-form-urlencoded;charset=UTF-8' -H 'accept: */*' -H 'referer: https://www.google.com/voice/b/0?pli=1' -H 'authority: www.google.com' -H 'cookie: GV_NR=1; gv=BwVFDbmvlZ9ussOGNt8HlCfwSDoPPlI3wnXtX6dSol3_AxyL39hJZu9D1sG40JSczn3eAg.; OTZ=4000379_24_24__24_; SID=BwVFDSMwB7a6juoRzKoUGRAodGM-0cn1c71-vFXeba1BdPNMiOgYyVSbctY8lCSFoq0THg.; HSID=ABxrdKFoAr6jqBA9E; SSID=AI6X4M_CREQUnR_Uj; APISID=1M5VLkX9N5nOEI_v/AonKu9E_ZJ8PJR9Gf; SAPISID=n4D7Wt3cS5MaUM4H/AFblolpjKATcN6qub; S=grandcentral=NFEAL9gqbO1-MCNsxLIzwacI1-86nuoF; _ga=GA1.1.1461429124.1481348021; _gid=GA1.1.1999313190.1502273326; NID=109=U_1gCSuWpe0zRhaVhvKkycbcBE1PxurkIPZqqdQpVhz-mpEZ1zRhk5odkLej6EOgto4U2N1yIajIxAjVTfXOKAkO90pnD-37HytB4ttCjQ5iBJSiSpLNeSPXQDKkNZfhJn_6yuqbRpGEUVkDCJiUtkStUCAXhqoiGcMfn1ZsC1McnDie-jd3jcpZOX3bfZAzGPXx1WzYLp2nD-nGf_wwQVKWjijnfmDHAQoNUmkQEZSHZB7mK6KaDg; _gat=1; SIDCC=AA248beebr1cz9vcc-f56CMNqqCmY4BZCbLgxIz7lsFG67o-6motMowMc2rT0egCmHSLgFihtbKhTfJiqrrW' -H 'x-client-data: CJW2yQEIorbJAQjBtskBCKiKygEI+pzKAQipncoB' --data 'sid=3&mid=6&req=%5Bnull%2C%22%2B12135369448%22%2Ctrue%2C%22%22%5D&_rnr_se=vDhZ1oxRHj1lEZrwYfxl0jwP7qU%3D' --compressed)
 contains "$result" "error" || exit 0
    sleep 1.5
done