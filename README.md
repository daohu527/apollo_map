# apollo_map
Map use to carla and Apollo simulation

## Maps
The map is extracted from carla `Release 0.9.14`, and then convert to Apollo map. The list of supported maps is as follows.

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
You can use the Apollo map in the following steps.

**Steps:**

1. **Clone Apollo Map Repository:**

   ```bash
   git clone apollo_map
   ```

   This will clone the Apollo map data repository into your local directory.

2. **Convert OpenDRIVE Map to Apollo Format:**

   ```bash
   sh gen_apollo_map.sh
   ```

   This script converts the OpenDRIVE format map into the format required by Apollo.

3. **Place Converted Map in the Correct Directory:**

   ```bash
   cp <converted_map_dir> modules/map/data/
   ```

   Replace `<converted_map_dir>` with the actual directory of the generated Apollo map file. Move this directory to the `modules/map/data/` directory.

4. **Generate Routing Map:**

   ```bash
   sh gen_dep_map.sh
   ```

   This step generates a routing map for path planning.

5. **Restart Dreamview:**

   ```bash
   ./scripts/bootstrap.sh restart
   ```

   If you want to visualize the map in Dreamview, restart Dreamview using this command.

**Additional Notes:**

* Ensure you have the necessary permissions to execute the scripts.
* Refer to the official Apollo project documentation for more detailed information on Apollo maps.
