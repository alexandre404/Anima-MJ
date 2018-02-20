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
            perso = Perso;
            txtMartial.Text = perso.Id.ToString();
            txtMys.Text = perso.Classe;
        }

        private void FrmNewMenu_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void FrmNewMenu_Load(object sender, EventArgs e)
        {
            int c = 0;
            joueur_bonus chargement_bonus = new joueur_bonus();
            joueur_cout chargement_cout = new joueur_cout();
            var query = from a in Donnees.Db.joueur_cout
                        where a.id_joueur == perso.Id
                        select a;
            foreach (var a in query)
            {
                chargement_cout = a;
              chargement_bonus =  Mecanique.Char_joueur_bonus(perso);
                c++;
              
            }
       
            if (c == 0)
            {
                //appel de la fonction d'instanciation de joueur bonus d'après l'id de la classe de perso
                    Mecanique.Ins_joueur_bonus(perso);
                //appel de la fonction d'instanciation de joueur cout d'après l'id de la classe de perso
                Mecanique.Ins_joueur_cout(perso);
            }

            int level = Mecanique.CalculLevel(perso);
            int pf = perso.Pf + Mecanique.CalculPF_level();

            Level levelup = new Level()
            {
                id_joueur = (int)perso.Id,
                level1 = level,
                classe = perso.Classe,
                pf_restant = pf,




            };



        }
    }
}
