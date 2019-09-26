docker run --rm -e "JEKYLL_ENV=docker" --volume=${PWD}:/srv/jekyll --volume=jekyllbundlecache:/usr/local/bundle jekyll/jekyll:3.8.5 jekyll build --verbose --config _config.yml,_config.docker.yml

docker run --volume=${PWD}:/srv/jekyll -it validator/validator /vnu-runtime-image/bin/vnu /srv/jekyll/_site/*.html
