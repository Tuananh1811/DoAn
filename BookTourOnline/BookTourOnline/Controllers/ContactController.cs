using BookTourOnline.Common;
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
    public class ContactController : Controller
    {
        // GET: Contact
        public ActionResult Index()
        {
            var model = new ContactDao().GetActiveContact();
            return View(model);
        }
        
        [HttpPost]
        public JsonResult Send(string name, string mobile, string address, string email, string content,string diadiem)
        {
            var feedback = new Feedback();
            feedback.Name = name;
            feedback.Email = email;
            feedback.CreatedDate = DateTime.Now;
            feedback.Phone = mobile;
            feedback.NoiDung = content;
            feedback.Address = address;
            feedback.DiaDiem = diadiem;
            feedback.Status = true;
            var id = new ContactDao().InsertFeedBack(feedback);
            string contentEmail = System.IO.File.ReadAllText(Server.MapPath("~/Assets/Client/template/feedback.html"));
            contentEmail = contentEmail.Replace("{{TenDangNhap}}", name);
            contentEmail = contentEmail.Replace("{{Email}}", email);
            contentEmail = contentEmail.Replace("{{SoDienThoai}}", mobile);
            contentEmail = contentEmail.Replace("{{DiaChi}}", address);
            contentEmail = contentEmail.Replace("{{NoiDung}}", content);
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
    
        public PartialViewResult _DC_LienHe()
        {
            var sessionUser = Session["USERCLIENT_SESSION"] as UserLogin;
            if (sessionUser != null)
            {
                ViewBag.name = sessionUser.FullName;
                ViewBag.email = sessionUser.email;
                ViewBag.userName = sessionUser.UserName;
                ViewBag.adress = sessionUser.adress;
                ViewBag.phoneNumbers = sessionUser.phoneNumbers;
            }
            else
            {
                return PartialView();
            }
          
            return PartialView(sessionUser);
            
        }
    }
}