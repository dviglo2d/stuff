#!/bin/sh

repo_dir=$(dirname "$0")

remove_submodule()
{
    git -C "$repo_dir" submodule deinit -f $1
    rm -rf "$repo_dir/.git/modules/$1"
    git -C "$repo_dir" rm -f $1
}

remove_submodule external/dviglo2d
remove_submodule external/dv_big_int
