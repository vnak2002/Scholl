using lab04.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace lab04.Controllers
{
    public class FollowingsController : ApiController
    {
        [HttpPost]
        public IHttpActionResult Follow(Following followingDTO)
        {
            //nguoi theo doi chinh la user dang nhap
            //nguoi duoc theo doi chinh la follow.FolloweeId //duoc truyen len tu script
            var loginUser=User.Identity.GetUserId();
            followingDTO.FollowerId = loginUser;
            BigSchoolContext context = new BigSchoolContext();
            //kiem tra thu voi nguoi theo doi va GV theo doi xem da co hay chua
            Following find = context.Followings.FirstOrDefault(p => p.FollowerId == followingDTO.FollowerId && p.FolloweeId == followingDTO.FolloweeId);
            if(find == null)
                context.Followings.Add(followingDTO);
            else
                context.Followings.Remove(find);
            //context.Followings.Add(followingDTO);
            context.SaveChanges();
            return Ok();
        }
    }
}
