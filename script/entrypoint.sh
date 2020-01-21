#!/bin/bash

USER_ID=${_UID:-9001}

useradd --shell /bin/bash -u $USER_ID -o -c "" -m dev

exec "$@"
