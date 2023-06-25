# TestMap

- All terrains
- All features
- Almost all improvements (Except barbarian outpost)
- All continents
- All resources
- All world wonders
- All roads

- Enter game as Abraham Lincoln (America)

Specific player properties:
- America (Player 0) has all tiles revealed
- Arabia (Player 1) has access to all civics
- Australia (Player 2) has access to all techs
- Aztec (Player 3) has 123465 gold
- Babylon (Player 4) has 456789 faith

```bash
viash run ../civ6_pipeline/src/civ6_save_renderer/dump_decompressed/config.vsh.yaml -- \
  --input "testmap/TestMap v0.2 Save.Civ6Save" \
  --output "testmap/TestMap v0.2 Map.bin"
```

For tile locations of specific terrains, features, etc, check the "testmap_tile" column in the [Civ6Save Data Sheet](https://docs.google.com/spreadsheets/d/1bOlgW25zpWOUTPcPcNDbfpXK5f90J2BBaBuzwypABQs/edit#gid=66860690)