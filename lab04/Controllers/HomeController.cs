using lab04.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace lab04.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            BigSchoolContext context = new BigSchoolContext();
            var upcommingingCourse = context.Courses.Where(p => p.DateTime > DateTime.Now).OrderBy(p=>p.DateTime).ToList();
            
            var loginUser=User.Identity.GetUserId();
            //nếu user login hiện tại đưa vào viewbag để truyền qua view
            //nếu giá trị=null thì nghĩa là chưa login
            ViewBag.LoginUser = loginUser;
            foreach(Course i in upcommingingCourse)
            {
                ApplicationUser user = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(i.LecturerId);
                i.Name=user.UserName;

                //kiểm tra user do chưa tham gia khóa học
                Attendance find = context.Attendances.FirstOrDefault(p => p.CourseId == i.Id && p.Attendee == loginUser);
                if(find == null)
                    i.isShowGoing=true;

                //kiem tra user da theo doi giang vien cua khoa hoc
                Following findFollow = context.Followings.FirstOrDefault(p => p.FollowerId == loginUser && p.FolloweeId == i.LecturerId);
                if (findFollow == null)
                    i.isShowFollow = true;
            } 
            return View(upcommingingCourse);
            //return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}