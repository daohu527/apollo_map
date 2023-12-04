#!/bin/bash

echo "Start generating Apollo dependency map."

for index in $(seq -w 1 12); do
  map_path=/apollo/modules/map/data/town${index}
  echo ${map_path}
  if [ -d ${map_path} ]; then
    ./bazel-bin/modules/map/tools/sim_map_generator -map_dir=${map_path} -output_dir=${map_path}
    ./bazel-bin/modules/routing/topo_creator -map_dir=${map_path} --flagfile=modules/routing/conf/routing.conf
  else
    echo \"${map_path}\" does not exist!
  fi
done
