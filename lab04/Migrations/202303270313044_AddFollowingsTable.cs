namespace lab04.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddFollowingsTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Following",
                c => new
                    {
                        FollowerId = c.String(nullable: false, maxLength: 128),
                        FolloweeId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.FollowerId, t.FolloweeId });
            
            //AddColumn("dbo.Course", "IsCanceled", c => c.Boolean());
        }
        
        public override void Down()
        {
            //DropColumn("dbo.Course", "IsCanceled");
            DropTable("dbo.Following");
        }
    }
}
