#!/bin/bash
# Sincroniza documentación relevante a otros repos

# Copiar modelo de datos a Android
cp docs/04-modelo-datos.md ../tfg-task-manager-android/docs/REALM-SCHEMA.md

# Copiar API docs a Backend
cp docs/api-endpoints.md ../tfg-task-manager-backend/docs/API.md

# Git commit en todos los repos
cd ../tfg-task-manager-android && git add . && git commit -m "docs: sync from hub"
cd ../tfg-task-manager-backend && git add . && git commit -m "docs: sync from hub"

echo "✅ Documentación sincronizada"