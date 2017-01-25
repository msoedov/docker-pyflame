#!/bin/bash

render() {
sedStr="
  s!%%VERSION%%!$version!g;
"

sed -r "$sedStr" $1
}

versions=(2.7 3.5 3.6)
for version in ${versions[*]}; do
  render Dockerfile > $version.Dockerfile
done
