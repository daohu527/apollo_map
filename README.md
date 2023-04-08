# apollo_map
map use to carla and apollo simulation

## Maps
The map is extracted from carla `Release 0.9.14`, and then convert to apollo map. The list of supported maps is as follows.

| Name   | Status             | Remark |
|--------|--------------------|--------|
| town01 | :heavy_check_mark: |        |
| town02 | :heavy_check_mark: |        |
| town03 | :x:                |        |
| town04 | :heavy_check_mark: |        |
| town05 | :heavy_check_mark: |        |
| town06 | :x:                |        |
| town07 | :heavy_check_mark: |        |
| town10 | :heavy_check_mark: |        |
| town11 | :x:                |        |
| town12 | :x:                |        |

## Quick start
You can use the apollo map in the following steps.
1. git clone `apollo_map` to your local dir
2. copy the map to `modules/map/data/`
3. restart dreamview by `./scripts/bootstrap.sh restart`

## How to generate
The apollo map generate method can ref to [link](https://github.com/daohu527/dig-into-apollo/tree/main/questions)
