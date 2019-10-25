using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace PartyInvites.Models
{
    public class GuestResponse
    {
        [Required(ErrorMessage="Please Enter your Name")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Please Enter your Contact Number")]
        public string ContactNumber { set; get; }
        [RegularExpression(".+\\@.+\\..+",ErrorMessage = "Please Enter Email in Correct Format")]
        public string Email { set; get; }
        [Required(ErrorMessage = "Choose your Option")]
        public bool? AttendingParty { set; get; }
    }
}