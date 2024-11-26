using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Auth_demo1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SampleController : ControllerBase
    {
      //   [Authorize(Roles ="Admin")]
        [Authorize]
      //  [AllowAnonymous]
        [HttpGet]
        public async Task<string> GetSampleData()
        {
            return "sample data from Sample Controller";
        }
    }
}
