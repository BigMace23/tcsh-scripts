#!/bin/tcsh
set recipient = 'alex.mace.23@gmail.com'

set filelist = (*.*)

gpg --encrypt-files -r $recipient *.*

foreach file ($filelist)
	if (-e $file.gpg) then
		rm $file
	else
		echo "$file was not encrypted"
	endif
end


