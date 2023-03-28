using lab04.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.Mvc;

namespace lab04.Controllers
{
    public class CoursesController : Controller
    {
        public ActionResult Index()
        {
            BigSchoolContext context= new BigSchoolContext();
            var upcommingCourse = context.Courses.Where(p => p.DateTime > DateTime.Now).OrderBy(p => p.DateTime).ToList();
            foreach(Course i in upcommingCourse)
            {
                ApplicationUser user = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(i.LecturerId);
                i.Name = user.Name; 
            }
            return View(upcommingCourse);
        }
        public ActionResult Create()
        {
            BigSchoolContext context= new BigSchoolContext();
            Course objCourse= new Course();
            objCourse.listCategory= context.Categories.ToList();
            return View(objCourse);
        }

        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        // GET: Courses
        public ActionResult Create(Course objCourse)
        {
            BigSchoolContext context = new BigSchoolContext();

            //khong xet vail
            ModelState.Remove("LecturerId");
            if(!ModelState.IsValid)
            {
                objCourse.listCategory= context.Categories.ToList();
                return View("Create", objCourse);
            }

            //lay login user id
            ApplicationUser user = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(System.Web.HttpContext.Current.User.Identity.GetUserId());
            objCourse.LecturerId = user.Id;


            //add vao CSDL
            context.Courses.Add(objCourse);
            context.SaveChanges();


            //tro ve home, action index
            return RedirectToAction("Index", "Home");
        }

        [Authorize]
        public ActionResult Attending()
        {
            BigSchoolContext context=new BigSchoolContext();
            var userID=User.Identity.GetUserId();

            var listAttendances=context.Attendances.Where(p=>p.Attendee==userID).ToList();
            var courses=new List<Course>();

            foreach(Attendance temp in listAttendances)
            {
                Course objCourse=temp.Course;
                objCourse.Name=System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(objCourse.LecturerId).Name;
                courses.Add(objCourse);
            }
            return View(courses);
        }

        [Authorize]
        public ActionResult Mine()
        {
            var loginUser=User.Identity.GetUserId();
            ApplicationUser user = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(loginUser);
            BigSchoolContext context= new BigSchoolContext();
            var courses=context.Courses.Where(c=>c.LecturerId==loginUser && c.IsCanceled != true).ToList();
            foreach (Course i in courses)
                i.Name = user.Name;
            return View(courses);
        }

        [Authorize]
        public ActionResult Edit(int id)
        {
            BigSchoolContext context= new BigSchoolContext();
            var loginUser=User.Identity.GetUserId();
            var course=context.Courses.FirstOrDefault(c=>c.LecturerId==loginUser && c.Id==id);
            if (course == null)
            {
                return HttpNotFound("Không tìm thấy khóa học");
            }
            course.listCategory=context.Categories.ToList();
            context.SaveChanges();
            return View("Create", course);
        }



        public ActionResult Delete(int id)
        {
            var userID = User.Identity.GetUserId();
            BigSchoolContext context = new BigSchoolContext();
            var findCourse = context.Courses.FirstOrDefault(p => p.Id == id);
            findCourse.IsCanceled = true;
            context.SaveChanges();
            return RedirectToAction("Mine");
        }
      


        public ActionResult Following()
        {
            BigSchoolContext context = new BigSchoolContext();
            ApplicationUser loginUser=System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>()
                .FindById(System.Web.HttpContext.Current.User.Identity.GetUserId());
            var listFollowings = context.Followings.Where(p=>p.FollowerId == loginUser.Id).ToList();
            var courses = new List<Course>();
            foreach (Following temp in listFollowings)
            {
                //lay ra tat ca cac khoa hoc cua GV duoc theo doi
                var listCourse= context.Courses.Where(p=>p.LecturerId == temp.FolloweeId).ToList();
                if (listCourse.Count > 0)
                {
                    //tim name cua GV
                    string Name = System.Web.HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>().FindById(listCourse[0].LecturerId).Name;
                    foreach (Course i in listCourse)
                        i.Name = Name;
                    //add vao courses
                    courses.AddRange(listCourse);
                }
            }
            return View(courses);
        }
    }
}