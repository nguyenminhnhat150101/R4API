using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace R4Clothes.Shared.Models.ViewModels
{
    public class Login
    {
        [Required]
        public string User { get; set; }
        [Required]
        public string Password { get; set; }
    }
}
