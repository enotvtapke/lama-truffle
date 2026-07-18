import os
import sys
import re

def clean_t_files(directory):
    for filename in os.listdir(directory):
        if not filename.endswith('.t'):
            continue

        filepath = os.path.join(directory, filename)
        with open(filepath, 'r') as f:
            lines = f.readlines()

        # Delete the first line
        lines = lines[1:]

        cleaned = []
        for line in lines:
            line = line.lstrip(' ')       # Remove leading spaces
            line = re.sub(r' >', '>', line)  # Remove spaces before '>'
            cleaned.append(line)

        with open(filepath, 'w') as f:
            f.writelines(cleaned)

        print(f"Cleaned: {filename}")

if __name__ == '__main__':
    target_dir = "."
    if not os.path.isdir(target_dir):
        print(f"Error: '{target_dir}' is not a valid directory")
        sys.exit(1)

    clean_t_files(target_dir)