#!/bin/bash

# Copy the LaTeX file to the repository directory
# cp file.tex ./repo/
cp ../../../content/whitepaper_1/content/*tex ./
cp ../../../content/resources/variables/variables.tex ./

echo "converting"
# Loop over each .tex file in the current directory
for file in ./*.tex
do
  # Use basename to strip the directory and suffix from filenames
  base_name=$(basename "$file" .tex)
  
  # Convert each .tex file to Markdown using Pandoc
  sed -i '' 's/\\pmu/precision medicine unit/g' "${base_name}.tex"
  pandoc -s "$file" -o "${base_name}.md"

  echo "file converted"

  echo "Adding header"

  # Prepare the header information using the base name
  echo "---" > temp_file.md
  echo "layout: default" >> temp_file.md
  echo "title: ${base_name}" >> temp_file.md
  echo "nav_order: 5" >> temp_file.md
  echo "---" >> temp_file.md
  echo "" >> temp_file.md
  echo "Last update: 20240919" >> temp_file.md
  echo "" >> temp_file.md
  
  # Append the original Markdown content to the new header
  cat "${base_name}.md" >> temp_file.md
  
  # Move the temp file to replace the original Markdown file
  mv temp_file.md "${base_name}.md"
done

echo "Conversion complete. The Markdown file is available as file.md in the repo directory."

