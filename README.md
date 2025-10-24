# LaTeX Resume Template - Cristiano Filho

A professional LaTeX resume template inspired by the Pirate King dark theme, featuring both Portuguese and English versions with easy theme switching capability.

## Features

- **Dark/Light Theme Support**: Easily switch between dark and light themes
- **Bilingual**: Available in both Portuguese and English
- **Modern Design**: Clean, professional layout inspired by the Pirate King template
- **Single Page**: Optimized to fit all content on one page
- **Customizable**: Easy to modify colors, fonts, and content

## Files Structure

```
resume/
├── resume_config.sty    # LaTeX styling package
├── resume_pt.tex       # Portuguese version
├── resume_en.tex       # English version
├── compile.sh          # Build script
└── README.md           # This file
```

## Prerequisites

### Option 1: Overleaf (Recommended - No Installation Required)

Use Overleaf online LaTeX editor:

1. Access [Overleaf](https://www.overleaf.com/)
2. Create a free account
3. Create a new blank project
4. Upload the files: `resume_config.sty`, `resume_pt.tex`, `resume_en.tex`
5. Click "Recompile" to generate the PDFs
6. Download your compiled PDFs

### Option 2: Install LaTeX Locally

#### Ubuntu/Debian

```bash
sudo apt update
sudo apt install texlive-latex-base texlive-fonts-recommended texlive-latex-extra
```

#### macOS (with Homebrew)

```bash
brew install --cask mactex
```

#### Windows

Download and install [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)

## Usage

1. **Compile both versions:**

   ```bash
   ./compile.sh
   ```

2. **Compile individual versions:**

   ```bash
   pdflatex resume_pt.tex  # Portuguese
   pdflatex resume_en.tex  # English
   ```

3. **Switch themes:**
   Edit the `.tex` files and change:
   ```latex
   \darkthemetrue   % Dark theme
   \darkthemefalse  % Light theme
   ```

## Customization

### Colors

Edit `resume_config.sty` to modify the color scheme:

```latex
\definecolor{bg}{HTML}{2d2d2d}      % Background
\definecolor{text}{HTML}{e0e0e0}    % Text
\definecolor{accent}{HTML}{4a9eff}  % Accent/Links
```

### Content

- **Skills**: Modify the `\skilltag{}` commands in the Skills section
- **Experience**: Update the `\experience{}` commands with your work history
- **Education**: Edit the `\education{}` command
- **Certifications**: Modify the `\certification{}` commands

### Contact Information

Update the contact details in the `\contactrow{}` section:

```latex
\contactrow{
    \contact{linkedin}{YOUR_LINKEDIN_URL}{LinkedIn}
}{
    \contact{phone}{tel:YOUR_PHONE}{YOUR_PHONE}
}{
    \contact{envelope}{mailto:YOUR_EMAIL}{YOUR_EMAIL}
}{
    \contact{github}{YOUR_GITHUB_URL}{GitHub}
}
```

## Template Design

Based on the Pirate King dark theme featuring:

- Dark background with light text (switchable to light theme)
- Centered header with large name font
- Contact icons with hyperlinks
- Skills displayed as inline tags/badges
- Experience entries with company names and dates aligned right
- Clean section dividers
- Professional typography

## Output

The compilation generates:

- `resume_pt.pdf` - Portuguese version
- `resume_en.pdf` - English version

Both files are optimized for single-page printing and digital viewing.

## License

This template is free to use and modify for personal and professional purposes.
