#!/bin/sh

# Generate HTML first
pandoc resume.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html
# Use puppeteer to convert HTML to PDF
node generate-pdf.js
# Copy resume.pdf to Documents folder on MacOS
cp resume.pdf "$HOME/Documents/"
# Copy resume.pdf to Desktop folder on Windows with Command Prompt
copy resume.pdf "%USERPROFILE%\Desktop"
# Copy resume.pdf to Desktop folder on Windows with PowerShell
Copy-Item resume.pdf "$env:USERPROFILE\Desktop\resume.pdf"