using Model.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Controllers
{
    public class PostController : Controller
    {
        // GET: Post
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Detail(int id)
        {
            var post = new PostDao().ViewDetail(id);
           
            return View(post);
        }
    }
}