using Common;
using Model.DAO;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BookTourOnline.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var PostForHomePage = new PostDao();
            var TakeCountTourHomePage = new TourDao();
            ViewBag.PostForHomePage = PostForHomePage.ListPostForHomePage(6);
            ViewBag.TakeCountTourHomePage = TakeCountTourHomePage.TakeCountTourHomePage(6);
            ViewBag.TourLatest = new TourDao().TourLatest(6);
            return View();
        }
        [HttpPost]
        public JsonResult Send(string name, string mobile, string address, string email, string content, string diadiem)
        {
            var feedback = new Feedback();
            //feedback.Name = name;
            //feedback.Email = email;
            feedback.CreatedDate = DateTime.Now;
            feedback.Phone = mobile;
           // feedback.NoiDung = content;
          //  feedback.Address = address;
            feedback.DiaDiem = diadiem;
            feedback.Status = true;
            var id = new ContactDao().InsertFeedBack(feedback);
            string contentEmail = System.IO.File.ReadAllText(Server.MapPath("~/Assets/Client/template/feedback.html"));
           // contentEmail = contentEmail.Replace("{{TenDangNhap}}", name);
           // contentEmail = contentEmail.Replace("{{Email}}", email);
            contentEmail = contentEmail.Replace("{{SoDienThoai}}", mobile);
            //  contentEmail = contentEmail.Replace("{{DiaChi}}", address);
            //  contentEmail = contentEmail.Replace("{{NoiDung}}", content);
            contentEmail = contentEmail.Replace("{{diadiem}}", mobile);
            var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

            // new MailHelper().SendMail(email, "Phản hồi mới từ VietnamTravel", contentEmail);
            new MailHelper().SendMail(toEmail, "Phản hồi mới của khách hàng từ VietNamTravel", contentEmail);
            if (id > 0)
            {
                return Json(new
                {
                    status = true
                });
                //send mail



            }

            else
                return Json(new
                {
                    status = false
                });

        }


    }
}