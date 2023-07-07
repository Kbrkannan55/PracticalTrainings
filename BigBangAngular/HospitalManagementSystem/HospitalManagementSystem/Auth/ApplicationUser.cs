﻿using Microsoft.AspNetCore.Identity;

namespace Bware.Auth
{
    public class ApplicationUser : IdentityUser
    {
        public string Roles { get; set; }=string.Empty;
        public string? Name { get; set; }
    }
}
