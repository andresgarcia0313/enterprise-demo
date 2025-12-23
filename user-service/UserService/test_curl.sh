#!/bin/bash

BASE_URL="http://localhost:5000/api/users"

echo "=== Test Login (credenciales correctas) ==="
curl -s -X POST "$BASE_URL/login" \
  -H "Content-Type: application/json" \
  -d '{"username": "admin", "password": "1234"}' | jq .

echo ""
echo "=== Test Login (credenciales incorrectas) ==="
curl -s -X POST "$BASE_URL/login" \
  -H "Content-Type: application/json" \
  -d '{"username": "admin", "password": "wrong"}' | jq .
