using System;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Linq;

namespace Anima_MJ
{
    public partial class FrmNewMenu : Form
    {
        Outils.Perso perso = new Outils.Perso();

        public FrmNewMenu(Outils.Perso Perso)
        {
            InitializeComponent();
        }

        private void FrmNewMenu_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void FrmNewMenu_Load(object sender, EventArgs e)
        {
            
            try
            {
               
                
                var query = from a in Donnees.Db.classe_bonus
                            where a.Id == Mecanique.IDclasse(perso)
                            select a;
                
                long[] tbJoueurBonus = new long[] { Convert.ToInt64(query) };
                joueur_bonus bonus = new joueur_bonus();
                for (int i =0; i < tbJoueurBonus.Length;i++)
                {
                    Console.Write(tbJoueurBonus[i] + " | ");
                }
            }
            catch
            {
                
            }
            Level levelup = new Level()
            {
                id_joueur = perso.Id,
                level1 = Mecanique.CalculLevel(perso),
                classe = perso.Classe,
                pf_restant = perso.Pf + Mecanique.CalculPF_level(),




            };



        }
    }
}
