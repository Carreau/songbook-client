#! /bin/bash
# this script need 
# https://github.com/Carreau/yoursway-create-dmg
# to correctly create a .dmg
rm -rf .tmp
IMGNAME="Songbook-Client-$(git describe).dmg"
test -f $IMGNAME && rm $IMGNAME
~/yoursway-create-dmg/create-dmg   \
	--icon-size 96  \
	--linktoappfolder \
	--window-pos 413 295  \
	--window-size 770 367  \
	--icon Applications 527 187 \
	--volname "Songbook Client v0.5.1"   \
	--icon "Songbook-Client.app" 201 187  \
	--background ./macos_specific/image_disque_backgroud.png  \
	$IMGNAME ~/songbook-client/build/Songbook-Client.app
