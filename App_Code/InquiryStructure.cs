using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InquiryStructure
/// </summary>
public class InquiryStructure
{
    private int _id = 0;
    private int _contactnumber = 0;
    private string _name = "";
    private string _message = "";
    private string _email = "";

    public int contactnumber
    {
        get { return _contactnumber; }
        set { _contactnumber = value; }
    }
    public int id
    {
        get { return _id; }
        set { _id = value; }
    }
    public string name
    {
        get { return _name; }
        set { _name = value; }
    }
    public string message
    {
        get { return _message; }
        set { _message = value; }
    }
    public string email
    {
        get { return _email; }
        set { _email = value; }
    }
	public InquiryStructure(int __id ,
    int __contactnumber,
     string __name,
     string __message,
     string __email)
	{
        _id = __id;
        _contactnumber = __contactnumber;
        _name = __name;
        _message = __message;
        _email = __email;
	}
    public InquiryStructure()
    {

    }
}