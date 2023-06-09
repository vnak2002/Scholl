namespace lab04.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Course")]
    public partial class Course
    {
        public int Id { get; set; }

        [Required]
        [StringLength(128)]
        public string LecturerId { get; set; }

        [Required]
        [StringLength(255)]
        public string Place { get; set; }

        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode =true)]
        public DateTime DateTime { get; set; }
        

        public int CategoryId { get; set; }

        public virtual Category Category { get; set; }

        //add list category
        public List<Category> listCategory = new List<Category>();
        public string Name;

       public bool isShowGoing=false;
       public bool isShowFollow=false;
       public bool? IsCanceled { get; set; }
    }
}
