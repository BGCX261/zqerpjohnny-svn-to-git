using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MB.TheBeerHouse.BLL.Articles;

namespace MB.TheBeerHouse.UI
{
   public partial class ShowDepartments : BasePage
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         this.Master.EnablePersonalization = true;
      }
   }
}