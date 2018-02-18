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
    public partial class FrmNewCarac : Form
    {
        Outils.Perso perso = new Outils.Perso();

        public FrmNewCarac(Outils.Perso persob)
        {
            InitializeComponent();
            NUfor.Maximum = 20;
            NUfor.Minimum = 0;
            NUagi.Maximum = 20;
            NUagi.Minimum = 0;
            NUdex.Maximum = 20;
            NUdex.Minimum = 0;
            NUcon.Maximum = 20;
            NUcon.Minimum = 0;
            NUint.Maximum = 20;
            NUint.Minimum = 0;
            NUper.Maximum = 20;
            NUpou.Minimum = 0;
            NUvol.Maximum = 20;
            NUvol.Minimum = 0;
            perso = persob;
        }

        private void FrmNewCarac_Load(object sender, EventArgs e)
        {
        if (Data.marque_page == 1)
            {
                perso = Outils.Lecture<Outils.Perso>(Data.per1xml);
                this.NUfor.Value = Convert.ToDecimal( perso.Force);
                this.NUagi.Value = Convert.ToDecimal(perso.Agi);
                this.NUdex.Value = Convert.ToDecimal(perso.Dex);
                this.NUcon.Value = Convert.ToDecimal(perso.Con);
                this.NUint.Value = Convert.ToDecimal(perso.Inte);
                this.NUper.Value = Convert.ToDecimal(perso.Per);
                this.NUpou.Value = Convert.ToDecimal(perso.Pou);
                this.NUvol.Value = Convert.ToDecimal(perso.Vol);
            }
        else
            {
                NUfor.Value = 5;
                NUagi.Value = 5;
                NUdex.Value = 5;
                NUcon.Value = 5;
                NUint.Value = 5;
                NUper.Value = 5;
                NUpou.Value = 5;
                NUvol.Value = 5;
            }
        }

        private void FrmNewCarac_FormClosing(object sender, FormClosingEventArgs e)
        {
            
            
                this.DialogResult = DialogResult.Cancel;
            
        }

        private void BtnValider_Click(object sender, EventArgs e)
        {
            try
            { 
                perso.Force = Convert.ToInt32(NUfor.Value);
                perso.Agi = Convert.ToInt32(NUagi.Value);
                perso.Dex = Convert.ToInt32(NUdex.Value);
                perso.Con = Convert.ToInt32(NUcon.Value);
                perso.Inte = Convert.ToInt32(NUint.Value);
                perso.Per = Convert.ToInt32(NUper.Value);
                perso.Pou = Convert.ToInt32(NUpou.Value);
                perso.Vol = Convert.ToInt32(NUvol.Value);
                Outils.Sauvegarde( perso, Data.per1xml);
                FrmNewPerso2 FrmSuite = new FrmNewPerso2(perso);
                this.Visible = false;
                if (FrmSuite.ShowDialog() == DialogResult.Cancel)
                {
                    this.Visible = true;
                }
            }
            catch
            {
                
            }
        }
    }
}
