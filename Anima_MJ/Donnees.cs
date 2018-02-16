using System;
using System.IO;
using System.Xml.Serialization;

namespace Anima_MJ
{
  public class Donnees
    {
        public static Animadb Db = new Animadb();
    }

    public class Data
    {
       
        //A supprimer plus tard jusqu'à ...
        public static Boolean level1 = true;
        public static int Pf = 500;
        public static int TailleMin;
        public static int TailleMax;
        public static int PoidsMin;
        public static int PoidsMax;
        //...là
        public static int marque_page = 0;
        public static string per1xml = @"perso.xml";
    }


    public class Outils
    {
        public static int Level0()
        {
            //à compléter ultérieurement !!!
            int Xp;
            if (Data.level1 == false)
            {
                Xp = -100;
                Data.Pf = 400;
            }
            else
            {
                Xp = 0;
                Data.Pf = 500;
            }
            return Xp;
        }
        public static int CalculHauteur(int force, int con)
        {
            
            int hauteur;
            hauteur = force + con;
            //A mettre un jour dans une table^^
            switch (hauteur) // calcule de la plage de poids et taille 
            {
                case ( 2):
                    Data.TailleMin = 20;
                    Data.TailleMax = 60;
                    Data.PoidsMin = 5;
                    Data.PoidsMax = 15;
                    break;
                case (3):
                    Data.TailleMin = 40;
                    Data.TailleMax = 60;
                    Data.PoidsMin = 10;
                    Data.PoidsMax = 20;
                    break;
                case (4):
                    Data.TailleMin = 60;
                    Data.TailleMax = 100;
                    Data.PoidsMin = 20;
                    Data.PoidsMax = 30;
                    break;
                case (5):
                    Data.TailleMin = 80;
                    Data.TailleMax = 120;
                    Data.PoidsMin = 20;
                    Data.PoidsMax = 50;
                    break;
                case (6):
                    Data.TailleMin = 100;
                    Data.TailleMax = 140;
                    Data.PoidsMin = 30;
                    Data.PoidsMax = 50;
                    break;
                case (7):
                    Data.TailleMin = 110;
                    Data.TailleMax = 150;
                    Data.PoidsMin = 30;
                    Data.PoidsMax = 60;
                    break;
                case (8):
                    Data.TailleMin = 120;
                    Data.TailleMax = 160;
                    Data.PoidsMin = 35;
                    Data.PoidsMax = 70;
                    break;
                case (9):
                    Data.TailleMin = 130;
                    Data.TailleMax = 160;
                    Data.PoidsMin = 40;
                    Data.PoidsMax = 80;
                    break;
                case (10):
                    Data.TailleMin = 140;
                    Data.TailleMax = 170;
                    Data.PoidsMin = 30;
                    Data.PoidsMax = 60;
                    break;
                case (11):
                    Data.TailleMin = 140;
                    Data.TailleMax = 180;
                    Data.PoidsMin = 50;
                    Data.PoidsMax = 100;
                    break;
                case (12):
                    Data.TailleMin = 150;
                    Data.TailleMax = 180;
                    Data.PoidsMin = 50;
                    Data.PoidsMax = 120;
                    break;
                case (13):
                    Data.TailleMin = 150;
                    Data.TailleMax = 180;
                    Data.PoidsMin = 50;
                    Data.PoidsMax = 140;
                    break;
                case (14):
                    Data.TailleMin = 160;
                    Data.TailleMax = 190;
                    Data.PoidsMin = 50;
                    Data.PoidsMax = 150;
                    break;
                case (15):
                    Data.TailleMin = 160;
                    Data.TailleMax = 200;
                    Data.PoidsMin = 60;
                    Data.PoidsMax = 180;
                    break;
                case (16):
                    Data.TailleMin = 170;
                    Data.TailleMax = 210;
                    Data.PoidsMin = 70;
                    Data.PoidsMax = 220;
                    break;
                case (17):
                    Data.TailleMin = 170;
                    Data.TailleMax = 210;
                    Data.PoidsMin = 80;
                    Data.PoidsMax = 240;
                    break;
                case (18):
                    Data.TailleMin = 180;
                    Data.TailleMax = 220;
                    Data.PoidsMin = 90;
                    Data.PoidsMax = 260;
                    break;
                case (19):
                    Data.TailleMin = 190;
                    Data.TailleMax = 230;
                    Data.PoidsMin = 100;
                    Data.PoidsMax = 280;
                    break;
                case (20):
                    Data.TailleMin = 200;
                    Data.TailleMax = 240;
                    Data.PoidsMin = 110;
                    Data.PoidsMax = 320;
                    break;
                case (21):
                    Data.TailleMin = 210;
                    Data.TailleMax = 260;
                    Data.PoidsMin = 120;
                    Data.PoidsMax = 450;
                    break;
                case (22):
                    Data.TailleMin = 250;
                    Data.TailleMax = 10000;
                    Data.PoidsMin = 400;
                    Data.PoidsMax = 880000;
                    break;
            }
               
        
               
        

            return hauteur;
        }

        /// <summary>
        /// fonction générique de contrôle qu'une chaine reçue pourra se convertir en Int32
        /// </summary>
        /// <param name="s">une String à convertir</param>
        /// <returns>Booléen (vrai = OK, false = erreur)</returns>
        public static Boolean EstEntier(String s)
        {
            /* vérifier que la chaine reçue représente bien un entier valide :
             * - uniquement des chiffres
             * - pas vide
             * - pas plus de 9 chiffres (capacité maxi du type Int32)
             */
            Int32 i;            // indice de parcours de chaîne
            Char c;             // caractère courant
            Boolean code = true;   // code retour; OK a priori

            // test longueur chaîne reçue
            if (s.Length < 10 && s.Length > 0)
            {
                // vérifier 1 à 1 que tous les caractères sont des chiffres
                for (i = 0; i < s.Length; i++)
                {
                    c = s[i]; // extrait le i° car
                    if (!(Char.IsDigit(c))) // si ce n'est pas un chiffre
                    {
                        code = false; // erreur détectée
                    }
                } // fin de boucle for
            }
            else // erreur de longueur de chaine
            {
                code = false; // erreur détectée
            }
            return code;
        }

        public static Boolean EstduTexte(String s)
        {
            int i;
            char c;
            Boolean code = true;
            // test longueur chaîne reçue
            if (s.Length < 30 && s.Length > 0)
            {
                // vérifier 1 à 1 que tous les caractères sont des chiffres
                for (i = 0; i < s.Length; i++)
                {
                    c = s[i]; // extrait le i° car
                    if (Char.IsDigit(c)) // si c'est un chiffre
                    {
                        code = false; // erreur détectée
                    }
                    if (Char.IsSymbol(c)) // si c'est un symbole
                    {
                        code = false; // erreur détectée
                    }
                } // fin de boucle for
            }
            else // erreur de longueur de chaine
            {
                code = false; // erreur détectée
            }
            return code;
        }
        public static void Sauvegarde<T>(T p, string nomFichier)
        {
            XmlSerializer lizeer = new XmlSerializer(typeof(T));
            using (TextWriter tx = new StreamWriter(nomFichier))
            {
                lizeer.Serialize(tx, p);
                
            }
        }
        public static T Lecture<T>(string nomFichier)
        {
            XmlSerializer lizeer = new XmlSerializer(typeof(T));
            TextReader tx = new StreamReader(nomFichier);
            T p= (T)lizeer.Deserialize(tx) ;
            return p;
        }
        public class Perso
        {
            private int id = 1;
            private string joueur;
            private string nom;
            private string prnom;
            private string classe;
            private string origine;
            private string classeSocial;
            private int force;
            private int agi;
            private int dex;
            private int con;
            private int inte;
            private int per;
            private int pou;
            private int vol;
            private string sexe;
            private int age;
            private int poids;
            private int taille;
            private int hauteur;
            private int apparence;
            private int xp;
            private int pf;
            private int di;
            private int ppp;
            private int charac;
            private int characNaturel;
            private int compNaturel;

            public string Joueur { get => joueur; set => joueur = value; }
            public string Nom { get => nom; set => nom = value; }
            public string Prnom { get => prnom; set => prnom = value; }
            public string Classe { get => classe; set => classe = value; }
            public string Origine { get => origine; set => origine = value; }
            public string ClasseSocial { get => classeSocial; set => classeSocial = value; }
            public int Force { get => force; set => force = value; }
            public int Agi { get => agi; set => agi = value; }
            public int Dex { get => dex; set => dex = value; }
            public int Con { get => con; set => con = value; }
            public int Inte { get => inte; set => inte = value; }
            public int Per { get => per; set => per = value; }
            public int Pou { get => pou; set => pou = value; }
            public int Vol { get => vol; set => vol = value; }
            public string Sexe { get => sexe; set => sexe = value; }
            public int Age { get => age; set => age = value; }
            public int Poids { get => poids; set => poids = value; }
            public int Taille { get => taille; set => taille = value; }
            public int Apparence { get => apparence; set => apparence = value; }
            public int Xp { get => xp; set => xp = value; }
            public int Hauteur { get => hauteur; set => hauteur = value; }
            public int Id { get => id; set => id = value; }
            public int Pf { get => pf; set => pf = value; }
        }
    }
}
