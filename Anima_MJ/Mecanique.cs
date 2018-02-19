using System;
using System.Linq;

namespace Anima_MJ
{

    //classe dédié à toutes les fonctions linq 
    // c'est à dire toutes les fonctions qui interragissent avec les tables
    public static class Mecanique
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
        public static void Ins_joueur(Outils.Perso perso)
        {
            joueur_bonus Kevin = new joueur_bonus();
            //instanciation de la table joueur-bonus
            var query = from a in Donnees.Db.classe_bonus
                        where a.Id == Mecanique.IDclasse(perso)
                        select a;
            foreach (var a in query)
            {
                //identifiants
                Kevin.id_classe = Mecanique.IDclasse(perso);
                Kevin.id_joueur = perso.Id;
                //champs martial et psy X)
                Kevin.pv = a.pv;
                Kevin.initiative = a.initiative;
                Kevin.di = a.di;
                Kevin.ppp = a.ppp;
                Kevin.charac = a.charac;
                Kevin.attaque = a.attaque;
                Kevin.parade = a.parade;
                Kevin.esquive = a.esquive;
                Kevin.port_darmure = a.port_darmure;
                //champs magie et psy
                Kevin.convoquer = a.convoquer;
                Kevin.dominer = a.dominer;
                Kevin.lier = a.lier;
                Kevin.revoquer = a.revoquer;
                Kevin.zeon = a.zeon;
                Kevin.comp_nat_classe = a.comp_nat_classe;
                //Compétences secondaires
                Kevin.acrobatie = a.acrobatie;
                Kevin.athletisme = a.athletisme;
                Kevin.equitation = a.equitation;
                Kevin.escalade = a.escalade;
                Kevin.natation = a.natation;
                Kevin.saut = a.saut;
                Kevin.impassibilite = a.impassibilite;
                Kevin.prouesse = a.prouesse;
                Kevin.resistance = a.resistance;
                Kevin.observation = a.observation;
                Kevin.pistage = a.pistage;
                Kevin.vigilance = a.vigilance;
                Kevin.animaux = a.animaux;
                Kevin.estimation = a.estimation;
                Kevin.evaluation_magique = a.evaluation_magique;
                Kevin.herboristerie = a.herboristerie;
                Kevin.histoire = a.histoire;
                Kevin.medecine = a.medecine;
                Kevin.memorisation = a.memorisation;
                Kevin.navigation = a.navigation;
                Kevin.occultisme = a.occultisme;
                Kevin.science = a.science;
                Kevin.loi = a.loi;
                Kevin.tactique = a.tactique;
                Kevin.commandement = a.commandement;
                Kevin.intimidation = a.intimidation;
                Kevin.persuasion = a.persuasion;
                Kevin.style = a.style;
                Kevin.commerce = a.commerce;
                Kevin.conn_rue = a.conn_rue;
                Kevin.etiquette = a.etiquette;
                Kevin.camouflage = a.camouflage;
                Kevin.crochetage = a.crochetage;
                Kevin.deguisement = a.deguisement;
                Kevin.discretion = a.discretion;
                Kevin.larcin = a.larcin;
                Kevin.pieges = a.pieges;
                Kevin.poison = a.poison;
                Kevin.art = a.art;
                Kevin.danse = a.danse;
                Kevin.forge = a.forge;
                Kevin.habilete = a.habilete;
                Kevin.musique = a.musique;
                Kevin.orfevrerie = a.orfevrerie;
                Kevin.confection = a.confection;
                Kevin.creation_mario = a.creation_mario;
                Kevin.runes = a.runes;
                Kevin.alchimie = a.alchimie;
                Kevin.animisme = a.animisme;
                Kevin.rituel_calligraphie = a.rituel_calligraphie;
                Donnees.Db.SaveChanges();
            }
        }

        public static void Ins_joueur_cout(Outils.Perso perso)
        {
            joueur_cout Kevin = new joueur_cout();
            //instanciation de la table joueur-bonus
            var query = from a in Donnees.Db.joueur_cout
                        where a.Id == Mecanique.IDclasse(perso)
                        select a;
            foreach (var a in query)
            {
                //identifiants
                Kevin.id_classe = Mecanique.IDclasse(perso);
                Kevin.id_joueur = perso.Id;
                //champs martial
                Kevin.multi_pv = a.multi_pv;
                Kevin.attaque = a.attaque;
                Kevin.parade = a.parade;
                Kevin.esquive = a.esquive;
                Kevin.port_darmure = a.port_darmure;
                Kevin.di = a.di;
                Kevin.ki = a.ki;
                Kevin.accumulation_ki = a.accumulation_ki;
                //champs magie et psy (le désordre est due au respect du désordre de la table pour faciliter la relecture...)
                Kevin.zeon = a.zeon;
                Kevin.multi_amr = a.multi_amr;
                Kevin.projection_magique = a.projection_magique;
                Kevin.convoquer = a.convoquer;
                Kevin.dominer = a.dominer;
                Kevin.lier = a.lier;
                Kevin.revoquer = a.revoquer;
                Kevin.ppp = a.ppp;
                Kevin.projection_psychique = a.projection_psychique;
                Kevin.voie_magique = a.voie_magique;
                Kevin.multi_zeon_regen = a.multi_zeon_regen;
                //Compétences secondaires
                Kevin.acrobatie = a.acrobatie;
                Kevin.athletisme = a.athletisme;
                Kevin.equitation = a.equitation;
                Kevin.escalade = a.escalade;
                Kevin.natation = a.natation;
                Kevin.saut = a.saut;
                Kevin.impassibilite = a.impassibilite;
                Kevin.prouesse = a.prouesse;
                Kevin.resistance = a.resistance;
                Kevin.observation = a.observation;
                Kevin.pistage = a.pistage;
                Kevin.vigilance = a.vigilance;
                Kevin.animaux = a.animaux;
                Kevin.estimation = a.estimation;
                Kevin.evaluation_magique = a.evaluation_magique;
                Kevin.herboristerie = a.herboristerie;
                Kevin.histoire = a.histoire;
                Kevin.medecine = a.medecine;
                Kevin.memorisation = a.memorisation;
                Kevin.navigation = a.navigation;
                Kevin.occultisme = a.occultisme;
                Kevin.science = a.science;
                Kevin.loi = a.loi;
                Kevin.tactique = a.tactique;
                Kevin.commandement = a.commandement;
                Kevin.intimidation = a.intimidation;
                Kevin.persuasion = a.persuasion;
                Kevin.style = a.style;
                Kevin.commerce = a.commerce;
                Kevin.conn_rue = a.conn_rue;
                Kevin.etiquette = a.etiquette;
                Kevin.camouflage = a.camouflage;
                Kevin.crochetage = a.crochetage;
                Kevin.deguisement = a.deguisement;
                Kevin.discretion = a.discretion;
                Kevin.larcin = a.larcin;
                Kevin.pieges = a.pieges;
                Kevin.poison = a.poison;
                Kevin.art = a.art;
                Kevin.danse = a.danse;
                Kevin.forge = a.forge;
                Kevin.habilete = a.habilete;
                Kevin.musique = a.musique;
                Kevin.orfevrerie = a.orfevrerie;
                Kevin.confection = a.confection;
                Kevin.creation_mario = a.creation_mario;
                Kevin.runes = a.runes;
                Kevin.alchimie = a.alchimie;
                Kevin.animisme = a.animisme;
                Kevin.rituel_calligraphie = a.rituel_calligraphie;
                //module d'armes
                Kevin.arme_similaire = a.arme_similaire;
                Kevin.arme_mixte = a.arme_mixte;
                Kevin.arme_distincte_mains_nues = a.arme_distincte_mains_nues;
                Kevin.catégorie_entiere = a.catégorie_entiere;
                Kevin.projectile = a.projectile;
                Kevin.armes_lancer = a.armes_lancer;
                Kevin.armes_improvisees = a.armes_improvisees;
                Kevin.armes_barbares = a.armes_barbares;
                Kevin.armes_chevalier = a.armes_chevalier;
                Kevin.arme_gladiateur = a.arme_gladiateur;
                Kevin.arme_chasseur = a.arme_chasseur;
                Kevin.arme_ninja = a.arme_ninja;
                Kevin.arme_assassin = a.arme_assassin;
                Kevin.arme_soldat = a.arme_soldat;
                Kevin.arme_duelliste = a.arme_duelliste;
                Kevin.arme_arborigene = a.arme_arborigene;
                Kevin.arme_pirate = a.arme_pirate;
                Kevin.arme_brigand = a.arme_brigand;
                Kevin.batto_jutsu = a.batto_jutsu;
                Kevin.attaque_circulaire = a.attaque_circulaire;
                Kevin.tenir_joue = a.tenir_joue;
                Kevin.desarmement = a.desarmement;
                Kevin.attaque_enchainees = a.attaque_enchainees;
                Kevin.maniement_offensif_sort = a.maniement_offensif_sort;
                Kevin.maniement_deffensif_sort = a.maniement_deffensif_sort;
                Kevin.maniement_matrice = a.maniement_matrice;
                Kevin.accumulation_projectile = a.accumulation_projectile;
                Kevin.attaque_supplementaire = a.attaque_supplementaire;
                Kevin.attaque_inhabituelle = a.attaque_inhabituelle;
                Kevin.cible_mouvante = a.cible_mouvante;
                Kevin.combat_aveugle = a.combat_aveugle;
                Kevin.critique_accru = a.critique_accru;
                Kevin.defense_projectile = a.defense_projectile;
                Kevin.deviation = a.deviation;
                Kevin.tirs_mouvement = a.tirs_mouvement;
                Kevin.esquive_bouclier = a.esquive_bouclier;
                Kevin.garde_corp = a.garde_corp;
                Kevin.mouvement_espace_reduit = a.mouvement_espace_reduit;
                Kevin.immobilisation_inhabituelle = a.immobilisation_inhabituelle;
                Kevin.reduction_darmure = a.reduction_darmure;
                Kevin.deux_arme_style_defensif = a.deux_arme_style_defensif;
                Kevin.tenue = a.tenue;
                Kevin.cibles_multiples = a.cibles_multiples;
                Donnees.Db.SaveChanges();

            }
        }
    }
}

    
    



