#!/usr/bin/env python3

import yaml
import sys
import os

def format_yaml_file(filepath):
    try:
        with open(filepath, 'r') as f:
            data = yaml.safe_load(f)

        if data is None:
            print(f"[SKIPPED] {filepath} is empty or invalid YAML.")
            return

        with open(filepath, 'w') as f:
            yaml.dump(data, f, sort_keys=False, default_flow_style=False, indent=2)

        print(f"[OK] Formatted: {filepath}")

    except Exception as e:
        print(f"[ERROR] Could not format {filepath}: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python format_yaml.py file1.yaml [file2.yaml ...]")
        sys.exit(1)

    for yaml_file in sys.argv[1:]:
        if not yaml_file.endswith(('.yaml', '.yml')):
            print(f"[SKIPPED] {yaml_file} is not a YAML file.")
            continue
        if not os.path.isfile(yaml_file):
            print(f"[SKIPPED] {yaml_file} does not exist.")
            continue

        format_yaml_file(yaml_file)

