using Microsoft.AspNetCore.Mvc;
using UserService.DTOs;
using UserService.Services;

namespace UserService.Controllers
// Route api/users
{
    [ApiController] // habilita funcionalidades de controller y validacion automática de modelos
    [Route("api/users")] // ruta base para este controller
    public class AuthController : ControllerBase
    {
        private readonly AuthService _authService;

        public AuthController(AuthService authService)
        {
            _authService = authService;
        }

        [HttpPost("login")]
        public IActionResult Login([FromBody] LoginRequestDto request)
        {
            var user = _authService.ValidateUser(request.Username, request.Password);
            if (user == null)
            {
                return Unauthorized("Invalid credentials");
            }

            var token = "mock-jwt-token";

            // var response = new LoginResponseDto
            // {
            //     Token = token
            // };

            return Ok(new { message = "Login Existoso (JWT viene luego)" });
        }
    }
}
