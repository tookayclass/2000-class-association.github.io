#!/bin/bash

add_key() {
  local key=$1;
  local ssh_dir="${HOME}/.ssh";
  local destination="${ssh_dir}/pk_${TRAVIS_JOB_ID}.pem";
  local config="${ssh_dir}/config";

  mkdir --parents --verbose "${ssh_dir}";

  echo $key > $destination;
  chmod --recursive u=r,go= $destination;

  cat $config;
  sed "1 s/^/  IdentityFile ${destination}\n/" file1;
  sed "1 s/^/Host github.com\n/" file1;
  cat $config;
}
