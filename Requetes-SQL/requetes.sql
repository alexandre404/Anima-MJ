-- Script Date: 06/02/2018 21:13  - ErikEJ.SqlCeScripting version 3.5.2.74
-- Database information:
-- Database: C:\Users\user1\Desktop\Anima MJ\Anima_joueur.db
-- ServerVersion: 3.18.0
-- DatabaseSize: 140 KB
-- Created: 06/02/2018 19:56

-- User Table information:
-- Number of tables: 19
-- Art_martiaux: -1 row(s)
-- Classe: -1 row(s)
-- classe_bonus: -1 row(s)
-- classe_cout: -1 row(s)
-- competence: -1 row(s)
-- Dons: -1 row(s)
-- histo_charac: -1 row(s)
-- Joueur: -1 row(s)
-- joueur_actu	: -1 row(s)
-- joueur_bonus: -1 row(s)
-- joueur_cout: -1 row(s)
-- joueur_depense: -1 row(s)
-- joueur_temp	: -1 row(s)
-- Level: -1 row(s)
-- module_darme: -1 row(s)
-- module_joueur: -1 row(s)
-- pouvoir_joueur: -1 row(s)
-- pouvoir_ki: -1 row(s)
-- temp_charac: -1 row(s)

SELECT 1;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE [temp_charac] (
  [Id] INTEGER  NOT NULL
, [id_joueur] int  NOT NULL
, [Forca] int  NOT NULL
, [agi] int  NOT NULL
, [dex] int  NOT NULL
, [con] int  NOT NULL
, [inte] int  NOT NULL
, [per] int  NOT NULL
, [pou] int  NOT NULL
, [vol] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_temp_charac] PRIMARY KEY ([Id])
);
CREATE TABLE [pouvoir_ki] (
  [Id] INTEGER  NOT NULL
, [nom] text NOT NULL
, [cout] int  NOT NULL
, [condition] int  NOT NULL
, [effet] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_pouvoir_ki] PRIMARY KEY ([Id])
);
CREATE TABLE [pouvoir_joueur] (
  [Id] INTEGER  NOT NULL
, [id_joueur] int  NOT NULL
, [id__pouvoir] int  NOT NULL
, [cout] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_pouvoir_joueur] PRIMARY KEY ([Id])
);
CREATE TABLE [module_joueur] (
  [Id] INTEGER  NOT NULL
, [id_joueur] int  NOT NULL
, [id_classe] int  NOT NULL
, [id_module] int  NOT NULL
, [nombre] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_module_joueur] PRIMARY KEY ([Id])
);
CREATE TABLE [module_darme] (
  [Id] INTEGER  NOT NULL
, [nom] text NOT NULL
, [cout] int  NOT NULL
, [description] text NOT NULL
, CONSTRAINT [sqlite_master_PK_module_darme] PRIMARY KEY ([Id])
);
CREATE TABLE [Level] (
  [Id] INTEGER  NOT NULL
, [id_joueur] int  NOT NULL
, [level] int  NOT NULL
, [classe] text NOT NULL
, [pf_restant] int  NOT NULL
, [di_restant] int  NOT NULL
, [ppp_restant] numeric(53,0)  NOT NULL
, [char_nat] int  NOT NULL
, [comp_nat] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_Level] PRIMARY KEY ([Id])
);
CREATE TABLE [joueur_temp	] (
  [Id] INTEGER  NOT NULL
, [id_classe] int  NOT NULL
, [id_joueur] int  NOT NULL
, [pv] int  NOT NULL
, [initiative] int  NOT NULL
, [fatigue] int  NOT NULL
, [mouvement] int  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [di] int  NOT NULL
, [ki] int  NOT NULL
, [for_accumulation_ki] int  NOT NULL
, [agi_accumulation_ki] int  NOT NULL
, [dex_accumulation_ki] int  NOT NULL
, [con_accumulation_ki] int  NOT NULL
, [int_accumulation_ki] int  NOT NULL
, [per_accumulation_ki] int  NOT NULL
, [pou_accumulation_ki] int  NOT NULL
, [vol_accumulation_ki] int  NOT NULL
, [zeon] int  NOT NULL
, [amr] int  NOT NULL
, [magie_innee] int  NOT NULL
, [projection_magique] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [ppp] int  NOT NULL
, [talent_psy] int  NOT NULL
, [projection_psychique] int  NOT NULL
, [voie_magique] int  NOT NULL
, [multi_zeon_regen] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_joueur_temp	] PRIMARY KEY ([Id])
);
CREATE TABLE [joueur_depense] (
  [Id] INTEGER  NOT NULL
, [id_classe] int  NOT NULL
, [id_joueur] int  NOT NULL
, [multi_pv] int  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [di] int  NOT NULL
, [ki] int  NOT NULL
, [accumulation_ki] int  NOT NULL
, [zeon] int  NOT NULL
, [multi_amr] int  NOT NULL
, [projection_magique] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [ppp] int  NOT NULL
, [projection_psychique] int  NOT NULL
, [talent_psy] int  NOT NULL
, [voie_magique] int  NOT NULL
, [multi_zeon_regen] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, [acrobatie_char] int  NOT NULL
, [athletisme_char] int  NOT NULL
, [equitation_char] int  NOT NULL
, [escalade_char] int  NOT NULL
, [natation_char] int  NOT NULL
, [saut_char] int  NOT NULL
, [impassibilite_char] int  NOT NULL
, [prouesse_char] int  NOT NULL
, [resistance_char] int  NOT NULL
, [observation_char] int  NOT NULL
, [pistage_char] int  NOT NULL
, [vigilance_char] int  NOT NULL
, [animaux_char] int  NOT NULL
, [estimation_char] int  NOT NULL
, [evaluation_magique_char] int  NOT NULL
, [herboristerie_char] int  NOT NULL
, [histoire_char] int  NOT NULL
, [medecine_char] int  NOT NULL
, [memorisation_char] int  NOT NULL
, [navigation_char] int  NOT NULL
, [occultisme_char] int  NOT NULL
, [science_char] int  NOT NULL
, [loi_char] int  NOT NULL
, [tactique_char] int  NOT NULL
, [commandement_char] int  NOT NULL
, [intimidation_char] int  NOT NULL
, [persuasion_char] int  NOT NULL
, [style_char] int  NOT NULL
, [commerce_char] int  NOT NULL
, [conn_rue_char] int  NOT NULL
, [etiquette_char] int  NOT NULL
, [camouflage_char] int  NOT NULL
, [crochetage_char] int  NOT NULL
, [deguisement_char] int  NOT NULL
, [discretion_char] int  NOT NULL
, [larcin_char] int  NOT NULL
, [pieges_char] int  NOT NULL
, [poison_char] int  NOT NULL
, [art_char] int  NOT NULL
, [danse_char] int  NOT NULL
, [forge_char] int  NOT NULL
, [habilete_char] int  NOT NULL
, [musique_char] int  NOT NULL
, [orfevrerie_char] int  NOT NULL
, [confection_char] int  NOT NULL
, [creation_mario_char] int  NOT NULL
, [runes_char] int  NOT NULL
, [alchimie_char] int  NOT NULL
, [animisme_char] int  NOT NULL
, [rituel_calligraphie_char] int  NOT NULL
, [acrobatie_nat] int  NOT NULL
, [athletisme_nat] int  NOT NULL
, [equitation_nat] int  NOT NULL
, [escalade_nat] int  NOT NULL
, [natation_nat] int  NOT NULL
, [saut_nat] int  NOT NULL
, [impassibilite_nat] int  NOT NULL
, [prouesse_nat] int  NOT NULL
, [resistance_nat] int  NOT NULL
, [observation_nat] int  NOT NULL
, [pistage_nat] int  NOT NULL
, [vigilance_nat] int  NOT NULL
, [animaux_nat] int  NOT NULL
, [estimation_nat] int  NOT NULL
, [evaluation_magique_nat] int  NOT NULL
, [herboristerie_nat] int  NOT NULL
, [histoire_nat] int  NOT NULL
, [medecine_nat] int  NOT NULL
, [memorisation_nat] int  NOT NULL
, [navigation_nat] int  NOT NULL
, [occultisme_nat] int  NOT NULL
, [science_nat] int  NOT NULL
, [loi_nat] int  NOT NULL
, [tactique_nat] int  NOT NULL
, [commandement_nat] int  NOT NULL
, [intimidation_nat] int  NOT NULL
, [persuasion_nat] int  NOT NULL
, [style_nat] int  NOT NULL
, [commerce_nat] int  NOT NULL
, [conn_rue_nat] int  NOT NULL
, [etiquette_nat] int  NOT NULL
, [camouflage_nat] int  NOT NULL
, [crochetage_nat] int  NOT NULL
, [deguisement_nat] int  NOT NULL
, [discretion_nat] int  NOT NULL
, [larcin_nat] int  NOT NULL
, [pieges_nat] int  NOT NULL
, [poison_nat] int  NOT NULL
, [art_nat] int  NOT NULL
, [danse_nat] int  NOT NULL
, [forge_nat] int  NOT NULL
, [habilete_nat] int  NOT NULL
, [musique_nat] int  NOT NULL
, [orfevrerie_nat] int  NOT NULL
, [confection_nat] int  NOT NULL
, [creation_mario_nat] int  NOT NULL
, [runes_nat] int  NOT NULL
, [alchimie_nat] int  NOT NULL
, [animisme_nat] int  NOT NULL
, [rituel_calligraphie_nat] int  NOT NULL
, [arme_similaire] int  NOT NULL
, [arme_mixte] int  NOT NULL
, [arme_distincte_mains_nues] int  NOT NULL
, [catégorie_entiere] int  NOT NULL
, [projectile] int  NOT NULL
, [armes_lancer] int  NOT NULL
, [armes_improvisees] int  NOT NULL
, [armes_barbares] int  NOT NULL
, [armes_chevalier] int  NOT NULL
, [arme_gladiateur] int  NOT NULL
, [arme_chasseur] int  NOT NULL
, [arme_ninja] int  NOT NULL
, [arme_assassin] int  NOT NULL
, [arme_soldat] int  NOT NULL
, [arme_duelliste] int  NOT NULL
, [arme_arborigene] int  NOT NULL
, [arme_pirate] int  NOT NULL
, [arme_brigand] int  NOT NULL
, [batto_jutsu] int  NOT NULL
, [attaque_circulaire] int  NOT NULL
, [tenir_joue] int  NOT NULL
, [desarmement] int  NOT NULL
, [attaque_enchainees] int  NOT NULL
, [maniement_offensif_sort] int  NOT NULL
, [maniement_deffensif_sort] int  NOT NULL
, [maniement_matrice] int  NOT NULL
, [accumulation_projectile] int  NOT NULL
, [attaque_supplementaire] int  NOT NULL
, [attaque_inhabituelle] int  NOT NULL
, [cible_mouvante] int  NOT NULL
, [combat_aveugle] int  NOT NULL
, [critique_accru] int  NOT NULL
, [defense_projectile] int  NOT NULL
, [deviation] int  NOT NULL
, [tirs_mouvement] int  NOT NULL
, [esquive_bouclier] int  NOT NULL
, [garde_corp] int  NOT NULL
, [mouvement_espace_reduit] int  NOT NULL
, [immobilisation_inhabituelle] int  NOT NULL
, [reduction_darmure] int  NOT NULL
, [deux_arme_style_defensif] int  NOT NULL
, [tenue] int  NOT NULL
, [cibles_multiples] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_joueur_depense] PRIMARY KEY ([Id])
);
CREATE TABLE [joueur_cout] (
  [Id] INTEGER  NOT NULL
, [id_classe] int  NOT NULL
, [id_joueur] int  NOT NULL
, [multi_pv] int  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [di] int  NOT NULL
, [ki] int  NOT NULL
, [accumulation_ki] int  NOT NULL
, [zeon] int  NOT NULL
, [multi_amr] int  NOT NULL
, [projection_magique] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [ppp] int  NOT NULL
, [projection_psychique] int  NOT NULL
, [voie_magique] int  NOT NULL
, [multi_zeon_regen] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, [arme_similaire] int  NOT NULL
, [arme_mixte] int  NOT NULL
, [arme_distincte_mains_nues] int  NOT NULL
, [catégorie_entiere] int  NOT NULL
, [projectile] int  NOT NULL
, [armes_lancer] int  NOT NULL
, [armes_improvisees] int  NOT NULL
, [armes_barbares] int  NOT NULL
, [armes_chevalier] int  NOT NULL
, [arme_gladiateur] int  NOT NULL
, [arme_chasseur] int  NOT NULL
, [arme_ninja] int  NOT NULL
, [arme_assassin] int  NOT NULL
, [arme_soldat] int  NOT NULL
, [arme_duelliste] int  NOT NULL
, [arme_arborigene] int  NOT NULL
, [arme_pirate] int  NOT NULL
, [arme_brigand] int  NOT NULL
, [batto_jutsu] int  NOT NULL
, [attaque_circulaire] int  NOT NULL
, [tenir_joue] int  NOT NULL
, [desarmement] int  NOT NULL
, [attaque_enchainees] int  NOT NULL
, [maniement_offensif_sort] int  NOT NULL
, [maniement_deffensif_sort] int  NOT NULL
, [maniement_matrice] int  NOT NULL
, [accumulation_projectile] int  NOT NULL
, [attaque_supplementaire] int  NOT NULL
, [attaque_inhabituelle] int  NOT NULL
, [cible_mouvante] int  NOT NULL
, [combat_aveugle] int  NOT NULL
, [critique_accru] int  NOT NULL
, [defense_projectile] int  NOT NULL
, [deviation] int  NOT NULL
, [tirs_mouvement] int  NOT NULL
, [esquive_bouclier] int  NOT NULL
, [garde_corp] int  NOT NULL
, [mouvement_espace_reduit] int  NOT NULL
, [immobilisation_inhabituelle] int  NOT NULL
, [reduction_darmure] int  NOT NULL
, [deux_arme_style_defensif] int  NOT NULL
, [tenue] int  NOT NULL
, [cibles_multiples] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_joueur_cout] PRIMARY KEY ([Id])
);
CREATE TABLE [joueur_bonus] (
  [Id] INTEGER  NOT NULL
, [id_classe] int  NOT NULL
, [id_joueur] int  NOT NULL
, [pv] int  NOT NULL
, [initiative] int  NOT NULL
, [di] int  NOT NULL
, [ppp] numeric(53,0)  NOT NULL
, [charac] numeric(53,0)  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [zeon] int  NOT NULL
, [comp_nat_classe] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_joueur_bonus] PRIMARY KEY ([Id])
);
CREATE TABLE [joueur_actu	] (
  [Id] INTEGER  NOT NULL
, [id_classe] int  NOT NULL
, [id_joueur] int  NOT NULL
, [pv] int  NOT NULL
, [initiative] int  NOT NULL
, [fatigue] int  NOT NULL
, [mouvement] int  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [di] int  NOT NULL
, [ki] int  NOT NULL
, [for_accumulation_ki] int  NOT NULL
, [agi_accumulation_ki] int  NOT NULL
, [dex_accumulation_ki] int  NOT NULL
, [con_accumulation_ki] int  NOT NULL
, [int_accumulation_ki] int  NOT NULL
, [per_accumulation_ki] int  NOT NULL
, [pou_accumulation_ki] int  NOT NULL
, [vol_accumulation_ki] int  NOT NULL
, [zeon] int  NOT NULL
, [amr] int  NOT NULL
, [magie_innee] int  NOT NULL
, [projection_magique] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [ppp] int  NOT NULL
, [talent_psy] int  NOT NULL
, [projection_psychique] int  NOT NULL
, [voie_magique] int  NOT NULL
, [multi_zeon_regen] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_joueur_actu	] PRIMARY KEY ([Id])
);
CREATE TABLE [Joueur] (
  [Id_joueur] INTEGER  NOT NULL
, [Pseudo_Joueur] text NOT NULL
, [Nom] text NOT NULL
, [Prenom] text NOT NULL
, [Classe_level_0] text NOT NULL
, [Sexe] text NOT NULL
, [Origine] text NOT NULL
, [Classe_social] text NOT NULL
, [Age] int  NOT NULL
, [Apparence] int  NOT NULL
, [Poid] int  NOT NULL
, [Hauteur] int  NOT NULL
, [Taille] int  NOT NULL
, [base_for] int  NOT NULL
, [base_agi] int  NOT NULL
, [base_dex] int  NOT NULL
, [base_con] int  NOT NULL
, [base_int] int  NOT NULL
, [base_per] int  NOT NULL
, [base_pou] int  NOT NULL
, [base_vol] int  NOT NULL
, [total_xp] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_Joueur] PRIMARY KEY ([Id_joueur])
);
CREATE TABLE [histo_charac] (
  [Id] INTEGER  NOT NULL
, [id_joueur] int  NOT NULL
, [id_niveau] int  NOT NULL
, [Forca] int  NOT NULL
, [agi] int  NOT NULL
, [dex] int  NOT NULL
, [con] int  NOT NULL
, [inte] int  NOT NULL
, [per] int  NOT NULL
, [pou] int  NOT NULL
, [vol] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_histo_charac] PRIMARY KEY ([Id])
);
CREATE TABLE [Dons] (
  [Id] INTEGER  NOT NULL
, [Nom] text NOT NULL
, [effet] text NOT NULL
, [cout] int  NOT NULL
, [nombre] int  NOT NULL
, [droit_daccees] int  NOT NULL
, [famille] text NOT NULL
, CONSTRAINT [sqlite_master_PK_Dons] PRIMARY KEY ([Id])
);
CREATE TABLE [competence] (
  [Id] INTEGER  NOT NULL
, [nom] text NOT NULL
, [type] text NOT NULL
, [description] text NOT NULL
, CONSTRAINT [sqlite_master_PK_competence] PRIMARY KEY ([Id])
);
CREATE TABLE [classe_cout] (
  [Id] INTEGER  NOT NULL
, [multi_pv] int  NOT NULL
, [id_classe] int  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [di] int  NOT NULL
, [ki] int  NOT NULL
, [accumulation_ki] int  NOT NULL
, [zeon] int  NOT NULL
, [multi_amr] int  NOT NULL
, [projection_magique] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [ppp] int  NOT NULL
, [projection_psychique] int  NOT NULL
, [voie_magique] int  NOT NULL
, [multi_zeon_regen] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_classe_cout] PRIMARY KEY ([Id])
);
CREATE TABLE [classe_bonus] (
  [Id] INTEGER  NOT NULL
, [id_classe] int  NOT NULL
, [pv] int  NOT NULL
, [initiative] int  NOT NULL
, [di] int  NOT NULL
, [ppp] numeric(53,0)  NOT NULL
, [charac] numeric(53,0)  NOT NULL
, [attaque] int  NOT NULL
, [parade] int  NOT NULL
, [esquive] int  NOT NULL
, [port_darmure] int  NOT NULL
, [convoquer] int  NOT NULL
, [dominer] int  NOT NULL
, [lier] int  NOT NULL
, [revoquer] int  NOT NULL
, [zeon] int  NOT NULL
, [comp_nat_classe] int  NOT NULL
, [acrobatie] int  NOT NULL
, [athletisme] int  NOT NULL
, [equitation] int  NOT NULL
, [escalade] int  NOT NULL
, [natation] int  NOT NULL
, [saut] int  NOT NULL
, [impassibilite] int  NOT NULL
, [prouesse] int  NOT NULL
, [resistance] int  NOT NULL
, [observation] int  NOT NULL
, [pistage] int  NOT NULL
, [vigilance] int  NOT NULL
, [animaux] int  NOT NULL
, [estimation] int  NOT NULL
, [evaluation_magique] int  NOT NULL
, [herboristerie] int  NOT NULL
, [histoire] int  NOT NULL
, [medecine] int  NOT NULL
, [memorisation] int  NOT NULL
, [navigation] int  NOT NULL
, [occultisme] int  NOT NULL
, [science] int  NOT NULL
, [loi] int  NOT NULL
, [tactique] int  NOT NULL
, [commandement] int  NOT NULL
, [intimidation] int  NOT NULL
, [persuasion] int  NOT NULL
, [style] int  NOT NULL
, [commerce] int  NOT NULL
, [conn_rue] int  NOT NULL
, [etiquette] int  NOT NULL
, [camouflage] int  NOT NULL
, [crochetage] int  NOT NULL
, [deguisement] int  NOT NULL
, [discretion] int  NOT NULL
, [larcin] int  NOT NULL
, [pieges] int  NOT NULL
, [poison] int  NOT NULL
, [art] int  NOT NULL
, [danse] int  NOT NULL
, [forge] int  NOT NULL
, [habilete] int  NOT NULL
, [musique] int  NOT NULL
, [orfevrerie] int  NOT NULL
, [confection] int  NOT NULL
, [creation_mario] int  NOT NULL
, [runes] int  NOT NULL
, [alchimie] int  NOT NULL
, [animisme] int  NOT NULL
, [rituel_calligraphie] int  NOT NULL
, CONSTRAINT [sqlite_master_PK_classe_bonus] PRIMARY KEY ([Id])
);
CREATE TABLE [Classe] (
  [Id] INTEGER  NOT NULL
, [Nom] text NOT NULL
, CONSTRAINT [sqlite_master_PK_Classe] PRIMARY KEY ([Id])
);
CREATE TABLE [Art_martiaux] (
  [Id] INTEGER  NOT NULL
, [Nom] text NOT NULL
, CONSTRAINT [sqlite_master_PK_Art_martiaux] PRIMARY KEY ([Id])
);
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
1,'Accès à un pouvoir Psy naturel','Vous avez un pouvoir psy utilisable 1/min au niveau DIF',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
2,'Accès à un pouvoir Psy naturel rang 2','Vous avez un pouvoir psy utilisable 1/min au niveaux Très DIF',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
3,'Accès à un pouvoir Psy naturel rang 3','Vous avez un pouvoir psy utilisable 1/min au niveau ABSURDE',3,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
4,'Accès à une Discipline Psy','Vous pouvez dépenser des PPP dans une seule Discipline',1,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
5,'Accès à toute les Discipline Psy','Vous pouvez dépenser des PPP dans toutes les disciplines',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
6,'Accumulation de Ki accrue','Si vous ne faites pas d''action pendant le round toutes vos accumulations de Ki augmentent de 1',1,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
7,'Accumulationde Ki accrue rang 2','Si vous ne faites pas d''action pendant le rond toutes vos accumulations de Ki augmentent de 2',2,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
8,'Pleine Accumulation','Vous pouvez faire des actions sans diviser par 2 l''accumulation de Ki',2,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
9,'Affinité avec les Animaux','Les animaux vous aiment bien et comprennent vos émotions',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
10,'Bonne Fortune','Les effets négatifs aléatoires ne touchent pas votre personnage',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
11,'Energie du désespoir','Quand les PV sont en dessous de 1/4, vous avez +20 à toutes vos actions',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
12,'Ambidextre','Le malus d''attaque avec une arme supplémentaire est réduit de -10',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
13,'Apprentissage','+3 xp par séance ',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
14,'Apprentissage rang 2','+6 xp par séance',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
15,'Apprentissage rang 3','+9 xp par séance',3,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
16,'Apprentissage Inné','+10 par niveau dans une compétence spécifique',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
17,'Apprentissage Inné rang 2','+20 par niveau dans une compétence spécifique',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
18,'Apprentissage Inné rang 3','+30 par niveau dans une compétence spécifique',3,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
19,'Apprentissage Inné dans un champs','+5 par niveau dans un champ spécifique',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
20,'Apprentissage Inné dans un champs rang 2','+10 par niveau dans un champ spécifique',3,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
21,'Apprentissage Martial','Augmente de 2 le rang d''apprentissage des techniques du Ki',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
22,'Apte dans un champ','Réduisez le cout de toutes les compétences du champs de 1 (min 1)',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
23,'Apte dans une compétence','Réduisez le cout d''une compétence spécifique de 1',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
24,'Armure mystique','+4 à l''ip d''énergie',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
25,'Armure naturel','+2 à toutes les ip sauf energie',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
26,'Artefact','Vous posséder un objet magique de rang mineur (voir avec mj et rp)',1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
27,'Artefact rang 2','Vous posséder un objet magique de rang intermediaire (voir avec mj et rp)',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
28,'Artefact rang 3','Vous posséder un objet magique de rang majeur (voir avec mj et rp)',3,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
29,'Bonus naturel accru','Tous les niveaux vous gagnez une 2nd fois votre bonus naturel',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
30,'Chance','Réduisez la maladresse de 1%',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
31,'Homme à tout faire','+10 à toutes les compétences prise et vous n''avez pas le malus de -30',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
32,'Convocateur de masse','Vous êtes considérez comme ayant +1lv de plus pour invoquer des créatures en masse',1,1,1,'CONV');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
33,'Chevronné','Vous commençez la campagne avec 50 xp',1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
34,'Chevronné rang 2','Vous commençez la campagne avec 100 xp',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
35,'Chevronné rang 3','Vous commençez la campagne avec 150 xp',3,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
36,'Grande Vitalité','+10 pv par lv',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
37,'Grande Vitalité rang 2','+20 pv par lv',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
38,'Grande Vitalité rang 3','+30 pv par lv',3,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
39,'Don mystique','+10 RMyst et vous pouvez utilisez la magie',2,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
40,'Don incomplet','utilisation de la magie si vous réussissez un jet de pouvoir de 10+(1/10 du lv de magie du sort)',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
41,'Elan','Vous commençez avec 25 points d''élan avec une divinité',1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
42,'Elan rang 2','Vous commençez avec 45 points d''élan',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
43,'Elan rang 3','Vous commençez avec 60 points d''élan',3,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
44,'Charme','Les gens ont un appriorie positif sur vous',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
45,'Essence sheele','Lors d''une union avec une sheele, elle gagne 2 amélioration supplémentaire',1,1,1,'CONV');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
46,'Famillier','Vous commençez avec un famillier de votre niveau',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
47,'Famillier rang 2','Vous commençer avec un famillier qui a un level de plus que vous',3,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
48,'Biens de Départ','vous commençez avec 2000 PO',1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
49,'Biens de Départ rang 2','Vous commençez avec 5000 PO',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
50,'Biens de Départ rang 3','Vous commençez avec 10000PO',3,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
51,'Adroit','+30 Habileté manuelle et +3 aux jets de dextérité',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
52,'Infatigable','+3 points de fatigue',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
53,'Infatigable rang 2','+6 points de fatigue',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
54,'Infatigable rang 3','+ 9 points de fatigue',3,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
55,'Immunité à la douleur et à la Fatigue','Réduit de moitié les malus de fatigue et critique',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
56,'Immunité psychique','+60 à impassibilité pour controler ses émotions',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
57,'Immunité supernaturelle','Immuniser aux sorts avec 80 RMyst ou 60 zeon (ou moins bien sur)',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
58,'Immunité supernaturelle rang 2','Immuniser aux sorts avec 100 RMyst ou 90 zeon ',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
59,'Immunité supernaturelle rang 3','Immuniser aux sorts avec 120 RMyst ou 120 zeon',3,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
60,'Inquiétant','Vous pouvez à volonté rendre les gens nerveux autours de vous',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
61,'Dispense de gestes (Sceaux)','Vous ne baissez pas votre Acc.de Ki si vous ne faites pas les gestes',1,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
62,'Ki imperceptible','+10 à la dissimulation de ki par lv',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
63,'Libre arbitre','+60 à la Rmyst et RPsy contre la possession et la domination mentale',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
64,'Limite double','vous pouvez prendre une 2eme limite',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
65,'Maitre martial','+40 DI',1,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
66,'Maitre martial rang 2','+80 DI',2,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
67,'Maitre martial rang 3','+120 DI',3,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
68,'Perception du ki','+10 à la detection du Ki par lv',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
69,'Pouvoir inné','Calculer la réserve de Ki en faisant seulement pouvoir * 6',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
70,'Récupération de Ki','Récupérer 1 point de ki toutes les 10 min',1,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
71,'Récupération de Ki rang 2','Récupérer 1 point de Ki toutes les 5 min',2,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
72,'Récupération de Ki rang 3','Récupérer 1 point de Ki toutes les min',3,1,1,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
73,'Réflexes rapides','+25 à l''init',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
74,'Réflexes rapides rang 2','+45 à l''init',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
75,'Réflexes rapides rang 3','+60 à l''init',3,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
76,'Régénération accrue','+2 à la  regen',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
77,'Régénération accrue rang 2','+4 à la regen',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
78,'Régénation accrue rang 3','+ 6 à la regen',3,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
79,'Refaire un jet de caractéristique','Vous pouvez relançer une Caractéristique',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
80,'Résistance  Exceptionnelle Physique','+25 aux RPhy, RMal et RPoi',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
81,'Résistance Exceptionnelle Physique rang 2','+50 aux RPhy, RMal et RPoi',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
82,'Résistance Exceptionnelle Mystique','+25 à la RMys',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
83,'Résistance Exceptionnelle Mystique rang 2','+50 à la RMys',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
84,'Résistance Exceptionnelle Psychique','+25 à la RPsy',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
85,'Résistance Exeptionnelle Psychique rang 2','+50 à la RPsy',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
86,'Sang Ancien','Vous pouvez utilisez les loges perdues',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
87,'Séducteur','+60 persuasion et style pour séduire quelqu''un',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
88,'Sceaux magistraux','consideré comme ayant 2 level de plus pour l''invocation par sceaux',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
89,'Sens de l''attaque','+5 en ATT',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
90,'Sens de la defonce','+5 en PAR',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
91,'Sens de l''esquive','+5 en ESQ',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
92,'Sens du danger','pas de surprise sauf par une différence de 150',2,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
93,'Sens Aiguisé','+50 en Observation et Vigilance',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
94,'Sans limite de Familiers','NO LIMIT, attrapez les tous!',2,1,1,'CONV');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
95,'Someil léger','le malus à la vigilance quand vous dormez passe à -20',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
96,'+ 1 à une carachéristique','max 11 avec la surhumanité',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
97,'Survivant','Mort à pv = -CON*10 et +40 pour la RPhy pour stabiliser',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
98,'Monter une caractéristique à 9','Remplace la valeur d''une charachéristique par 9',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
99,'Taille inhabituelle','Ajuster votre taille de + ou - 5 points',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
100,'Techniques déliées','Vous pouvez apprendre vos techniques ki sans suivre les arbres',1,1,0,'KI');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
101,'Touché par le destin','Une fois par séance, vous pouvez relançer un dè',1,100,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
102,'Utilisation d''armure','+5 par lv en port d''armure',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
103,'Voir le surnaturel','Vous pouvez voir la magie, les matrices et les créatures spirituelles',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
104,'Polyvalent','Réduit de moitié le cout pour changer de classe , et ne pas attendre 2 lv pour changer',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
105,'Vision nocturne','Annule les malus dû au noir naturel et de moitié ceux lié à la magie',1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
106,'Déplacement Rapide','Vous gagnez +1 en mouvement',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
107,'Affinité d''utilisation','+5 au pouvoir pour le temps qu''il faut pour utiliser les pouvoirs d''objets magiques',1,1,1,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
108,'Utilsation d''armure rang 2','+10 par lv en port d''armure',2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
109,'Utilisation d''armure rang 3','+15 par lv en port d''armure',3,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
110,'Apprentissage Magique Graduel','+5 pour le niveaux de voie par lv ',2,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
111,'Grand potentiel magique','+3 à l''INT pour calculer la quantité maximale de zeon que l''on peut crammer',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
112,'Connaissance innée d''une voie','Vous connaissez une voie jusqu''au lv 40 avec tout ses sorts',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
113,'Prédilection Séphirothèque','+20 à l''amr et la RMys pour 5 voies et -20 avec les autres voies',2,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
114,'Prédilection Elémentaire','+20 à l''amr et la RMyst pour une voie et - 20 pour sa voie opposée',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
115,'Diction Magique','Pas de malus à l''amr pour lançer des sorts avec un parchemin ou un grimoire',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
116,'Sorcier Naturel','Augmenter de 2 votre rang d''apprentissage',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
117,'Dispense de paroles','Vous pouvez lançer des sorts sans paroles, sans malus',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
118,'Dispense de gestes','Vous pouvez lançer des sorts sans paroles, sans malus',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
119,'Magie innée améliorée','+10 à à la magie innée',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
120,'Magie innée améliorée rang 2','+20 à la magie innée',2,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
121,'Magie innée améliorée rang 3','+30 à la magie innée',3,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
122,'Magie opposée','toutes les voies de magies vous coutent auatant',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
123,'Nature magique','+50 zeon par lv',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
124,'Nature magique rang 2','+100 zeon par lv',2,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
125,'Nature magique rang 3','+150 zeon par lv',3,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
126,'Pouvoir naturel','utilisez le POU à la place de l''INT pour avoir le potentiel max des sorts',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
127,'Sorts renforcés','+50 lors des chocs de sorts',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
128,'Récupération de magie rapide','récupération de zeon par jour *2',1,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
129,'Récupération de magie rapide rang 2','récupération de zeon par jour *3',2,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
130,'Récupération de magie rapide rang 3','récupération de zeon par jour *4',3,1,1,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
131,'Versalité métamagique ','vous pouvez choisir 2 points de départ dans l''arcane Shephirah',1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
132,'Ambivalance Psychique','+5/pouvoir bonus lorsque vous lancer plusieurs pouvoirs psychique',1,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
133,'Viseur mental','1PPP libre donne +20 à la projection psychique',1,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
134,'Concentration intense','double le bonus de concentration',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
135,'Concentration passive','Vous pouvez vous concentrez pour un pouvoir et agir en même temps',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
136,'Préference psychique','dans une discipline choisie, le résultat est d''un niveau au dessus du jet obtenu',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
137,'Attache Psychique renforcée','Vous maintenez vos pouvoir 1 Niveau au dessus de la normale',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
138,'Modificateur psychique renforcée','Doublez le modificateur naturel de la discipline mentale',1,1,0,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
139,'Récupération rapide des PPP','Récupère 1 PPP toutes les 10 min',1,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
140,'Récupération rapide des PPP rang 2','Récupère 1 PPP toutes les 5 min',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
141,'Récupération rapide des PPP rang 3','Récupère 1 PPP toutes les min',3,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
142,'Résistance à la fatigue psychique','résiste à la fatigue dû au pouvoir de niveau 1 ou 2',2,1,1,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
143,'Saint','Vous étes un saint, l''inquisition ne vous poursuivra jamais',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
144,'Position sociale haute','Vous avez accès à la plus haute classe de prestige des principautés',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
145,'Réputation','+45 à la réputation',1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
146,'Réputation rang 2','+65 à la réputation',2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
147,'Contacts','Vous avez des contacts pour avoir des informations ou de l''aide',1,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
148,'Contacts rang 2','Vous avez des contacts pour avoir des informations ou de l''aide',2,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
149,'Contacts rang 3','Vous avez des contacts pour avoir des informations ou de l''aide',3,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
150,'Allié Puissant','Un ami puissant qui vous vient en aide autant qu''il le peut',1,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
151,'Allié Puissant rang 2','Un ami puissant qui vous vient en aide autant qu''il le peut',2,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
152,'Allié Puissant rang 3','Un ami puissant qui vous vient en aide autant qu''il le peut',3,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
153,'Racine culturelle','Accées aux bonus et à la raison sociale de sa principauté',1,1,1,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
154,'Position sociale','Accées aux classes de prestige des principautés',1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
155,'Paria','Le personnage est considéré comme un paria dans tous les cercles sociaux',-1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
156,'Dettes','Une dette soit de 10 000 PO soit 500 PO mensuel',-1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
157,'Code de Conduite','Le personnage suit un code de sonduite strict, lié à son pays d''origine',-1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
158,'Ennemi puissant','Vous étes hai et recherché par une faction ou un personnage puissant',-1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
159,'Ennemi très puissant','Vous étes hai et recherché par une faction ou un personnage trop puissant',-2,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
160,'Secret inavouable','Le personnage cache un puissant et terrible secret',-1,1,0,'PAST');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
161,'Apparence désagréable','-2 à l''apparence',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
162,'-2 à une caractéristique','-2 à une caractéristique',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
163,'Addiction ou vice grave','-10 chaque jour où le vice n''est pas satisfait',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
164,'Grave allergie','de -40 à -80 si contact avec la source de l''allergie',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
165,'Apprentissage lent','-4 xp par séance',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
166,'Apprentissage très long','-8 xp par séance',-2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
167,'Arme exclusive','-30 si vous manipulez une arme autre que la votre',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
168,'Aveugle','malus de cécité totale',-2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
169,'Couard','-60 quand danger (-20 si jet réussis d''impassibilité Très difficile)',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
170,'Faiblesse physique','RPhy/2',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
171,'Infortuné','Vous étes malchanceux',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
172,'Destin funeste','pas de jet ouverts',-2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
173,'Faible','Si les pv descende à 1/3 du total, alors -30 à toutes les actions',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
174,'Grave maladie','-10 tous les mois',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
175,'Epuisement','-1 point de fatigue, et double les malus de fatigue',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
176,'Membre atrophié','-80 pour les jets qui utilise le membre',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
177,'Possession facilité','-50 contre la RPsy et RPhy contre la domination et la possession',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
178,'Phobie sévère','-60 à toutes les actions devant la phobie',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
179,'Insupportable','Vous provoquez toujours une réaction négative',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
180,'Guérison lente','Récupère que la moitié des pv prévue',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
181,'Malchance','+2% à la maladresse',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
182,'Maudit','Vous avez une malédiction',-2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
183,'Myopie','-50% Vigilance et observation et -3 PER (vue)',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
184,'Muet','Vous ne pouvez pas parler',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
185,'Bleu','-100 xp, vous commençez niveau 0 avec 400 pf',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
186,'Maladroit','-30 habileté manuelle et -3 au jet de DEX',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
187,'Réaction lente','-30 à l''initiative',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
188,'Réaction très lente','-60 à l''initiative',-2,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
189,'Mauvaise santé','RMal/2',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
190,'Sans bonus naturel','aucun bonus naturel par lv',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
191,'Sourd','Vous n''entendez rien',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
192,'Sommeil profond','-200 à PER quand vous dormez, -40 pendant 10 round après réveil',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
193,'Vulnérabilité à la magie','RMis/2',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
194,'Vulnérabilité aux poisons','RPoi/2',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
195,'Vulnérabilité à la douleur','malus critique et malus douleur *2',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
196,'Vulnérabilité aux chaud/froid','-80 aux résistance (et -30 à vos actions si climats extremes)',-1,1,0,'ALL');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
197,'Sorcellerie','Besoin de Composants pour lancer des sorts',-2,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
198,'Exténuation Magique','-1 points de fatigue si 100 zeon dépensé, -2 si 200 dépensé, -3 si 300',-1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
199,'Lien existantiel','aucun sort d''accès libre',-1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
200,'Récupération lente','Récupération de zeon par jour/2',-1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
201,'Magie soumise à condition','Doit faire une action au niv Difficile',-1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
202,'Magie Etanche','Aucune récupération de zeon',-2,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
203,'Obligation de Paroles','Doit parler pour lancer un sort',-1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
204,'Obligation de Gestes','Doit bouger pour lancer un sort',-1,1,0,'MAG');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
205,'Consomation psychique','Si vous vous foirez, vous perdez (marge d''echec) de pv',-2,1,0,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
206,'Exténuation psychique','Vous perdez le double des points fatigue',-1,1,0,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
207,'Pouvoir unique','Vous ne pouvez faire qu''un pouvoir par round',-1,1,0,'PSY');
INSERT INTO [Dons] ([Id],[Nom],[effet],[cout],[nombre],[droit_daccees],[famille]) VALUES (
208,'Sans concentration','Vous ne pouvez pas vous concentrez, vous êtes un Kikoulol...',-1,1,0,'PSY');
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
1,15,1,2,2,2,2,5,2,20,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,2,1,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
2,20,2,2,3,2,2,5,2,20,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
3,15,3,2,2,2,2,5,2,20,2,60,3,3,3,3,1,20,3,5,30,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
4,15,4,2,2,2,2,5,2,20,2,60,3,3,1,3,3,20,3,5,30,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
5,10,5,2,2,2,1,5,3,30,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,1,1,1,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
6,20,6,2,2,2,2,5,1,10,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
7,20,7,2,2,2,2,5,2,15,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
8,20,8,2,2,2,2,5,2,25,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,3,3,3,1,1,1,1,3,3,2,3,2,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
9,20,9,2,3,2,2,5,2,20,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
10,20,10,2,3,2,3,5,2,25,3,70,3,3,3,3,3,20,3,5,35,1,1,1,1,1,1,3,3,3,2,2,2,3,1,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
11,20,11,2,3,2,3,5,2,25,3,70,3,3,3,3,3,20,3,5,35,2,2,2,2,2,2,2,3,3,1,1,1,3,3,3,3,3,3,2,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
12,20,12,3,3,2,3,5,3,30,1,50,2,2,2,2,2,20,3,5,25,2,2,2,2,2,2,3,3,3,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
13,20,13,2,2,2,2,5,2,25,1,50,2,2,2,2,2,20,3,5,25,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
14,20,14,3,3,2,3,5,2,25,1,60,2,3,3,3,3,20,3,5,30,2,2,2,2,2,2,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
15,20,15,3,3,2,3,5,3,30,1,50,2,2,2,2,2,10,2,5,25,2,2,2,2,2,2,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
16,20,16,3,3,2,3,5,3,30,1,60,3,1,1,1,1,20,3,5,30,2,2,2,2,2,2,3,3,3,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
17,20,17,2,2,2,2,5,2,20,1,60,3,1,1,1,1,20,3,5,30,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
18,20,18,3,3,2,3,5,3,30,3,70,3,3,3,3,3,10,2,5,35,2,2,2,2,2,2,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
19,20,19,2,2,2,2,5,2,25,3,70,3,3,3,3,3,15,2,5,35,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
20,20,20,2,2,2,2,5,2,20,2,60,2,2,2,2,2,20,2,5,30,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
21,15,21,2,2,2,2,5,2,20,2,60,3,3,3,3,1,20,3,5,30,2,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_cout] ([Id],[multi_pv],[id_classe],[attaque],[parade],[esquive],[port_darmure],[di],[ki],[accumulation_ki],[zeon],[multi_amr],[projection_magique],[convoquer],[dominer],[lier],[revoquer],[ppp],[projection_psychique],[voie_magique],[multi_zeon_regen],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
22,15,22,2,2,2,2,5,2,20,2,60,3,3,1,3,3,20,3,5,30,2,2,2,2,2,2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
1,1,15,5,25,0,0,5,5,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
2,2,10,10,25,0,0,5,0,5,0,0,0,0,0,0,0,10,10,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
3,3,15,5,20,0,0,0,5,0,10,0,0,0,10,20,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
4,4,15,5,20,0,0,5,0,0,5,0,10,0,0,20,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
5,5,20,5,10,0,0,5,5,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
6,6,5,5,50,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
7,7,10,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
8,8,10,5,20,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,5,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
9,9,5,10,25,0,0,5,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
10,10,5,10,20,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,5,10,5,0,0,0,0,5,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
11,11,5,10,20,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,10,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,10,0,10,10,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
12,12,5,5,10,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
13,13,10,5,20,0,0,5,5,5,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
14,14,5,5,20,0,0,0,0,0,0,0,0,0,0,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,10,0,5,10,5,0,0,0,0,0,10,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
15,15,5,5,10,1,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
16,16,5,5,10,0,0,0,0,0,0,10,10,10,10,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
17,17,10,5,20,0,0,5,5,5,0,5,5,5,5,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
18,18,5,5,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
19,19,10,5,20,1,0,5,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
20,20,5,5,20,42,0,0,0,0,0,0,0,0,0,10,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
21,21,15,5,20,0,0,0,5,0,10,0,0,0,0,0,0,0,0,0,0,0,0,10,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [classe_bonus] ([Id],[id_classe],[pv],[initiative],[di],[ppp],[charac],[attaque],[parade],[esquive],[port_darmure],[convoquer],[dominer],[lier],[revoquer],[zeon],[comp_nat_classe],[acrobatie],[athletisme],[equitation],[escalade],[natation],[saut],[impassibilite],[prouesse],[resistance],[observation],[pistage],[vigilance],[animaux],[estimation],[evaluation_magique],[herboristerie],[histoire],[medecine],[memorisation],[navigation],[occultisme],[science],[loi],[tactique],[commandement],[intimidation],[persuasion],[style],[commerce],[conn_rue],[etiquette],[camouflage],[crochetage],[deguisement],[discretion],[larcin],[pieges],[poison],[art],[danse],[forge],[habilete],[musique],[orfevrerie],[confection],[creation_mario],[runes],[alchimie],[animisme],[rituel_calligraphie]) VALUES (
22,22,15,5,20,0,0,5,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,10,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
1,'guerrier');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
2,'guerrier_acrobate');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
3,'paladin');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
4,'paladin_noir');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
5,'maitre_darme');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
6,'virtuose_martial');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
7,'tao');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
8,'explorateur');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
9,'ombre');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
10,'voleur');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
11,'assassin');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
12,'sorcier');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
13,'mage_de_bataille');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
14,'illusionniste');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
15,'sorcier_mentaliste');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
16,'convocateur');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
17,'guerrier_convocateur');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
18,'mentaliste');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
19,'guerrier_mentaliste');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
20,'touche_a_tout');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
21,'paladin_var');
INSERT INTO [Classe] ([Id],[Nom]) VALUES (
22,'paladin_noir_var');
COMMIT;

