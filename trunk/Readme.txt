=========================================================================
TheBeerHouse Website for ASP.NET 2.0

Sample project for the Wrox Press book "ASP.NET 2.0 Website Programming",
by Marco Bellinaso
=========================================================================

This project was designed using Visual Studio 2005, and SQL Server 2005 Express Edition.


                                     Prerequisites

You must have Visual Studio 2005, and either the Express Edition of SQL Server 2005,
or the one of the full featured editions of SQL Server 2005 loaded on your computer.
If you only have SQL Server 2000, then you can download the free Express Edition of
SQL Server 2005 - you can NOT use SQL Server 2000 with this project (unless you change a
few T-SQL stored procedures at least)


                                  Miscellaneous Notes

1) I used the Professional Edition of Visual Studio 2005, but most features of TheBeerHouse
   should also work with the Standard Edition. I think the main thing you'd miss out on with 
   the Standard Edition is some of the integrated SQL Server functionality, and the deployment
   wizard.

2) SQL Server 2005 Express Edition comes with some Editions of Visual Studio 2005, and is 
   sometimes installed on your computer by default (unless you used a custom install and
   told it otherwise). Unlike the Express editions of Visual Studio (which I do not 
   recommend for professional developers), the SQL Server 2005 Express Edition is NOT simply
   an elementary learning edition. Rather, this is the replacement for the older Microsoft 
   Data Engine (MSDE), which was the free version of SQL Server 2000. Although MSDE had no 
   graphical development tools, this new express edition does have a nice graphical tool
   which is a free version of SQL Server Management Studio called SQL Server Management Studio
   Express. At the time of this writing it didn't come with the SQL Server 2005 Express 
   Edition, but can be downloaded from:

      http://msdn.microsoft.com/vstudio/express/sql/default.aspx

   In short, the Express Edition of SQL Server 2005 is a great choice for development purposes.

3) This new Express edition of SQL Server has a very cool new feature: it can automatically
   attach to any .mdf and .ldf database files in the App_Data directory under a Visual Studio
   2005 website. This makes it very easy for you to install the sample website because you
   don't have to take any action to set up the database first!

4) If you decide to use a more complete edition of SQL Server 2005, instead of the Express
   Edition, it will require a little more setup work. This is mentioned in the steps below.
 

                           Detailed Installation Instructions

1) Extract all the files into a local folder of your choice.

2) If you are using a non-express edition of SQL Server 2005, follow the steps in the
   section below entitled "SQL Server 2005 - Non-Express Edition Setup".

3) Open the solution from Visual Studio 2005 (File | Open | Project/Solution,
   or double click the .sln file from Windows Explorer).

4) You can run the site by pressing F5. This will start the integrated Web Server and
   will start your Browser to view the site. If you have set FireFox, or another browser
   to be your default browser, you can use an option on the File menu of VS 2005 to 
   select to use Internet Explorer, instead, if desired. 

   The sample administrator account has the following credentials:
     Username: Admin
     Password: admin


                     SQL Server 2005 - Non-Express Edition Setup

You can use the same .mdf and .ldf files that were distributed with the code download,
but you need to attach them to your SQL Server 2005 database. You also need credentials
to allow you to use the new database.

1) Copy the .mdf and .ldf files to a folder on the SQL Server computer, and name them
   with a name you like. This is how I named mine:

   C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\TheBeerHouse.mdf
   C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\TheBeerHouse_Log.ldf

2) Open SQL Server Management Studio, and start a new query, and connect to your
   database instance and the master database.

3) Key in this query and press F5 to run it (use the same paths as step 1):
   
   exec sp_attach_db @dbname=N'TheBeerHouse',
     @filename1=N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\TheBeerHouse.mdf', 
     @filename2=N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\TheBeerHouse_Log.ldf'

4) Replace the query in your query window with this code and press F5 to run it - please
   make changes to the user credentials first - NEVER use the same username and password
   as those that come from a book or Internet site:

USE TheBeerHouse
GO 
EXEC sp_addlogin 'DBuserName', 'SecretPassword', 'TheBeerHouse' 
GO 
EXEC sp_grantdbaccess 'DBuserName', 'DBuserName' 
GO 
EXEC sp_addrolemember 'db_datareader', 'DBuserName' 
GO 
EXEC sp_addrolemember 'db_datawriter', 'DBuserName' 
GO 
EXEC sp_addrolemember 'db_owner', 'DBuserName' 
GO 

5) Edit your connection string in web.config, located in the TBH_Web folder of the Visual
   Studio project. This is a sample connection string - please edit the user credentials as 
   you did for step 4 above, and specify the appropriate IP address:

   <connectionStrings>
      <remove name="LocalSqlServer"/>
      <add name="LocalSqlServer" connectionString="server=111.222.333.444;Initial Catalog=TheBeerHouse;uid=DBuserName;pwd=SecretPassword" 
       providerName="System.Data.SqlClient"/>
   </connectionStrings>


 
                                Production Deployment

Be sure to delete the various sample accounts and related security configuration 
from the Admin / Manage Users page before going to production. You also need to 
remove content that you don't want to deploy, and customize the website for your 
purposes. You certainly don't want to deploy the website "as is" (unless maybe 
you own a pub named TheBeerHouse)!

Please refer to the book's last chapter for detailed instructions to deploy the 
site to a local or remote IIS server (instead of the integrated web server), and 
for steps on copying the local SQL database to a remote SQL Server.

You must always test the site using a real IIS server before you attempt to deploy
it to a production server. Similarly, you should test with a full edition of SQL
Server before deploying to production. The Internet is full of stories where people
say "it worked fine on my computer, but it doesn't work in production". You need 
the experience of doing extra deployments, and you need to test with a server 
environment that is similar to your production environment to ensure that there
will be no surprises when you finally deploy to production.


                                 Check for Updates

Please check the web sites of Wrox Press, the author, and the Techncal Editor for
any errata or changes to the book or sample code after publication.

   The main Wrox Press site:
 
      http://www.wrox.com/WileyCDA/

   The "P2P" programmer message forum - locate the forum for this book and post 
   your questions there:

      http://p2p.wrox.com/default.asp?CAT_ID=23
     
   The author's sample website:

      http://www.dotnet2themax.com/TheBeerHouse/Default.aspx

   The author's books page:

      http://www.dotnet2themax.com/booksmarco.aspx

   The author's blog:

      http://www.dotnet2themax.com/blogs/mbellinaso/

   The Technical Editor's website:

      http://www.EricEngler.com
