# /usr/local/bin/php
# Run php at the given docker container

path=$(printf '%s\n' "${PWD##*/}")
if (( ${path} == "WhoPlusYou-Html5" ))
then
	command="docker exec whoplusyou-html5-whoplusyou-html5.test-1 php "$@""
	echo "Running php on docker whoplusyou-html5-whoplusyou-html5.test-1"
else
	command="docker exec ${path}_laravel.test_1 php "$@""
	echo "Running php on docker ${path}_laravel.test_1"
fi
$command
