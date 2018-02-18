using System;
using System.Windows.Forms;

namespace Anima_MJ
{
    public partial class FrmNewPerso2 : Form
    {
        Outils.Perso perso = new Outils.Perso();
        public FrmNewPerso2(Outils.Perso Perso)   
        {
            InitializeComponent();
            perso = Perso;
        }

        private void BtnOK_Click(object sender, EventArgs e)
        {
            try
            {
                perso.Hauteur = Outils.CalculHauteur(perso.Force, perso.Con);
                perso.Sexe = cbSexe.Text;
                perso.Age = Convert.ToInt32(txtAge.Text);
                perso.Poids = Convert.ToInt32(txtPoid.Text);
                perso.Taille = Convert.ToInt32(txtTaille.Text);
                perso.Apparence = Convert.ToInt32(txtApparence.Text);
                Outils.Sauvegarde(perso, Data.per1xml);
                FrmNewMenu FrmSuite = new FrmNewMenu(perso);
                this.Visible = false;
                CreationPerso();
                FrmSuite.ShowDialog();
                this.Close();
            }
            catch
            {
               
            }
        }

        private void FrmNewPerso2_Load(object sender, EventArgs e)
        {
            if (Data.marque_page == 1)
            {
                // perso = Outils.Lecture(Data.per1xml);
                this.cbSexe.Text = perso.Sexe;
                this.txtAge.Text = perso.Age.ToString();
                this.txtPoid.Text = perso.Poids.ToString();
                this.txtTaille.Text = perso.Taille.ToString();
                this.txtApparence.Text = perso.Apparence.ToString();
            }
            else
            {
                perso.Hauteur = Outils.CalculHauteur(perso.Force, perso.Con);
                txtPoid.Text = Data.PoidsMin + " - " + Data.PoidsMax;
                txtTaille.Text = Data.TailleMin + " - " + Data.TailleMax;
            }

            
        }
        private void CreationPerso()
        {
            try
            {
                
                Joueur noob = new Joueur()
                {
                    
                    Nom = perso.Nom,
                    Prenom = perso.Prnom,
                    Classe_level_0 = perso.Classe,
                    Sexe = perso.Sexe,
                    Origine = perso.Origine,
                    Classe_social = perso.ClasseSocial,
                    Age = perso.Age,
                    Apparence = perso.Apparence,
                    Poid = perso.Poids,
                    Hauteur = perso.Hauteur,
                    Taille = perso.Taille,
                    base_for = perso.Force,
                    base_agi = perso.Agi,
                    base_dex = perso.Dex,
                    base_con = perso.Con,
                    base_int = perso.Inte,
                    base_per = perso.Per,
                    base_pou = perso.Pou,
                    base_vol = perso.Vol,
                    total_xp = perso.Xp,
                    Pseudo_Joueur = perso.Joueur


                };
                Donnees.Db.Joueur.Add(noob);
                Donnees.Db.SaveChanges();
                perso.Id =(int) noob.Id_joueur;
                Console.WriteLine("...................?.........."+perso.Id);
            }
            catch
            {
                Console.WriteLine("...................?..........fail");
            }
        }
    }
}
