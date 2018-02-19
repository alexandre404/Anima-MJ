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
            int c = 0;
            Boolean classe = true;
            var query = from a in Donnees.Db.joueur_cout
                        where a.id_joueur == perso.Id
                        select a;
            foreach (var a in query)
            {
                 
                c++;
            }
            if (c == 0)
            {
                //appel de la fonction d'instanciation de joueur bonus d'après l'id de la classe de perso
                Mecanique.Ins_joueur(perso);
                //appel de la fonction d'instanciation de joueur cout d'après l'id de la classe de perso
                Mecanique.Ins_joueur_cout(perso);
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
