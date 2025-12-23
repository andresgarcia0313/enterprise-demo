#!/bin/bash

BASE_URL="http://localhost:5112/api/users"

echo "=== Test Login (credenciales correctas) ==="
curl -s -X POST "$BASE_URL/login" \
  -H "Content-Type: application/json" \
  -d '{"username": "admin", "password": "1234"}' | jq .

echo ""
echo "=== Test Login (credenciales incorrectas) ==="
curl -s -X POST "$BASE_URL/login" \
  -H "Content-Type: application/json" \
  -d '{"username": "admin", "password": "wrong"}' | jq .


# 1. Login para obtener token
curl -X POST "$BASE_URL/login" \
  -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"1234"}'

# 2. Usar el token en /me
curl "$BASE_URL/me" \
  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxIiwiZW1haWwiOiJhZG1pbkB0ZXN0LmNvbSIsInVzZXJuYW1lIjoiYWRtaW4iLCJqdGkiOiI4YWFmYWFlNC0xMTU0LTQ3ZDctYTNkZi00YmNhMDY5OTkwN2IiLCJleHAiOjE3NjY0OTYzNDUsImlzcyI6ImVudGVycHJpc2UtZGVtbyIsImF1ZCI6ImVudGVycHJpc2UtZGVtby1jbGllbnQifQ.ndQFaKFAPpP6EPMNy7EEjZh969SwFHsH7btLJbSYRjg"
