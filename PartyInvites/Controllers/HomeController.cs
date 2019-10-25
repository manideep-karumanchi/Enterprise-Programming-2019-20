using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PartyInvites.Models;

namespace PartyInvites.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ViewResult Index()
        {
            ViewBag.Greetings=DateTime.Now.Hour>=12?"Good Afternoon":"Good Morning";
            return View();
        }
        [HttpGet]
        public ViewResult RVSPForm() {
            return View();
        }
        [HttpPost]
        public ViewResult RVSPForm(GuestResponse guestRespone) {
            if (ModelState.IsValid)
            {
                return View("Thanks", guestRespone);
            }
            else {
                return View();
            }
        }
    }
}