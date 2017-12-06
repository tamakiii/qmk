[![wercker status](https://app.wercker.com/status/8566ca542e5b62be37df2e26aa9b6825/s/master "wercker status")](https://app.wercker.com/project/byKey/8566ca542e5b62be37df2e26aa9b6825)

# qmk

## dependencies
- wercker
- docker
- docker-machine
- virtualbox

## note
~~~sh
docker-machine create --driver virtualbox dev
eval "$(docker-machine env dev)"
~~~
~~~sh
X_GITHUB_SSH_KEY_PRIVATE=$(cat ~/.ssh/id_rsa) X_KEYBOARD=ergodox_ez X_KEYMAP=default wercker build --direct-mount
open ./vendor/qmk/qmk_firmware/.build
~~~~
