## Proyecto propuesto

**Mini Plataforma Empresarial – Mobile + API + Gateway**

Un sistema simple pero bien armado que simula un entorno real corporativo que permita que el código que se realice sirva para reutilizar en la prueba tecnica que me soliciten.s

### Objetivo del proyecto

Realizar un proyecto:

* Ionic + Angular
* Backend .NET
* Corrección / diseño de un API Gateway
* Seguridad básica
* Arquitectura limpia
* Capacidad de modernizar UI

Sin sobreingeniería. Elegante, claro y defendible y con el menor código posible para lograr la funcionalidad mínima necesaria.

---

## Arquitectura del proyecto

```
/enterprise-demo
│
├── mobile-app/        → Ionic + Angular
├── api-gateway/       → .NET (YARP u Ocelot)
├── user-service/      → .NET Web API
├── order-service/     → .NET Web API
└── docs/              → Diagramas + README
```

---

## 1. Mobile App (Ionic + Angular)

### Funcionalidad mínima

* Login
* Lista de órdenes
* Detalle de orden
* Manejo de errores desde el Gateway

### Qué demuestra

* Consumo de APIs
* Interceptores HTTP
* Guards de seguridad
* Arquitectura limpia

### Estructura

```
src/app
├── core/
│   ├── interceptors/auth.interceptor.ts
│   ├── guards/auth.guard.ts
│   └── services/api.service.ts
│
├── features/
│   ├── auth/
│   └── orders/
│
└── shared/
```

Esto lo reutilizas tal cual en cualquier prueba.

---

## 2. API Gateway (.NET)

### Rol

* Punto único de entrada
* Validación de token
* Enrutamiento a microservicios
* Deben existir microservicios de ejemplo que use el gateway

### Tecnología sugerida

* **YARP** (moderno, oficial, simple)

### Funcionalidades

* `/api/users/*` → user-service
* `/api/orders/*` → order-service
* Middleware de validación JWT
* Manejo centralizado de errores

### Qué demuestra

* Corrección y diseño de API Gateway
* Seguridad
* Separación de responsabilidades

---

## 3. User Service (.NET Web API)

### Endpoints

* `POST /login`
* `GET /me`

### Simplicidad

* Autenticación fake con JWT
* Usuario hardcodeado (para prueba técnica)

### Qué demuestra

* Auth
* Buenas prácticas
* DTOs y servicios

---

## 4. Order Service (.NET Web API)

### Endpoints

* `GET /orders`
* `GET /orders/{id}`

Datos mockeados en memoria.

### Qué demuestra

* Integración real
* Consumo desde Ionic
* Paso por Gateway

---

## 5. Seguridad (clave para la entrevista)

Implementa solo lo necesario:

* JWT
* Interceptor en Ionic
* Middleware en Gateway

Incluye en el README:

* Dónde validarían terceros
* Qué se podría auditar
* Qué cambiarías para producción

Eso suma muchos puntos.

---

## 6. Modernización de interfaz (UI)

No diseño complejo, solo:

* Ionic components
* Layout limpio
* Dark/light mode opcional

Puedes decir:

> “Esta es una base moderna lista para escalar y rediseñar”

---

## 7. README (muy importante)

Incluye:

* Arquitectura en md y puml
* Cómo correr cada proyecto
* Decisiones técnicas
* Qué mejorarías en producción

Esto suele pesar tanto como el código.

---
