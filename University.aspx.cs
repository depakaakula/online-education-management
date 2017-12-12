using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class University : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void first_Click(object sender, EventArgs e)
    {
        System.Diagnostics.Process proc = new System.Diagnostics.Process();
        System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
        //startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
        string val= "cd/";
        startInfo.FileName = "cmd.exe";
        startInfo.Arguments = "/c " + "cd/"; ;
        proc.StartInfo = startInfo;
        proc.Start();
    }
}