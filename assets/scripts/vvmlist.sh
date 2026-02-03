#!/bin/bash

bgreen='\033[1;32m'
reset='\033[0m'

clear
read -p "difficulty: " diff
#plat="htbvip"
#plat="hackmyvm"
#plat="vulnyx"
read -p "platform: " plat
read -p "machine name: " curl
read -p "os: " os
echo -e "ato - account takeover ${bgreen}>>${reset} ad - active directory ${bgreen}>>${reset} adrb - ad recycle bin ${bgreen}>>${reset} adb - adb ${bgreen}>>${reset} adcs - adcs ${bgreen}>>${reset} bhaaa - addallowedtoact ${bgreen}>>${reset} bhakc - addkeycredentiallink ${bgreen}>>${reset} bhas - addself ${bgreen}>>${reset} ads - alternative data stream ${bgreen}>>${reset} aj - agent hijacking ${bgreen}>>${reset} bhaie - alwaysinstallelevated ${bgreen}>>${reset} amsi - amsi bypass ${bgreen}>>${reset} gogal - android ${bgreen}>>${reset} al - anonymous login ${bgreen}>>${reset} ans - ansible ${bgreen}>>${reset} api - api ${bgreen}>>${reset} apk - apk ${bgreen}>>${reset} apparmor - apparmor ${bgreen}>>${reset} aoi - arbitrary object instantiation ${bgreen}>>${reset} aei - arithmetic expression injection ${bgreen}>>${reset} asp - arp spoofing ${bgreen}>>${reset} asrep - as-rep ${bgreen}>>${reset} ab - auth bypass ${bgreen}>>${reset} authb - authentication bypass ${bgreen}>>${reset} auto - autologon ${bgreen}>>${reset} aws - aws ${bgreen}>>${reset} aze - azure storage explorer ${bgreen}>>${reset} bgpj - bgp hijack ${bgreen}>>${reset} be - binary exploit ${bgreen}>>${reset} bj - binary hijack ${bgreen}>>${reset} bit - bit flip ${bgreen}>>${reset} bou - bounce ${bgreen}>>${reset} bf - brute force ${bgreen}>>${reset} bof - buffer overflow ${bgreen}>>${reset} cap - capabilities ${bgreen}>>${reset} pcap - capture analysis ${bgreen}>>${reset} chm - chm ${bgreen}>>${reset} clm - clm bypass ${bgreen}>>${reset} ci - command injection ${bgreen}>>${reset} cd - constrained delegation ${bgreen}>>${reset} bre - container breakout ${bgreen}>>${reset} cj - cookie injection ${bgreen}>>${reset} coot - cookie theft ${bgreen}>>${reset} coof - cookie forgery ${bgreen}>>${reset} cors - cors ${bgreen}>>${reset} cprf - cprf ${bgreen}>>${reset} creds - credentials ${bgreen}>>${reset} crlfj - crlf injection ${bgreen}>>${reset} cron - cron ${bgreen}>>${reset} csrf - csrf ${bgreen}>>${reset} csti - csti ${bgreen}>>${reset} cve - cve ${bgreen}>>${reset} cyj - cypher injection ${bgreen}>>${reset} cls - clsid hijack ${bgreen}>>${reset} dr - data recover ${bgreen}>>${reset} dcsync - dcsync ${bgreen}>>${reset} debugfs - debugfs ${bgreen}>>${reset} decode - decode ${bgreen}>>${reset} dcr - default creds ${bgreen}>>${reset} dele - delegation ${bgreen}>>${reset} deser - deserialization ${bgreen}>>${reset} dllj - dll hijack ${bgreen}>>${reset} dnspf - dns spoofing ${bgreen}>>${reset} dnsadm - dnsadmins ${bgreen}>>${reset} docker - docker ${bgreen}>>${reset} dpapi - dpapi ${bgreen}>>${reset} dee - driver exploit ${bgreen}>>${reset} daly - dump analysis ${bgreen}>>${reset} xll - excel xll ${bgreen}>>${reset} efs - efs ${bgreen}>>${reset} encfs - encfs ${bgreen}>>${reset} erl - erlang ${bgreen}>>${reset} esi - esi ${bgreen}>>${reset} ecom - executedcom ${bgreen}>>${reset} ear - execution after redirect ${bgreen}>>${reset} ep - extension bypass ${bgreen}>>${reset} fgc - file_get_contents ${bgreen}>>${reset} fv - filename vulnerability ${bgreen}>>${reset} fj - filter injection ${bgreen}>>${reset} finger - finger ${bgreen}>>${reset} flcoo - flask cookie ${bgreen}>>${reset} bhfcp - forcechangepassword ${bgreen}>>${reset} ftp - ftp ${bgreen}>>${reset} fuse - fuse ${bgreen}>>${reset} fuzz - fuzzing ${bgreen}>>${reset} bhga - genericall ${bgreen}>>${reset} bhgw - genericwrite ${bgreen}>>${reset} bhws - writespn ${bgreen}>>${reset} git - git ${bgreen}>>${reset} glusterfs - glusterfs ${bgreen}>>${reset} gmsa - gmsa ${bgreen}>>${reset} gold - golden ticket ${bgreen}>>${reset} gpo - gpo ${bgreen}>>${reset} gpp - gpp ${bgreen}>>${reset} groups - groups ${bgreen}>>${reset} grpc - grpc ${bgreen}>>${reset} hc - hash crack ${bgreen}>>${reset} hle - hash length extension ${bgreen}>>${reset} hb - header bypass ${bgreen}>>${reset} hed - heapdump ${bgreen}>>${reset} hj - header injection ${bgreen}>>${reset} hfm - hidden field manipulation ${bgreen}>>${reset} hqli - hql injection ${bgreen}>>${reset} hta - hta ${bgreen}>>${reset} htj - html injection ${bgreen}>>${reset} hts - htaccess abuse ${bgreen}>>${reset} idor - idor ${bgreen}>>${reset} ipmi - ipmi ${bgreen}>>${reset} iscsi - iscsi ${bgreen}>>${reset} jarm - jarm ${bgreen}>>${reset} javaj - javascript injection ${bgreen}>>${reset} jdwp - jdwp ${bgreen}>>${reset} jwt - jwt ${bgreen}>>${reset} keepass - keepass ${bgreen}>>${reset} krb - kerberoast ${bgreen}>>${reset} krbr - kerberos relay ${bgreen}>>${reset} kern - kernel exploit ${bgreen}>>${reset} kernmod - kernel module ${bgreen}>>${reset} rengin - keylogger ${bgreen}>>${reset} kube - kubernetes ${bgreen}>>${reset} kio - kiosk escape ${bgreen}>>${reset} laps - laps ${bgreen}>>${reset} latj - latex injection ${bgreen}>>${reset} ldaphj - ldap hijacking ${bgreen}>>${reset} ldapj - ldap injection ${bgreen}>>${reset} lfi - lfi ${bgreen}>>${reset} libj - library hijack ${bgreen}>>${reset} logly - log analysis ${bgreen}>>${reset} logpoi - log poisoning ${bgreen}>>${reset} log4j - log4j ${bgreen}>>${reset} logical - logical ${bgreen}>>${reset} lsass - lsass ${bgreen}>>${reset} luaj - lua injection ${bgreen}>>${reset} lxd - lxd ${bgreen}>>${reset} mdi - markdown injection ${bgreen}>>${reset} mbck - machine backup ${bgreen}>>${reset} magcoo - magic cookie ${bgreen}>>${reset} magsh - magic script ${bgreen}>>${reset} maldll - malicious library ${bgreen}>>${reset} mass - mass assignment ${bgreen}>>${reset} memc - memcached ${bgreen}>>${reset} mfor - memory forensics ${bgreen}>>${reset} minio - minio ${bgreen}>>${reset} mof - managed object format ${bgreen}>>${reset} nfs - nfs ${bgreen}>>${reset} nntp - nntp ${bgreen}>>${reset} nosqli - nosql injection ${bgreen}>>${reset} ntds - ntds ${bgreen}>>${reset} ntlmrel - ntlm relay ${bgreen}>>${reset} ntlmt - ntlm theft ${bgreen}>>${reset} newj - newline injection ${bgreen}>>${reset} nulj - null byte injection ${bgreen}>>${reset} oauth - oauth ${bgreen}>>${reset} obs - off-by-slash ${bgreen}>>${reset} orm - orm injection ${bgreen}>>${reset} osint - osint ${bgreen}>>${reset} pado - padding oracle ${bgreen}>>${reset} passre - password reuse ${bgreen}>>${reset} pathj - path hijack ${bgreen}>>${reset} pathtr - path traversal ${bgreen}>>${reset} patht - path truncation ${bgreen}>>${reset} pathc - path confusion ${bgreen}>>${reset} petit - petitpotam ${bgreen}>>${reset} pgp - pgp ${bgreen}>>${reset} phar - phar ${bgreen}>>${reset} phish - phishing ${bgreen}>>${reset} phpj - php injection ${bgreen}>>${reset} phpmod - php module ${bgreen}>>${reset} pvivot - pivot ${bgreen}>>${reset} knock - port knock ${bgreen}>>${reset} pretk - pre-windows2000 ${bgreen}>>${reset} night - printnightmare ${bgreen}>>${reset} prng - prng ${bgreen}>>${reset} pspy - process snooping ${bgreen}>>${reset} pp - prototype pollution ${bgreen}>>${reset} pij - parameter injection ${bgreen}>>${reset} proxy - proxy ${bgreen}>>${reset} pve - proxmox ve ${bgreen}>>${reset} uaf - python uaf ${bgreen}>>${reset} raptor - raptor ${bgreen}>>${reset} rat - rat ${bgreen}>>${reset} rlb - rate limit bypass ${bgreen}>>${reset} rbash - rbash ${bgreen}>>${reset} rbcd - rbcd ${bgreen}>>${reset} rce - rce ${bgreen}>>${reset} redis - redis ${bgreen}>>${reset} reg - registry ${bgreen}>>${reset} reqs - request smuggling ${bgreen}>>${reset} resp - responder ${bgreen}>>${reset} rev - reversing ${bgreen}>>${reset} rfi - rfi ${bgreen}>>${reset} rmi - rmi ${bgreen}>>${reset} rsa - rsa ${bgreen}>>${reset} rsync - rsync ${bgreen}>>${reset} runas - runas ${bgreen}>>${reset} s3 - s3 ${bgreen}>>${reset} s4u - s4u2self ${bgreen}>>${reset} sand - sandwich attack ${bgreen}>>${reset} sfx - session fixation ${bgreen}>>${reset} tsb - sebackup ${bgreen}>>${reset} tsd - sedebug ${bgreen}>>${reset} ted - seenabledelegation ${bgreen}>>${reset} timr - timeroast ${bgreen}>>${reset} tsi - seimpersonate ${bgreen}>>${reset} tsl - seloaddriver ${bgreen}>>${reset} tsmv - semanagevolume ${bgreen}>>${reset} toctou - toctou ${bgreen}>>${reset} ss - session stealing ${bgreen}>>${reset} sgid - sgid ${bgreen}>>${reset} bhsc - shadow credentials ${bgreen}>>${reset} sc - side-channel ${bgreen}>>${reset} ser - serialization ${bgreen}>>${reset} shc - shadow copy ${bgreen}>>${reset} silver - silver ticket ${bgreen}>>${reset} smb - smb ${bgreen}>>${reset} sniff - sniffing ${bgreen}>>${reset} snmp - snmp ${bgreen}>>${reset} source - source code analysis ${bgreen}>>${reset} elj - el injection ${bgreen}>>${reset} sql - sql ${bgreen}>>${reset} sqli - sql injection ${bgreen}>>${reset} sqlt - sql truncation ${bgreen}>>${reset} squash - squash ${bgreen}>>${reset} ssh - ssh ${bgreen}>>${reset} ssrf - ssrf ${bgreen}>>${reset} ssti - ssti ${bgreen}>>${reset} steg - steganography ${bgreen}>>${reset} strcmp - strcmp ${bgreen}>>${reset} sudo - sudo ${bgreen}>>${reset} suid - suid ${bgreen}>>${reset} sym - symlink ${bgreen}>>${reset} tabb - tabnabbing ${bgreen}>>${reset} telnet - telnet ${bgreen}>>${reset} tty - tty pushback ${bgreen}>>${reset} tunnel - tunnel ${bgreen}>>${reset} typec - type confusion ${bgreen}>>${reset} typej - type juggling ${bgreen}>>${reset} uacss - uac bypass ${bgreen}>>${reset} unde - unconstrained delegation ${bgreen}>>${reset} ufa - url file attack ${bgreen}>>${reset} urln - url normalization ${bgreen}>>${reset} viewstate - viewstate ${bgreen}>>${reset} voip - voip ${bgreen}>>${reset} vpn - vpn ${bgreen}>>${reset} vss - vss ${bgreen}>>${reset} waf - waf bypass ${bgreen}>>${reset} web3 - web3 ${bgreen}>>${reset} webdav - webdav ${bgreen}>>${reset} websocket - websocket ${bgreen}>>${reset} wer - windows error reporting ${bgreen}>>${reset} wildcard - wildcard ${bgreen}>>${reset} wifi - wireless ${bgreen}>>${reset} wp - wordpress ${bgreen}>>${reset} rwp - writable path ${bgreen}>>${reset} bhwd - writedacl ${bgreen}>>${reset} bhwo - writeowner ${bgreen}>>${reset} wsl - wsl ${bgreen}>>${reset} wsus - wsus ${bgreen}>>${reset} x11 - x11 ${bgreen}>>${reset} xdebug - xdebug ${bgreen}>>${reset} xpc - xp_cmdshell ${bgreen}>>${reset} xpaj - xpath injection ${bgreen}>>${reset} xslt - xslt injection ${bgreen}>>${reset} xss - xss ${bgreen}>>${reset} xxe - xxe ${bgreen}>>${reset} zz - zip slip"

for i in {1..30}; do
    read -p "vuln $i: " v
    eval "v$i=\"$v\""
    if [[ -z "$v" ]]; then
        echo "vuln sequence end"
        break
    fi
done

echo "---" > "$curl.md"
echo "diffis:" >> "$curl.md"
echo "  $diff:"	>> "$curl.md"
echo "    -" >> "$curl.md"
echo "platfs:" >> "$curl.md"
echo "  $plat:"	>> "$curl.md"
echo "    -" >> "$curl.md"
echo "curls:" >> "$curl.md"
echo "  $curl:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "  ${curl}ac:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "  ${curl}cm:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "functions:" >> "$curl.md"
echo "  $os:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "  $diff:" >> "$curl.md"
echo "    -" >> "$curl.md"
echo "  $plat:" >> "$curl.md"
echo "    -" >> "$curl.md"

for i in {1..30}; do
    vuln_var="v$i"
    vuln_value="${!vuln_var}"
    if [[ -n "$vuln_value" ]]; then
        echo "  $vuln_value:" >> "$curl.md"
        echo "    -" >> "$curl.md"
    fi
done

read -p "link: " link
read -p "mirror: " mirror
read -p "nick: " nn
echo "${curl}wu:" >> wals.txt
echo "  label: <span class=\"wuspan\">writeup by:<br>$nn<br><a class=\"wulink\" target=\"_blank\" href=\"$link\">original</a><a class=\"wulink\" target=\"_blank\" href=\"$mirror\">mirror</a></span>" >> wals.txt
echo "" >> "$curl.md"
echo "wals:" >> "$curl.md"
echo "  ${curl}wu:" >> "$curl.md"
echo "    -" >> "$curl.md"

read -p "video: " link2
if [[ "$link2" == "" ]]; then
	echo "no yt"
	echo "---" >> "$curl.md"
else
	read -p "video2: " mirror2
        read -p "videonick: " nn2
	echo "${curl}vi:" >> wals.txt
        echo "  label: <hr><span class=\"vispan\">video by:<br>$nn2<br><a class=\"wulink\" target=\"_blank\" href=\"$link2\">original</a><a class=\"wulink\" target=\"_blank\" href=\"$mirror2\">mirror</a></span>" >> wals.txt
	echo "  ${curl}vi:" >> "$curl.md"
	echo "    -" >> "$curl.md"
	echo "---" >> "$curl.md"
fi

read -p "machine url: " url
echo \"$curl\": >> curl.txt
echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"$url\"><img src=\"assets/$plat.png\"></a>" >> curl.txt

read -p "armctf y/blank: " acurl
if [[ "$acurl" == "" ]]; then
	echo "no armctf"
        echo \"${curl}ac\": >> curlac.txt
        echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"https://armctf.com/#%22editthis%22\"><img src=\"assets/underconstruction.png\"></a>" >> curlac.txt
else
	echo \"${curl}ac\": >> curlac.txt
        echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"https://armctf.com/#%22$curl%22\"><img src=\"assets/arm.png\"></a>" >> curlac.txt
fi

read -p "ctfmirror url: " cmurl
if [[ "$cmurl" == "" ]]; then
	echo "no ctfmirror"
        echo \"${curl}cm\": >> curlcm.txt
        echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"editthisctfmirror\"><img src=\"assets/underconstruction.png\"></a>" >> curlcm.txt
else
	echo \"${curl}cm\": >> curlcm.txt
        echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"$cmurl\"><img src=\"assets/mir.png\"></a>" >> curlcm.txt
fi

#
##
###
####
#####
######
#######