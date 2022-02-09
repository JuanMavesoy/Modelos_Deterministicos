using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Modelos_Deterministicos.Views
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GenerarModelo(object sender, EventArgs e)
        {
            modelo.Visible = true;
            ConstruirControlDinamico();

        }

        public void ConstruirControlDinamico()
        {
            int variable = Int32.Parse(variablesDecision.Value);

            for (int i = 0; i < variable; i++)
            {
                TextBox TxtNumeric = new TextBox();
                TxtNumeric.ID = $"textbox{i}";
                TxtNumeric.CssClass = "form-control";
                TxtNumeric.Attributes.Add("class", "col-1");
                TxtNumeric.Attributes.Add("type", "number");
                TxtNumeric.Attributes.Add("min", "1");
                TxtNumeric.Attributes.Add("max", "100000000");
                TxtNumeric.Text = "0";
                TxtNumeric.Attributes.Add("title", "La respuesta la escribe el usuario");

                HtmlGenericControl divInput = new HtmlGenericControl();
                divInput.Attributes.Add("class", "input-group-text");
                divInput.InnerHtml = $" X{i + 1} ";

                HtmlGenericControl divGrup = new HtmlGenericControl();
                divGrup.Attributes.Add("class", "input-group");
                divGrup.InnerHtml = $"+     ";
                divGrup.Controls.Add(TxtNumeric);
                divGrup.Controls.Add(divInput);

                HtmlGenericControl div = new HtmlGenericControl();
                div.Attributes.Add("class", "col-md");
                div.Controls.Add(divGrup);

                if (i+1 == variable)
                {
                    TxtNumeric.Text = "0";
                }
         
                

                DivControlUser.Controls.Add(div);
            }

        }
    }
}