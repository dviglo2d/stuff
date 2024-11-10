#!/bin/sh

repo_dir=$(dirname "$0")

git -C "$repo_dir" submodule add https://github.com/dviglo2d/dviglo2d external/dviglo2d
git -C "$repo_dir" submodule add https://github.com/dviglo2d/dv_big_int external/dv_big_int
git -C "$repo_dir" submodule update --init --recursive
