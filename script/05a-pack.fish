#!/usr/bin/env fish

function do_func
  argparse -n do_func 'h/help' 'v/version=' -- $argv
  or return 1

  if set -lq _flag_help
    echo "05a-pack.fish -s/--version <PACK_CLI_VERSION>"
    return
  end

  set -lq _flag_version
  or set -l _flag_version 0.11.2

  wget https://github.com/buildpacks/pack/releases/download/v$_flag_version/pack-v$_flag_version-linux.tgz
tar xvf pack-v$_flag_version-linux.tgz
rm pack-v$_flag_version-linux.tgz
sudo mv pack /usr/local/bin/
pack --version
end

do_func $argv
