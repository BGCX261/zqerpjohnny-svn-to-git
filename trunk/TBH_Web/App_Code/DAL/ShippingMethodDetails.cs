using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace MB.TheBeerHouse.DAL
{
   public class ShippingMethodDetails
   {
      public ShippingMethodDetails() { }

      public ShippingMethodDetails(int id, DateTime addedDate, string addedBy, string title, decimal price)
      {
         this.ID = id;
         this.AddedDate = addedDate;
         this.AddedBy = addedBy;
         this.Title = title;
         this.Price = price;
      }

      private int _id = 0;
	   public int ID
	   {
		   get { return _id;}
		   set { _id = value;}
	   }

      private DateTime _addedDate = DateTime.Now;
      public DateTime AddedDate
      {
         get { return _addedDate; }
         set { _addedDate = value; }
      }

      private string _addedBy = "";
      public string AddedBy
      {
         get { return _addedBy; }
         set { _addedBy = value; }
      }

      private string  _title = "";
      public string  Title
      {
         get { return _title; }
         set { _title = value; }
      }

      private decimal _price = 0.0m;
      public decimal Price
      {
         get { return _price; }
         set { _price = value; }
      }
   }
}