using System;
using System.Linq;

namespace Anima_MJ
{
    
    //classe dédié à toutes les fonctions linq 
    // c'est à dire toutes les fonctions qui interragissent avec les tables
    public static  class Mecanique
    {
        //Fonction gerant la valeur du niveaux suivant lors d'un level up
    public static int CalculLevel(Outils.Perso perso)
        {
            //c est un compteur, qui s'incremente à chaque fois que la commande link applique le select
            //le take ne fonctionne pas avec le orderby X)
            int c = 0;
            int level = 1;
            var query = from a in Donnees.Db.Level
                        where a.id_joueur == perso.Id
                        orderby a.level1 descending
                        select a.level1;
            foreach (var a in query)
            {
                c++;
                    level = Convert.ToInt32(query) + 1;
                  

            }
            if (c == 0)
            {
                if (Data.level1 == true)
                {
                    level = 1;
                    
                }
                else
                {
                    level = 0;
                    
                }

            }
            return level;
        }
        //fonction permettant le calcul de pf selon le level
        //elle devrait pouvoir être fusionné avec la fonction ci dessus
        public static int CalculPF_level()
        {
            int pf;
            if (Data.level1 == true)
            {
                pf = 100;

            }
            else
            {
                pf = 200;
            }
            return pf;
        }
        //fonction permettant de trouver l'id d'une classe via son nom
        public static int IDclasse(Outils.Perso perso)
        {
            int id = -1;
            var query = from a in Donnees.Db.Classe.Take(1)
                        where a.Nom == perso.Classe
                        select a.Id;
            foreach (var a in query)
            {
                id = Convert.ToInt32(query);
            }


            return id;
        }
    }
}
