using lab04.Models;
using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Results;

namespace lab04.Controllers
{
    public class AttendancesController : ApiController
    {
        [HttpPost]
        public IHttpActionResult Attend(Course courseDTO)
        {
            var userID = User.Identity.GetUserId();
            if (userID == null)
                return BadRequest("Please login first!");
            BigSchoolContext context = new BigSchoolContext();
            var attendance = new Attendance()
            {
                CourseId = courseDTO.Id,
                Attendee = userID
            };
            context.Attendances.Add(attendance);
            context.SaveChanges();
            return Ok();
        }
    }
}
