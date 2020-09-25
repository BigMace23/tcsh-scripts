#!/bin/tcsh
set filelist = (*.gpg)

gpg --decrypt-files *.gpg

foreach file ($filelist)
	set filename = `echo $file | sed 's/.gpg//'`
	if (-e $filename) then
		rm $file
	else
		echo "$file was not decrypted"
	endif
end


