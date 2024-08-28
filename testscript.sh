check_noexec_flag() {
	scriptFile="$1/blNoExecTest.sh" 
	if [ "$scriptFile" ]
	then
		rm -f "$scriptFile"
	fi

cat <<END > "$scriptFile"
#!/bin/sh
echo "Checking for  for NOEXEC flag set on current directory or not." 
END

#rm -rf "$scriptFile"
}
TMP_DIR=./testdir
check_noexec_flag "${TMP_DIR}"
