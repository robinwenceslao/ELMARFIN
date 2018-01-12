using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Inquiryrules
/// </summary>
public class Inquiryrules
{
	 
		 public bool Execute(InquiryStructure structure)
            {
                    Program.da.createCommand("elmarfin.dbo.sp_insert_inquiry");
                    Program.da.addParameter("@message", structure.message);
                    Program.da.addParameter("@name", structure.name);
                    Program.da.addParameter("@contactnumber", structure.contactnumber);
                    Program.da.addParameter("@email", structure.email);
                    Program.da.useStoreProcedure();

                    if(Program.da.executeCommand()){
                          return true;   
                    }
                    return false;
     
	        }
     public class Program
        {
            public static DataAccess da = new DataAccess();
        }
 
}