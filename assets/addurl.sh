#!/bin/bash

for i in $(ls); do
	echo \"$i\": >> curl.txt
	echo '  label: <a class="newicon" href="vhlink"><img src="assets/vulnhub.png"></a>' >> curl.txt
done
echo "Done"

#"dddhtbt":
#  label: <a class="newicon" href="htblink"><img src="assets/htbvip.png"></a>
#"dddvht":
#  label: <a class="newicon" href="vhlink"><img src="assets/vulnhub.png"></a>
#"dddhmvmt":
#  label: <a class="newicon" href="hmvmlink"><img src="assets/hmvm.png"></a>
