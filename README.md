# Deploy do iAgris no HostGator

## Arquivos Inclusos

- `dist/` - Build da aplicação
- `package.json` - Dependências otimizadas
- `.env.production` - Configurações de ambiente (AJUSTAR)
- `.htaccess` - Configurações do Apache
- `install.sh` - Script de instalação
- `shared/` - Schema do banco de dados
- `uploads/` - Diretório para uploads
- `logs/` - Diretório para logs

## Passos para Deploy

### 1. Configurar Banco de Dados
1. No cPanel, criar banco PostgreSQL ou MySQL
2. Anotar: host, porta, usuário, senha, nome do banco
3. Editar `.env.production` com os dados corretos

### 2. Upload dos Arquivos
1. Compactar esta pasta em ZIP
2. Upload via cPanel File Manager para `public_html`
3. Extrair arquivos

### 3. Configurar Node.js App
1. cPanel → Node.js Apps → Create Application
2. Configurar:
   - Node.js Version: 18.x+
   - Application Mode: Production
   - Application Startup File: `dist/index.js`

### 4. Configurar Variáveis de Ambiente
No cPanel → Node.js Apps → Environment Variables, adicionar todas as variáveis do `.env.production`

### 5. Instalar e Iniciar
1. Via SSH: `bash install.sh`
2. Executar: `npm run db:push`
3. Iniciar aplicação no cPanel

### 6. Testar
Acessar: https://iagris.com

## Suporte
Consulte o arquivo `GUIA_DEPLOY_HOSTGATOR.md` para instruções detalhadas.
