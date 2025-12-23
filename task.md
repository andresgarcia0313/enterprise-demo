# Plan de Tareas - Mini Plataforma Empresarial

## Fase 1: Infraestructura Base (Backend)

### 1.1 User Service
- [ ] Crear proyecto .NET Web API para user-service
- [ ] Configurar estructura de carpetas (Controllers, Services, DTOs, Models)
- [ ] Implementar endpoint POST /login con autenticación fake
- [ ] Implementar generación de JWT
- [ ] Implementar endpoint GET /me
- [ ] Agregar configuración CORS

### 1.2 Order Service
- [ ] Crear proyecto .NET Web API para order-service
- [ ] Configurar estructura de carpetas
- [ ] Crear modelo Order y datos mockeados en memoria
- [ ] Implementar endpoint GET /orders
- [ ] Implementar endpoint GET /orders/{id}
- [ ] Agregar validación de JWT
- [ ] Agregar configuración CORS

### 1.3 API Gateway
- [ ] Crear proyecto .NET para api-gateway con YARP
- [ ] Configurar rutas: /api/users/* → user-service
- [ ] Configurar rutas: /api/orders/* → order-service
- [ ] Implementar middleware de validación JWT
- [ ] Implementar manejo centralizado de errores
- [ ] Configurar CORS para el frontend

---

## Fase 2: Mobile App (Ionic + Angular)

### 2.1 Setup Inicial
- [ ] Crear proyecto Ionic con Angular
- [ ] Configurar estructura de carpetas (core, features, shared)
- [ ] Configurar environments (dev/prod)

### 2.2 Core Module
- [ ] Crear ApiService para comunicación HTTP
- [ ] Crear AuthInterceptor para agregar token JWT
- [ ] Crear AuthGuard para proteger rutas
- [ ] Crear AuthService para manejo de sesión

### 2.3 Feature: Auth
- [ ] Crear página de Login
- [ ] Implementar formulario de login
- [ ] Conectar con endpoint /api/users/login
- [ ] Almacenar token en storage
- [ ] Implementar logout

### 2.4 Feature: Orders
- [ ] Crear página de lista de órdenes
- [ ] Implementar servicio OrderService
- [ ] Mostrar lista de órdenes desde API
- [ ] Crear página de detalle de orden
- [ ] Implementar navegación entre lista y detalle

### 2.5 Manejo de Errores
- [ ] Crear interceptor para manejo de errores HTTP
- [ ] Mostrar mensajes de error al usuario
- [ ] Implementar redirección a login en caso de 401

---

## Fase 3: Integración y Pulido

### 3.1 Integración Completa
- [ ] Probar flujo completo: Login → Órdenes → Detalle
- [ ] Verificar paso de requests por Gateway
- [ ] Probar manejo de errores end-to-end

### 3.2 UI/UX
- [ ] Aplicar estilos consistentes con Ionic components
- [ ] Implementar layout limpio y responsive
- [ ] (Opcional) Implementar dark/light mode

### 3.3 Seguridad Final
- [ ] Revisar validación de JWT en todos los servicios
- [ ] Verificar que rutas protegidas funcionen correctamente
- [ ] Documentar consideraciones de seguridad para producción

---

## Fase 4: Documentación

### 4.1 README Principal
- [ ] Documentar arquitectura del proyecto
- [ ] Agregar diagrama de componentes
- [ ] Instrucciones para correr cada servicio
- [ ] Documentar decisiones técnicas
- [ ] Listar mejoras para producción

### 4.2 Diagramas (docs/)
- [ ] Crear diagrama de arquitectura
- [ ] Crear diagrama de flujo de autenticación
- [ ] Crear diagrama de secuencia de requests

---

## Orden de Ejecución Recomendado

1. **Iteración 1**: User Service completo (login + JWT)
2. **Iteración 2**: Order Service completo
3. **Iteración 3**: API Gateway con rutas y seguridad
4. **Iteración 4**: Mobile App - Core + Auth
5. **Iteración 5**: Mobile App - Orders
6. **Iteración 6**: Integración y pruebas
7. **Iteración 7**: UI final y documentación

---

## Notas

- Cada fase puede probarse de forma independiente
- El backend se desarrolla primero para tener APIs disponibles
- La app móvil puede usar mocks mientras se desarrolla el backend
- Priorizar funcionalidad sobre estética inicialmente
