#!/bin/bash

set -e

for civ6save in $(find ./ -name '*.Civ6Save'); do

  output_prefix="${civ6save//\.Civ6Save/}"

  if [ ! -f "${output_prefix}.bin" ]; then
    echo "Generating bin for '$civ6save'"

    viash run ../civ6_pipeline/src/civ6_save_renderer/dump_decompressed/config.vsh.yaml -- \
      --input ${output_prefix}.Civ6Save \
      --output ${output_prefix}.bin
  
  fi

  if [ ! -f "${output_prefix}.json" ]; then
    echo "Generating json for '$civ6save'"

    viash run ../civ6_pipeline/src/civ6_save_renderer/parse_imhex/config.vsh.yaml -- \
      --input ${output_prefix}.bin \
      --output ${output_prefix}.json \
      --pattern ../civ6save_analysis/main.hex \
      --includes ../civ6save_analysis/patterns/ \
      --include_imhex_patterns
  fi
done