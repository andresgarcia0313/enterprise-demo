using UserService.Models;
namespace UserService.Services
{
    public class AuthService
    {
        public User? ValidateUser(string username, string password)
        {
            if (username == "admin" && password == "1234")
            {
                return new User
                {
                    Id = 1,
                    Username = "admin",
                    Email = "admin@test.com"
                };
            }
            return null;
        }
    }
}  