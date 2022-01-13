using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookTourOnline.Common
{
    [Serializable]
    public  class UserLogin
    {
        public string UserName { get; set; }

        public string PassWord { get; set; }

        public string FullName { get; set; }

        public string phoneNumbers { set; get; }
        public string adress { set; get; }
        public string email { set; get; }
        public int Quyen { get; set; }
    }
}