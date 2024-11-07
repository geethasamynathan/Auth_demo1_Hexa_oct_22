﻿using Auth_demo1.Authentication;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace Auth_demo1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly RoleManager<IdentityRole> roleManager;
        private readonly IConfiguration configuration;

        public AuthenticationController(
            UserManager<ApplicationUser> user,
            RoleManager<IdentityRole> role,
            IConfiguration config)
        {
            userManager = user;
            roleManager = role;
            configuration = config;
        }
        [HttpPost("register")]
        public async Task<IActionResult> Register(RegisterModel model)
        {
            var userExist = await userManager.FindByNameAsync(model.Username);
            if (userExist!=null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError,new Response
                {
                    Status="Error",
                    Message="User already Exist!"
                });
            }

            ApplicationUser user = new ApplicationUser()
            { 
            Email = model.Email,
            SecurityStamp=Guid.NewGuid().ToString(),
            UserName=model.Username

            };

            var result =await userManager.CreateAsync(user,model.Password);
            if(!result.Succeeded)
            {
                return StatusCode(StatusCodes.Status500InternalServerError,
                    new Response
                    {
                        Status = "Error",
                        Message = " User Creation Failed! Pleas check the user details and try again"
                    });
            }
            if (model.Role == "user")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.User))
                {
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.User));
                }
                if (await roleManager.RoleExistsAsync(UserRoles.User))
                    await userManager.AddToRoleAsync(user,UserRoles.User);
                
            }
            if (model.Role == "admin")
            {
                if (!await roleManager.RoleExistsAsync(UserRoles.Admin))
                {
                    await roleManager.CreateAsync(new IdentityRole(UserRoles.Admin));
                }
                if (!await roleManager.RoleExistsAsync(UserRoles.Admin))

                    await userManager.AddToRoleAsync(user, UserRoles.User);
                
            }
            return Ok(new Response { Status = "Success", Message = "User Created Successfully" });
        }
    }
}
