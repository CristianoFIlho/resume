#!/bin/bash

# LaTeX Resume Compilation Script
# Compiles both Portuguese and English versions

echo "LaTeX Resume Compilation Script"
echo "==============================="
echo ""

# Check if pdflatex is available
if ! command -v pdflatex &> /dev/null; then
    echo "❌ pdflatex não está instalado."
    echo ""
    echo "📋 OPÇÕES DE INSTALAÇÃO:"
    echo ""
    echo "1️⃣  OPÇÃO RÁPIDA - Usar Overleaf (sem instalação):"
    echo "   • Acesse: https://www.overleaf.com/"
    echo "   • Crie uma conta gratuita"
    echo "   • Crie um novo projeto em branco"
    echo "   • Faça upload dos arquivos: resume_config.sty, resume_pt.tex, resume_en.tex"
    echo "   • Clique em 'Recompilar' para gerar os PDFs"
    echo ""
    echo "2️⃣  INSTALAR LaTeX LOCALMENTE:"
    echo ""
    echo "   Ubuntu/Debian:"
    echo "   sudo apt update"
    echo "   sudo apt install texlive-latex-base texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra"
    echo ""
    echo "   macOS (com Homebrew):"
    echo "   brew install --cask mactex"
    echo ""
    echo "   Windows:"
    echo "   Baixe e instale: https://miktex.org/"
    echo ""
    exit 1
fi

echo "✅ pdflatex encontrado!"
echo ""

# Compile Portuguese version
echo "📄 Compilando versão em Português (resume_pt.tex)..."
pdflatex -interaction=nonstopmode resume_pt.tex > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "   ✅ Versão em Português compilada: resume_pt.pdf"
else
    echo "   ❌ Erro ao compilar versão em Português"
    echo ""
    echo "Executando novamente com output completo:"
    pdflatex resume_pt.tex
    exit 1
fi

# Compile English version
echo ""
echo "📄 Compilando versão em Inglês (resume_en.tex)..."
pdflatex -interaction=nonstopmode resume_en.tex > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "   ✅ Versão em Inglês compilada: resume_en.pdf"
else
    echo "   ❌ Erro ao compilar versão em Inglês"
    echo ""
    echo "Executando novamente com output completo:"
    pdflatex resume_en.tex
    exit 1
fi

# Clean up auxiliary files
echo ""
echo "🧹 Limpando arquivos auxiliares..."
rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz

echo ""
echo "🎉 Compilação completa!"
echo ""
echo "📂 Arquivos gerados:"
ls -lh *.pdf 2>/dev/null | awk '{print "   •", $9, "(" $5 ")"}'
echo ""
echo "💡 Para alternar temas, edite os arquivos .tex e mude:"
echo "   • \\darkthemetrue   → Tema escuro"
echo "   • \\darkthemefalse  → Tema claro"
