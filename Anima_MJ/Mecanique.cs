using System;
using System.Linq;

namespace Anima_MJ
{
    

    public static  class Mecanique
    {
    public static int CalculLevel(Outils.Perso perso)
        {
            int level;
            var query = from a in Donnees.Db.Level.Take(1)
                        where a.id_joueur == perso.Id
                        orderby a.level1 descending
                        select a.level1;
            foreach (var a in query)
            {
                if (query != null)
                {
                    level = Convert.ToInt32(query) + 1;
                    return level;
                }
                else
                {
                    if (Data.level1 == true)
                    {
                        level = 1;
                        return level;
                    }
                    else
                    {
                        level = 0;
                        return level;
                    }
                    
                }
                
            }
            return level;
        }

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
        
        public static int IDclasse(Outils.Perso perso)
        {
            int id;
            var query = from a in Donnees.Db.Classe.Take(1)
                        where a.Nom == perso.Classe
                        select a.Id;
            id = Convert.ToInt32( query);


            return id;
        }
    }
}
