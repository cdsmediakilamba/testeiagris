#!/bin/bash
# Script de instalação para HostGator

echo "🚀 Iniciando instalação do iAgris..."

# Verificar Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado. Verifique se está instalado."
    exit 1
fi

echo "📋 Versão do Node.js: $(node --version)"
echo "📋 Versão do NPM: $(npm --version)"

# Instalar dependências
echo "📦 Instalando dependências..."
npm install --production --no-optional

if [ $? -eq 0 ]; then
    echo "✅ Dependências instaladas com sucesso!"
else
    echo "❌ Erro ao instalar dependências"
    exit 1
fi

# Configurar permissões
echo "🔐 Configurando permissões..."
chmod 755 .
chmod -R 644 *.js *.json
chmod 755 uploads logs

echo "✅ Instalação concluída!"
echo "📋 Próximos passos:"
echo "   1. Configure as variáveis de ambiente no cPanel"
echo "   2. Configure o banco de dados"
echo "   3. Execute 'npm run db:push' para criar as tabelas"
echo "   4. Inicie a aplicação no cPanel Node.js Apps"
