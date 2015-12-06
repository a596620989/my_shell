# attach content to tail & no duplication
# param file
# param content
attachContent(){
	grep -q $2 $1
	if [ $? -ne 0 ]; then
		echo "attach $2 >> $1" 
		echo $2 >> $1
	fi
}


if [ ! -d ~/share ]; then
	# used for file share only, for example python SimpleHTTPServer 
	mkdir ~/share
fi
if [ ! -d ~/script ]; then
	mkdir ~/script
fi

if [ ! -d ~/download ]; then
	mkdir ~/download
fi



\cp .profile.common ~
\cp .vimrc ~
\cp .tmux.conf ~
attachContent ~/.profile 'source .profile.common'
