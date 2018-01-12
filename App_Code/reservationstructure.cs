using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for reservationstructure
/// </summary>
public class reservationstructure
{
    private int _id = 0;
    private int _reservationtype = 0;
    private string _firstname = "";
    private string _middlename = "";
    private string _lastname = "";
    private int _contactnumber = 0;
    private string _email = "";
    private string _address = "";
    private DateTime _checkin = DateTime.Now;
    private DateTime _checkout = DateTime.Now;
    private int _isapproved = 0;

    public int reservationtype
    {
        get { return _reservationtype; }
        set { _reservationtype = value; }
    }
    public int id
    {
        get { return _id; }
        set { _id = value; }
    }
    public string firstname
    {
        get { return _firstname; }
        set { _firstname = value; }
    }
    public DateTime checkin
    {
        get { return _checkin; }
        set { _checkin = value; }
    }
    public string middlename
    {
        get { return _middlename; }
        set { _middlename = value; }
    }
    public string lastname
    {
        get { return _lastname; }
        set { _lastname = value; }
    }
    public int contactnumber
    {
        get { return _contactnumber; }
        set { _contactnumber = value; }
    }
  
    public string email
    {
        get { return _email; }
        set { _email = value; }
    }
    public string address
    {
        get { return _address; }
        set { _address = value; }
    }
    public DateTime checkout
    {
        get { return _checkout; }
        set { _checkout = value; }
    }
    public int isapproved
    {
        get { return _isapproved; }
        set { _isapproved = value; }
    }
    public reservationstructure(int __id
    , int __reservationtype
    , string __firstname
    , string __middlename
    , string __lastname
    , int __contactnumber
    , string __email
    , string __address
    , DateTime __checkin
    , DateTime __checkout
    , int __isapproved)
    {
        _id = __id;
        _reservationtype = __reservationtype;
        _firstname = __firstname;
        _middlename = __middlename;
        _lastname = __lastname;
        _contactnumber = __contactnumber;
        _email = __email;
        _address = __address;
        _checkin = __checkin;
        _checkout = __checkout;
       _isapproved = __isapproved;
      
    }
    public reservationstructure()
    {
       
    }
}