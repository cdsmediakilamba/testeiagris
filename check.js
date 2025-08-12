const fs = require('fs');
const path = require('path');

console.log('🔍 Verificando instalação...');

// Verificar arquivos essenciais
const requiredFiles = [
  'dist/index.js',
  'package.json',
  '.env.production',
  'shared/schema.ts'
];

let allGood = true;

requiredFiles.forEach(file => {
  if (fs.existsSync(file)) {
    console.log(`✅ ${file}`);
  } else {
    console.log(`❌ ${file} - FALTANDO`);
    allGood = false;
  }
});

if (allGood) {
  console.log('
🎉 Todos os arquivos necessários estão presentes!');
  console.log('📋 Pronto para deploy no HostGator!');
} else {
  console.log('
⚠️ Alguns arquivos estão faltando. Verifique o build.');
}
