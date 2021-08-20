# shellcheck shell=bash

function main {
  pypi-mirror create \
    --copy \
    --download-dir "${envDownloads}" \
    --mirror-dir mirror \
    && python -m venv "${out}" \
    && source "${out}/bin/activate" \
    && HOME=. python -m pip install \
      --cache-dir . \
      --index-url "file://${PWD}/mirror" \
      --requirement "${envClosure}"
}

main "${@}"
