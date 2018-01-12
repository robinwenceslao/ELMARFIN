using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for reservationrules
/// </summary>
public class reservationrules
{
    public class insert { 


        public bool Execute(reservationstructure structure){
            Program.da.createCommand("elmarfin.dbo.sp_insert_reservation");
            Program.da.addParameter("@reservationtype", structure.reservationtype);
            Program.da.addParameter("@firstname", structure.firstname);
            Program.da.addParameter("@lastname", structure.lastname);
            Program.da.addParameter("@middlename", structure.middlename);
            Program.da.addParameter("@contactnumber", structure.contactnumber);
            Program.da.addParameter("@email", structure.email);
            Program.da.addParameter("@address", structure.address);
            Program.da.addParameter("@checkin", structure.checkin);
            Program.da.addParameter("@checkout", structure.checkout);
            Program.da.addParameter("@isapproved", structure.isapproved); 
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
}