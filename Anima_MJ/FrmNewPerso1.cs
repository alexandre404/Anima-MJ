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
    public partial class FrmNewPerso1 : Form
    {

        Outils.Perso perso = new Outils.Perso();

        public FrmNewPerso1()
        {
            
            InitializeComponent();

            CBClasseSocial.Items.AddRange(new String[] { "Classe basse", "Classe moyenne", "Classe haute", "Classe épique" });
            Data.per1xml = @"perso0.xml";
            perso.Joueur = "";
            perso.Nom = "";
            perso.Prnom = "";
            perso.Classe = "Paladin";
            perso.Origine = "Dalaborn";
            perso.ClasseSocial = "CLasse moyenne";
            Outils.Sauvegarde(perso, Data.per1xml);
            Data.per1xml = @"perso.xml";
        }

        private void FrmNewPerso1_Load(object sender, EventArgs e)
        {

            try
            {
                Data.per1xml = @"perso0.xml";
              

                this.txtJoueur.Text = perso.Joueur;
                this.txtNom.Text = perso.Nom;
                this.txtPrenom.Text = perso.Prnom;
                this.CBClasseSocial.Text = perso.ClasseSocial;
                this.CBOrigine.Text = perso.Origine;
                this.CBClasse.Text = perso.Classe;
                Data.per1xml = @"perso.xml";
            }
            catch
            {
                this.CBClasseSocial.SelectedIndex = 2;
                this.CBOrigine.SelectedIndex = 0;
                this.CBClasse.SelectedIndex = 2;
            }
        }

        private void BtnAnnuler_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnOK_Click(object sender, EventArgs e)
        {
             if (this.Controle())
            {
                if (this.Instancie())
                {
                    FrmNewCarac FrmSuite = new FrmNewCarac(perso);
                    this.Visible = false;
                    
                    
                    //Bout de code utile dans FrmNewsCarac_FormClosing ligne 25
                    if ( FrmSuite.ShowDialog() == DialogResult.Cancel)
                    {
                        //this.Visible = true;
                        perso =Outils.Lecture<Outils.Perso>(Data.per1xml);

                        this.txtJoueur.Text = perso.Joueur;
                        this.txtNom.Text = perso.Nom;
                        this.txtPrenom.Text = perso.Prnom;
                        this.CBClasseSocial.Text =perso.ClasseSocial;
                        this.CBOrigine.Text =perso.Origine;
                        this.CBClasse.Text =perso.Classe;
                        this.Visible = true;


                    }
                }
            }
        }
       
        private Boolean Instancie()
        {
            try
            {
                
                perso.Joueur = this.txtJoueur.Text;
                perso.Nom = this.txtNom.Text;
                perso.Prnom = this.txtPrenom.Text;
                perso.Classe = this.CBClasse.Text;
                perso.Origine = this.CBOrigine.Text;
                perso.ClasseSocial = this.CBClasseSocial.Text;
                Outils.Sauvegarde(perso, Data.per1xml);
                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erreur : \n" + ex.Message, "Nouveau Personnage");
                return false;
            }
        }

        private Boolean Controle()
        {
            Boolean code = true;
            if (!(Outils.EstduTexte(this.txtJoueur.Text)))
            {
                code = false;
            }
            if (!(Outils.EstduTexte(this.txtNom.Text)))
            {
                code = false;
            }
            if (!(Outils.EstduTexte(this.txtPrenom.Text)))
            {
                code = false;
            }
            return code;
        }

        private void MenuLevel0_Click(object sender, EventArgs e)
        {
            Data.level1 = false;
           perso.Xp = Outils.Level0();
        }

        private void MenuLevel1_Click(object sender, EventArgs e)
        {
            Data.level1 = false;
           perso.Xp = Outils.Level0();
        }

        private void BtnBackup_Click(object sender, EventArgs e)
        {
            try
            {
                perso = Outils.Lecture<Outils.Perso>(Data.per1xml);
                Data.marque_page = 1;

                this.txtJoueur.Text = perso.Joueur;
                this.txtNom.Text = perso.Nom;
                this.txtPrenom.Text = perso.Prnom;
                this.CBClasseSocial.Text = perso.ClasseSocial;
                this.CBOrigine.Text = perso.Origine;
                this.CBClasse.Text = perso.Classe;

            }
            catch
            {
                this.CBClasseSocial.SelectedIndex = 2;
                this.CBOrigine.SelectedIndex = 0;
                this.CBClasse.SelectedIndex = 2;
            }
        }

        private void toolStripSplitButton1_ButtonClick(object sender, EventArgs e)
        {

        }
    }
}