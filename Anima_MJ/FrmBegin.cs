using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Anima_MJ
{
    public partial class FrmBegin : Form
    {
        public FrmBegin()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            Outils.Perso perso = new Outils.Perso
            {
                Id = 5
            };
            FrmNewMenu test = new FrmNewMenu(perso);
            test.Show();
        }
    }
}
