using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for userrules
/// </summary>
public class userrules
{
    public class insert
    {


        public bool Execute(userstructure structure)
        {
            Program.da.createCommand("elmarfin.dbo.sp_insert_user");
            Program.da.addParameter("@username", structure.username);
            Program.da.addParameter("@password", structure.password);
            Program.da.addParameter("@confirmpassword", structure.confirmpassword);
            Program.da.addParameter("@name", structure.name);
            Program.da.addParameter("@email", structure.email);
            Program.da.useStoreProcedure();
            if (Program.da.executeCommand())
            {
                return true;
            }
            return false;
        }
        public class Program
        {
            public static DataAccess da = new DataAccess();
        }
    }
}