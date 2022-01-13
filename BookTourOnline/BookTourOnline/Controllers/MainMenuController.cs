using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Controllers
{
    public class MainMenuController : Controller
    {
        private BookTourDbContext db = new BookTourDbContext();
        // GET: MainMenu
        public ActionResult Index()
        {
            return View();
        }
        [ChildActionOnly]
        public ActionResult MainMenu()
        {
            var model = db.DanhMucs.Select(x => x).ToList();
            return PartialView(model);
        }

    }
}