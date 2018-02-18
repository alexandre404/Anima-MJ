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
    public partial class Main : Form
    {
        FrmNewPerso1 New_Fiche = null;

        public Main()
        {
            InitializeComponent();
        }

        private bool CheckFormOpened(string name)
        {
            FormCollection fc = Application.OpenForms;
            foreach (Form frm in fc)
            {
                if (frm.Text == name)
                {
                    return true;
                }
            }
            return false;
        }

        private void tabControlMenu_Selected(object sender, TabControlEventArgs e)
        {
            switch (e.TabPageIndex)
            {
                case 0:
                    break;
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    break;
                default:
                    MessageBox.Show("error cas par defaut des tab");
                    break;
            }
        }

        private void nouveauPJ_ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (New_Fiche == null || New_Fiche.Text == "")
            {
                New_Fiche = new FrmNewPerso1();
                New_Fiche.Show();
            }
            else if (CheckFormOpened(New_Fiche.Text))
            {
                New_Fiche.Show();
                New_Fiche.Focus();
            }
        }

        private void nouveauPNJ_ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (New_Fiche == null || New_Fiche.Text == "")
            {
                New_Fiche = new FrmNewPerso1();
                New_Fiche.Show();
            }
            else if (CheckFormOpened(New_Fiche.Text))
            {
                New_Fiche.Show();
                New_Fiche.Focus();
            }
        }

        private void numericUpDown121_ValueChanged(object sender, EventArgs e)
        {

        }

        private void textBox121_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox116_TextChanged(object sender, EventArgs e)
        {

        }

        private void splitContainerTable_Panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}