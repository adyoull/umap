#!/usr/bin/env bash
set -eo pipefail

sleep 60 && umap migrate
# then collect static files
umap collectstatic --noinput
# create languagae files
#umap storagei18n
# compress static files
umap compress
# run uWSGI
exec uwsgi --ini uwsgi.ini
