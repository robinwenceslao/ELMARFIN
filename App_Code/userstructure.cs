using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for userstructure
/// </summary>
public class userstructure
{
    private int _id = 0;
    private string _username = "";
    private string _password = "";
    private string _confirmpassword = "";
    private string _name = "";
    private string _email = "";

    public int id {
        get {
            return _id;

        }
        set {
            _id = value;

        }
    }

    public string username
    {
        get
        {
            return _username;

        }
        set
        {
            _username = value;

        }
    }

    public string password
    {
        get
        {
            return _password;

        }
        set
        {
            _password = value;

        }
    }

    public string confirmpassword
    {
        get
        {
            return _confirmpassword;

        }
        set
        {
            _confirmpassword = value;

        }
    }

    public string name
    {
        get
        {
            return _name;

        }
        set
        {
            _name = value;

        }
    }

    public string email
    {
        get
        {
            return _email;

        }
        set
        {
            _email = value;

        }
    }

	
    public userstructure()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public userstructure(
            int __id,
            string __username,
            string __password,
            string __confirmpassword,
            string __name,
            string __email
    )

    {
            _id = __id;
            _username = __username;
            _password = __password;
            _confirmpassword = __confirmpassword;
            _name = __name;
            _email = __email;

    }
}