-- Script Date: 01/02/2018 13:50  - ErikEJ.SqlCeScripting version 3.5.2.74
-- Database information:
-- Database: C:\Users\DL5\Downloads\Anima MJ\Anima_joueur.db
-- ServerVersion: 3.18.0
-- DatabaseSize: 140 KB
-- Created: 31/01/2018 08:52

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
, [id_joueur] int NOT NULL
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
, [id_classe] int NOT NULL
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
, [pv] bigint  NOT NULL
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
CREATE TABLE [Classeb] (
  [Id] INTEGER  NOT NULL
, [Nom] text NOT NULL
, CONSTRAINT [sqlite_master_PK_Classe] PRIMARY KEY ([Id])
);
CREATE TABLE [Art_martiauxb] (
  [Id] INTEGER  NOT NULL
, [Nom] text NOT NULL
, CONSTRAINT [sqlite_master_PK_Art_martiaux] PRIMARY KEY ([Id])
);
COMMIT;

