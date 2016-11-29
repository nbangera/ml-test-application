using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ML_tester;

namespace MlTester
{
    public partial class MLTestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string searchresponse = string.Empty;
            MarkLogicHelper markLogicHelper = new MarkLogicHelper();
            string xQueryName = TxtService.Text;//get_admin_video_by_criteria.xqy //video_add.xqy
            string mlUser = TxtUser.Text;
            string pwd = TxtPass.Text;
            string server = TxtServer.Text;//rav-vm-srv-097.rave-tech.co.in //9501
            string port = TxtPort.Text; //localhost:9504 //7605:Activity-dev //rav-vm-srv-110:9501
            StringBuilder sb = new StringBuilder();
            sb.Append("xcc://" + mlUser + ":" + pwd + "@" + server + ":" + port);
            try
            {
                searchresponse = markLogicHelper.GetMarkLogicResponse(xQueryName,
                   sb.ToString(), TxtInput.Text);

                TxtOutput.Text = "Server Response :" +  searchresponse;
                
            }
            catch (Exception ex)
            {
                throw;

            }
        }
    }
}