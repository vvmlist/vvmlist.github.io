#!/bin/bash

clear
read -p "difficulty: " diff
read -p "platform: " plat
read -p "machine name: " curl
read -p "os: " os
echo "acd asrep arce blood brute bof burp capa cewl cronj cve dcs cred deser dirtra dns docker finger ftp git hash hidden krbro kernel"
echo "ldap libhj lfi logpoi lxcd mimik mount nfs nosqli capdum pathj pivot portkn powsh proxy rbash rce rdp rfi revsh rpc sam setenv smb"
echo "mail snmp source sql sqli ssh ssht ssl stego credz sudo suid kernelb sys telnet tftp group webdav winrm wp xml xss xxe"
read -p "vuln: " v1
read -p "vuln: " v2
read -p "vuln: " v3
read -p "vuln: " v4
read -p "vuln: " v5
read -p "vuln: " v6
read -p "vuln: " v7
read -p "vuln: " v8
read -p "vuln: " v9
read -p "vuln: " v10
read -p "vuln: " v11
read -p "vuln: " v12
read -p "vuln: " v13
read -p "vuln: " v14

echo "---" > $curl.md
echo "diffis:" >> $curl.md
echo "  $diff:"	>> $curl.md
echo "    -" >> $curl.md
echo "platfs:" >> $curl.md
echo "  $plat:"	>> $curl.md
echo "    -" >> $curl.md
echo "curls:" >> $curl.md
echo "  $curl:" >> $curl.md
echo "    -" >> $curl.md
echo "functions:" >> $curl.md
echo "  $os:" >> $curl.md
echo "    -" >> $curl.md
echo "  $diff:" >> $curl.md
echo "    -" >> $curl.md
echo "  $plat:" >> $curl.md
echo "    -" >> $curl.md
if [[ "$v1" == "" ]]; then
	echo ""
else
	echo "  $v1:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v2" == "" ]]; then
	echo ""
else
	echo "  $v2:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v3" == "" ]]; then
	echo ""
else
	echo "  $v3:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v4" == "" ]]; then
	echo ""
else
	echo "  $v4:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v5" == "" ]]; then
	echo ""
else
	echo "  $v5:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v6" == "" ]]; then
	echo ""
else
	echo "  $v6:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v7" == "" ]]; then
	echo ""
else
	echo "  $v7:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v8" == "" ]]; then
	echo ""
else
	echo "  $v8:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v9" == "" ]]; then
	echo ""
else
	echo "  $v9:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v10" == "" ]]; then
	echo ""
else
	echo "  $v10:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v11" == "" ]]; then
	echo ""
else
	echo "  $v11:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v12" == "" ]]; then
	echo ""
else
	echo "  $v12:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v13" == "" ]]; then
	echo ""
else
	echo "  $v13:" >> $curl.md
	echo "    -" >> $curl.md
fi
if [[ "$v14" == "" ]]; then
	echo ""
else
	echo "  $v14:" >> $curl.md
	echo "    -" >> $curl.md
fi
echo "" >> $curl.md
echo "wals:" >> $curl.md
echo "  "$curl"wu:" >> $curl.md
echo "    -" >> $curl.md
echo "---" >> $curl.md

########
#####
##
echo $curl"wu:" >> wals.txt
echo '  label: <a href="linkkkkkkkkkkk">writeup<br>nickkkk</a>' >> wals.txt

echo \"$curl\": >> curl.txt
echo '  label: <a class="newicon" href="vhlink"><img src="assets/'$plat'.png"></a>' >> curl.txt

#"dddhtbt":
#  label: <a class="newicon" href="htblink"><img src="assets/htbvip.png"></a>
#"dddvht":
#  label: <a class="newicon" href="vhlink"><img src="assets/vulnhub.png"></a>
#"dddhmvmt":
#  label: <a class="newicon" href="hmvmlink"><img src="assets/hmvm.png"></a>



