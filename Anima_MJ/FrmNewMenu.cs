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
                joueur_bonus Kevin = new joueur_bonus();
                //instanciation de la table joueur-bonus
                var query = from a in Donnees.Db.classe_bonus
                            where a.Id == Mecanique.IDclasse(perso)
                            select a;
                foreach(var a in query)
                {
                    Kevin.id_classe = Mecanique.IDclasse(perso);
                    Kevin.id_joueur = perso.Id;
                    Kevin.pv = a.pv;
                    Kevin.initiative = a.initiative;
                    Kevin.di = a.di;
                    Kevin.ppp = a.ppp;
                    Kevin.charac = a.charac;
                    Kevin.attaque = a.attaque;
                    Kevin.parade = a.parade;
                    Kevin.esquive = a.esquive;
                    Kevin.port_darmure = a.port_darmure;
                    Kevin.convoquer = a.convoquer;
                    Kevin.dominer = a.dominer;
                    Kevin.lier = a.lier;
                    Kevin.revoquer = a.revoquer;
                    Kevin.
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
