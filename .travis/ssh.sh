#!/bin/bash

add_key() {
  local key=$1;
  local ssh_dir="${HOME}/.ssh"
  local destination="${ssh_dir}/id_rsa";
  local config="${ssh_dir}/config";

  mkdir --parents --verbose "${ssh_dir}";

  echo $key > $destination;

  (echo "Host github.com"; echo "    IdentityFile ${destination}") > $config;
  chmod --recursive u=r,go= "${ssh_dir}";
}
