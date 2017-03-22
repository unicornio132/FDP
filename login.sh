#!/bin/bash
USUARIO=Thales
SENHA=123
VOLTA=1
while (( $VOLTA != 0 )); do
	clear
	echo
	echo "Debian GNU/Linux 8 jessie tty1"
	echo
	QNT=1
	while (( $QNT <= 5 )); do
		echo -n "jessie login: "
		read USER
		echo -n "Password: "
		read -s PASS
		if [ $USER == $USUARIO ]; then
			if [ $PASS == $SENHA ]; then
				QNT=6
				VOLTA=0
			fi
		fi
		echo
		if (( $QNT <= 5 )); then
			sleep 3
			echo
			echo "Login incorrect"
		fi
		let QNT=($QNT+1)
	done
done
