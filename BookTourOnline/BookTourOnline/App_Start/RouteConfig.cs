using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BookTourOnline
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Tour Category",
                url: "Loai-tour-du-lich/{TenDM}-{id}",
                defaults: new { controller = "TourCategory", action = "Category", id = UrlParameter.Optional },
                namespaces: new[] { "BookTourOnline.Controllers" }
            );
            routes.MapRoute(
              name: "Tour ",
              url: "tour-du-lich/{TenDM}-{id}",
              defaults: new { controller = "TourCategory", action = "Index", id = UrlParameter.Optional },
              namespaces: new[] { "BookTourOnline.Controllers" }
          );
            routes.MapRoute(
             name: "Tour Detail",
             url: "chi-tiet/{TenTour}-{id}",
             defaults: new { controller = "TourCategory", action = "Detail", id = UrlParameter.Optional },
             namespaces: new[] { "BookTourOnline.Controllers" }
         );
            routes.MapRoute(
            name: "Tin tuc",
            url: "tin-tuc/{TieuDe}-{id}",
            defaults: new { controller = "Post", action = "Detail", id = UrlParameter.Optional },
            namespaces: new[] { "BookTourOnline.Controllers" }
        );
            routes.MapRoute(
            name: "Lien-he",
            url: "lien-he",
            defaults: new { controller = "Contact", action = "Index", id = UrlParameter.Optional },
            namespaces: new[] { "BookTourOnline.Controllers" }
        );
            routes.MapRoute(
         name: "dat-tour",
         url: "gio-hang",
         defaults: new { controller = "Cart", action = "Index", id = UrlParameter.Optional },
         namespaces: new[] { "BookTourOnline.Controllers" }
     );
            routes.MapRoute(
         name: "Payment",
         url: "thanh-toan",
         defaults: new { controller = "Cart", action = "Payment", id = UrlParameter.Optional },
         namespaces: new[] { "BookTourOnline.Controllers" }
     );
            routes.MapRoute(
            name: "cap-nhat-tour",
            url: "them-gio-hang",
            defaults: new { controller = "Cart", action = "AddItem", id = UrlParameter.Optional },
            namespaces: new[] { "BookTourOnline.Controllers" }
        );
            routes.MapRoute(
         name: "Payment Success",
         url: "hoan-thanh",
         defaults: new { controller = "Cart", action = "Success", id = UrlParameter.Optional },
         namespaces: new[] { "BookTourOnline.Controllers" }
     );
            routes.MapRoute(
       name: "Dang ky",
       url: "dang-ky",
       defaults: new { controller = "User", action = "Register", id = UrlParameter.Optional },
       namespaces: new[] { "BookTourOnline.Controllers" }
   );
            routes.MapRoute(
       name: "Cap nhat",
       url: "cap-nhat",
       defaults: new { controller = "User", action = "EditAcc", id = UrlParameter.Optional },
       namespaces: new[] { "BookTourOnline.Controllers" }
   );
            routes.MapRoute(
            name: "Login",
            url: "dang-nhap",
            defaults: new { controller = "User", action = "Login", id = UrlParameter.Optional },
            namespaces: new[] { "BookTourOnline.Controllers" }
);
            routes.MapRoute(
            name: "Search",
            url: "tim-kiem",
            defaults: new { controller = "TourCategory", action = "Search", id = UrlParameter.Optional },
             namespaces: new[] { "BookTourOnline.Controllers" }
);
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "BookTourOnline.Controllers" }
            );
        }
    }
}

