
setup:
	git submodule update --init --depth --recursive
	cd vendor/qmk/qmk_firmware &&  make git-submodule

deploy:
	curl -X POST https://content.dropboxapi.com/2/files/upload \
	  --header "Authorization: Bearer ${ACCESS_TOKEN}" \
	  --header "Dropbox-API-Arg: {\"path\": \"${PATH}\",\"mode\": \"add\",\"autorename\": true,\"mute\": false}" \
	  --header "Content-Type: application/octet-stream" \
	  --data-binary @${DATA_BINARY}

