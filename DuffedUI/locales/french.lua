local D, C, L = unpack(select(2, ...))

if D.client == "frFR" then
	L["move"] = {
		["tooltip"] = "Move Tooltip",
		["minimap"] = "Move Minimap",
		["watchframe"] = "Move Quests",
		["gmframe"] = "Move Ticket",
		["buffs"] = "Move Player Buffs",
		["debuffs"] = "Move Player Debuffs",
		["shapeshift"] = "Move Shapeshift/Totem",
		["achievements"] = "Move Achievements",
		["roll"] = "Move Loot Roll Frame",
		["vehicle"] = "Move Vehicle Seat",
		["extrabutton"] = "Extra Button",
		["bar1"] = "Move Bar 1",
		["bar2"] = "Move Bar 2",
		["bar5"] = "Move Bar5",
		["bar5_1"] = "Move\nBar5",
		["pet"] = "Move\nPet",
		["player"] = "Move Playercastbar",
		["target"] = "Move Targetcastbar",
		["classbar"] = "Move Classbar",
		["raid"] = "Move RaidUtility",
		["rcd"] = "Move RaidCD",
		["spell"] = "Move SpellCooldowns",
	}

	L["afk"] = {
		["text4"] = "Mouseover minimap shows coords and locations",
		["text4"] = "Middle click the minimap for micromenu",
		["text4"] = "Right click the minimap for gatheringmenu",
		["text4"] = "By right-clicking on a quest or achievment at the objective tracker, you can retrieve the wowhead link.",
	}

	L["symbol"] = {
		["clear"] = "Clear",
		["skull"] = "Skull",
		["cross"] = "Cross",
		["square"] = "Square",
		["moon"] = "Moon",
		["triangle"] = "Triangle",
		["diamond"] = "Diamond",
		["circle"] = "Circle",
		["star"] = "Star",
	}

	L.UI_Outdated = "Une version plus récente de DuffedUI est disponible. Vous pouvez télécharger la dernière version sur www.duffed.net"
	L.UI_Talent_Change_Bug = "A blizzard bug has occured which is preventing you from changing your talents, this happen when you've inspected someone. Unfortunatly there is nothing we can do in this WoW Patch to fix it, please reload your ui and try again."
	L.welcome_1 = "Hello |cffc41f3b".. D.myname.."!|r".."\n".."Thank you for using |cffc41f3bDuffedUI "..D.version.."|r. For detailed Information visit |cffc41f3bhttp://www.duffed.net|r."
	
	-- Bufftracker
	L.bufftracker_10ap = "+10% Attack Power"
	L.bufftracker_10as = "+10% Melee & Ranged Attack Speed"
	L.bufftracker_10sp = "+10% Spell Power"
	L.bufftracker_5sh = "+5% Spell Haste"
	L.bufftracker_5csc = "+5% Critical Strike Chance"
	L.bufftracker_3kmr = "+3000 Mastery Rating"
	L.bufftracker_5sai = "+5% Strength, Agility, Intellect"
	L.bufftracker_10s = "+10% Stamina"
	L.bufftracker_error = "ERROR"

	-- Click2Cast
	L.click2cast_title = "Mouse Bindings"
	
	-- worldboss
	L.worldboss_title = "World Boss(s):"
	L.worldboss_galleon = "Galleon"
	L.worldboss_sha = "Sha of Anger"
	L.worldboss_oondasta = "Oondasta"
	L.worldboss_nalak = "Nalak"
	L.worldboss_celestials = "Celestials"
	L.worldboss_ordos = "Ordos"
	L.worldboss_defeated = "Defeated"
	L.worldboss_undefeated = "Undefeated"
	
	-- specswitcher buttons
	L.sesbutton_reload = "Reloads the entire UI"
	L.sesbutton_heal = "Switch to heal-layout"
	L.sesbutton_dps = "Switch to dps-layout"
	L.sesbutton_am = "Open Addonmanager"
	L.sesbutton_move = "Move the frames"
	L.sesbutton_kb = "Set your keybindings"

	-- chat
	L.chat_INSTANCE_CHAT = "I"
	L.chat_INSTANCE_CHAT_LEADER = "IL"
	L.chat_BN_WHISPER_GET = "De"
	L.chat_GUILD_GET = "G"
	L.chat_OFFICER_GET = "O"
	L.chat_PARTY_GET = "G"
	L.chat_PARTY_GUIDE_GET = "G"
	L.chat_PARTY_LEADER_GET = "G"
	L.chat_RAID_GET = "R"
	L.chat_RAID_LEADER_GET = "R"
	L.chat_RAID_WARNING_GET = "W"
	L.chat_WHISPER_GET = "De"
	L.chat_FLAG_AFK = "[ABS]"
	L.chat_FLAG_DND = "[NPD]"
	L.chat_FLAG_GM = "[MJ]"
	L.chat_ERR_FRIEND_ONLINE_SS = "s'est |cff298F00connecté|r"
	L.chat_ERR_FRIEND_OFFLINE_S = "s'est |cffff0000déconnecté|r"
	L.chat_PET_BATTLE_COMBAT_LOG = "Pet Battle"
	
	L.chat_general = "Général"
	L.chat_trade = "Commerce"
	L.chat_defense = "DéfenseLocale"
	L.chat_recrutment = "RecrutementDeGuilde"
	L.chat_lfg = "RechercheDeGroupe"

	L.disband = "Dissoudre le groupe ?"

	L.datatext_notalents ="Aucun talents"
	L.datatext_download = "Téléchargement : "
	L.datatext_bandwidth = "Bande passante : "
	L.datatext_inc = "Incoming"
	L.datatext_out = "Outgoing"
	L.datatext_home = "Home Latency:"
	L.datatext_world = "World Latency:"
	L.datatext_global = "Global Latency:"
	L.datatext_guild = "Guilde"
	L.datatext_noguild = "Pas de Guilde"
	L.datatext_bags = "Sacs : "
	L.datatext_friends = "Amis"
	L.datatext_online = "En ligne : "
	L.datatext_armor = "Armure"
	L.datatext_earned = "Gagné : "
	L.datatext_spent = "Dépensé : "
	L.datatext_deficit = "Déficit : "
	L.datatext_profit = "Profit : "
	L.datatext_timeto = "Temps restant"
	L.datatext_friendlist = "Liste d'amis : "
	L.datatext_playersp = "sp"
	L.datatext_playerap = "ap"
	L.datatext_playerhaste = "hâte"
	L.datatext_dps = "dps"
	L.datatext_hps = "hps"
	L.datatext_playerarp = "arp"
	L.datatext_session = "Session : "
	L.datatext_character = "Personnage : "
	L.datatext_server = "Serveur : "
	L.datatext_totalgold = "Total : "
	L.gametooltip_gold_a = "Archaeology: "
	L.gametooltip_gold_c = "Cooking: "
	L.gametooltip_gold_jc = "Jewelcrafting: "
	L.gametooltip_gold_dr = "Dungeon & Raids: "
	L.currencyWeekly = "Hebdomadaire: "
	L.datatext_savedraid = "Raid(s) enregistré(s)"
	L.datatext_currency = "Monnaie : "
	L.datatext_fps = " fps & "
	L.datatext_ms = " ms"
	L.datatext_playercrit = " crit"
	L.datatext_playerheal = " heal"
	L.datatext_avoidancebreakdown = "Évitement"
	L.datatext_lvl = "lvl"
	L.datatext_boss = "boss"
	L.datatext_miss = "Coup raté"
	L.datatext_dodge = "Esquive"
	L.datatext_block = "Bloquer"
	L.datatext_parry = "Parade"
	L.datatext_playeravd = "avd : "
	L.datatext_servertime = "Heure Serveur : "
	L.datatext_localtime = "Heure Locale : "
	L.datatext_mitigation = "Mitigation par Level : "
	L.datatext_healing = "Soins : "
	L.datatext_damage = "Dégâts : "
	L.datatext_honor = "Honneur : "
	L.datatext_killingblows = "Coups fatals : "
	L.datatext_ttstatsfor = "Statistiques pour "
	L.datatext_ttkillingblows = "Coups fatals : "
	L.datatext_tthonorkills = "Victoires honorables : "
	L.datatext_ttdeaths = "Morts : "
	L.datatext_tthonorgain = "Points d'honneur gagnés : "
	L.datatext_ttdmgdone = "Dégâts effectués : "
	L.datatext_tthealdone = "Soins prodigués : "
	L.datatext_basesassaulted = "Bases Attaquées : "
	L.datatext_basesdefended = "Bases Défendues : "
	L.datatext_towersassaulted = "Tours Attaquées : "
	L.datatext_towersdefended = "Tours Défendues : "
	L.datatext_flagscaptured = "Drapeaux Capturés : "
	L.datatext_flagsreturned = "Drapeaux Récupérés : "
	L.datatext_graveyardsassaulted = "Cimetières Attaqués : "
	L.datatext_graveyardsdefended = "Cimetières Défendus : "
	L.datatext_demolishersdestroyed = "Démolisseurs Détruits : "
	L.datatext_gatesdestroyed = "Portes Détruites : "
	L.datatext_totalmemusage = "Utilisation Totale de la Mémoire : "
	L.datatext_control = "Controlé par : "
	L.datatext_cta_allunavailable = "Impossible de récupérer les informations d'appel aux armes."
	L.datatext_cta_nodungeons = "Aucun donjon offre actuellement d'appel aux armes."
	L.datatext_carts_controlled = "Chariots contrôlée:"
	L.datatext_victory_points = "Points de Victoire:"
	L.datatext_orb_possessions = "Orbes en possession:"

	L.Slots = {
	  [1] = {1, "Tête", 1000},
	  [2] = {3, "Épaule", 1000},
	  [3] = {5, "Plastron", 1000},
	  [4] = {6, "Ceinture", 1000},
	  [5] = {9, "Poignets", 1000},
	  [6] = {10, "Mains", 1000},
	  [7] = {7, "Jambes", 1000},
	  [8] = {8, "Bottes", 1000},
	  [9] = {16, "Main droite", 1000},
	  [10] = {17, "Main gauche", 1000},
	  [11] = {18, "À Distance", 1000}
	}

	L.popup_disableui = "DuffedUI ne fonctionne pas avec cette résolution, voulez-vous désactiver DuffedUI? (Annuler si vous souhaitez essayer une autre résolution)"
	L.popup_install = "Première fois sur DuffedUI V13 avec ce personnage. Vous devez recharger l'interface utilisateur afin de configurer les barres d'action, les variables et les cadres de Chat."
	L.popup_2raidactive = "2 modèles de raid sont activés, merci d'en choisir un."
	L.popup_reset = "Attention ! Vous allez charger les paramètres par défaut de DuffedUI. Voulez-vous poursuivre ?"
	L.popup_install_yes = "Ouais! (recommandé!)"
	L.popup_install_no = "Non, ça craint trop!"
	L.popup_reset_yes = "Ouais!"
	L.popup_reset_no = "Non!"
	L.popup_fix_ab = "Quelque chose ne va pas avec vos barres d'action. Voulez-vous recharger l'interface pour les réparer?"

	L.merchant_repairnomoney = "Vous n'avez pas assez d'argent pour réparer !"
	L.merchant_repaircost = "Tous les objets ont été réparés pour"
	L.merchant_trashsell = "Les objets gris ont été vendus et vous avez gagné"
	

	L.goldabbrev = "|cffffd700o|r"
	L.silverabbrev = "|cffc7c7cfa|r"
	L.copperabbrev = "|cffeda55fc|r"

	L.error_noerror = "pas d'erreur pour le moment."

	L.unitframes_ouf_offline = "Hors ligne"
	L.unitframes_ouf_dead = "Mort"
	L.unitframes_ouf_ghost = "Fantome"
	L.unitframes_ouf_lowmana = "MANA FAIBLE"
	L.unitframes_ouf_threattext = "Menace sur la cible actuelle: "
	L.unitframes_ouf_threattext2 = "Threat"
	L.unitframes_ouf_offlinedps = "Hors ligne"
	L.unitframes_ouf_deaddps = "|cffff0000[MORT]|r"
	L.unitframes_ouf_ghostheal = "FANTOME"
	L.unitframes_ouf_deadheal = "MORT"
	L.unitframes_ouf_gohawk = "GO FAUCON"
	L.unitframes_ouf_goviper = "GO VIPÈRE"
	L.unitframes_disconnected = "Déco"
	L.unitframes_ouf_wrathspell = "Colère"
	L.unitframes_ouf_starfirespell = "Feu stellaire"

	L.tooltip_count = "Total"

	L.bags_noslots = "Vous ne pouvez pas acheter plus de place !"
	L.bags_costs = "Prix : %.2f or"
	L.bags_buyslots = "Achetez un nouvel emplacement avec /bags"
	L.bags_openbank = "Vous devez d'abord ouvrir votre banque."
	L.bags_sort = "Trier vos sacs, ou votre banque si elle est ouverte."
	L.bags_stack = "Empiler vos objets dans votre sac, ou en banque si elle est ouverte."
	L.bags_buybankslot = "Acheter une place à la banque. (nécessite d'avoir votre banque ouverte)"
	L.bags_search = "Recherche"
	L.bags_sortmenu = "Trier"
	L.bags_sortspecial = "Tri personnalisé"
	L.bags_stackmenu = "Empiler"
	L.bags_stackspecial = "Empilage personnalisé"
	L.bags_showbags = "Montrer les sacs"
	L.bags_sortingbags = "Tri terminé."
	L.bags_nothingsort= "Rien à trier."
	L.bags_bids = "Emplacements utilisés : "
	L.bags_stackend = "Empilage terminé."
	L.bags_rightclick_search = "Clic-droit pour rechercher."
	
	L.loot_fish = "Poisson!"
	L.loot_empty = "Emplacement vide"
	L.loot_randomplayer = "Random Player"
	L.loot_self = "Self Loot"

	L.chat_invalidtarget = "Cible non valide"

	L.mount_wintergrasp = "Joug-d'hiver"

	L.core_autoinv_enable = "Invitation automatique : invite"
	L.core_autoinv_enable_c = "Invitation automatique activée "
	L.core_autoinv_disable = "Invitation automatique désactivée"
	L.core_wf_unlock = "Fenêtre de suivi des quêtes déverrouillée"
	L.core_wf_lock = "Fenêtre de suivi des quêtes verrouillée"
	L.core_welcome1 = "Bienvenue sur |cffC495DDDuffedUI|r, version "
	L.core_welcome2 = "Tapez |cff00FFFF/uihelp|r pour plus de détails ou visitez www.duffed.net"

	L.core_uihelp1 = "|cff00ff00Commandes générales|r"
	L.core_uihelp2 = "|cffFF0000/moveui|r - Débloque et bouge les éléments affichés à l'écran."
	L.core_uihelp3 = "|cffFF0000/rl|r - Recharge votre interface utilisateur."
	L.core_uihelp4 = "|cffFF0000/gm|r - Envoi un ticket ou consulte l'aide en jeu."
	L.core_uihelp5 = "|cffFF0000/frame|r - Detecte l'élément de l'interface désigné par le pointeur de la souris. (Vraiment pratique pour éditer un fichier .lua)"
	L.core_uihelp6 = "|cffFF0000/heal|r - Active le schéma de raid soigneur."
	L.core_uihelp7 = "|cffFF0000/dps|r - Active le schéma de raid dps/tank."
	L.core_uihelp8 = "|cffFF0000/bags|r - Pour trier, acheter un emplacement à la banque ou empiler les objets dans vos sacs."
	L.core_uihelp9 = "|cffFF0000/reset|r - Relance DuffedUI par défaut."
	L.core_uihelp10 = "|cffFF0000/rd|r - Dissout le raid."
	L.core_uihelp11 = "|cffFF0000/ainv|r - Active l'auto-invitation via mot clef par message privé. Vous pouvez définir votre mot clef en saisissant la commande `/ainv votremot`"
	L.core_uihelp100 = "(Faites défiler le texte vers le haut pour plus de commandes...)"
	
	L.bind_combat = "Vous ne pouvez pas assigner une touche en combat."
	L.bind_saved = "Vos assignations de touches ont été sauvegardées."
	L.bind_discard = "Vos nouvelles assignations de touches n'ont pas été sauvegardées."
	L.bind_instruct = "Passez votre souris sur la barre d'action pour assigner une touche. Appuyez sur la touche ECHAP ou faites un clic droit pour effacer le bouton d'action en cours."
	L.bind_save = "Sauvegarder les assignations."
	L.bind_discardbind = "Annuler les assignations."
	
	L.hunter_unhappy = "Votre familier n'est pas heureux !"
	L.hunter_content = "Votre familier est heureux !"
	L.hunter_happy = "Votre familier est très heureux !"

	-- tuto/install
	L.install_header_1 = "Bienvenue"
	L.install_header_2 = "1. Principal"
	L.install_header_3 = "2. Unitframes"
	L.install_header_4 = "3. Caractéristiques"
	L.install_header_5 = "4. Ce que vous devez savoir !"
	L.install_header_6 = "5. Commandes"
	L.install_header_7 = "6. Terminé"
	L.install_header_8 = "1. Options Principales"
	L.install_header_9 = "2. Social"
	L.install_header_10= "3. Cadres"
	L.install_header_11= "4. Succès !"

	L.install_init_line_1 = "Merci d'avoir choisi DuffedUI !"
	L.install_init_line_2 = "Vous serez guidé au travers du processus d'installation par quelques étapes simples. A chaque étape, vous pouvez décider d'appliquer ou non les paramètres présentés."
	L.install_init_line_3 = "Vous avez également la possibilité de voir un bref tutoriel sur les différentes caractéristiques de DuffedUI."
	L.install_init_line_4 = "Appuyez sur le bouton 'Tutoriel' pour être guidé au travers de cette petite introduction, ou appuyez sur 'Installation' pour passer cette étape."

	L.tutorial_step_1_line_1 = "Ce bref tutoriel vous montrera quelques caractéristiques de DuffedUI."
	L.tutorial_step_1_line_2 = "Tout d'abord, l'essentiel de ce que vous devez savoir avant de pouvoir jouer avec cette interface."
	L.tutorial_step_1_line_3 = "Cette installation est partiellement spécifique par personnage. Bien que certains paramètres qui seront appliqués plus tard sont pour tout votre compte, vous devez lancer le script d'installation pour chaque nouveau personnage utilisant DuffedUI. Le script est montré automatiquement au chargement de chaque nouveau personnage la première fois. En outre, les options peuvent être trouvées dans /DuffedUI/config/config.lua pour les utilisateurs confirmés ou en tapant /duffedui en jeu pour les autres."
	L.tutorial_step_1_line_4 = "Un utilisateur confirmé est un utilisateur d'ordinateur qui est capable d'utiliser des fonctions avancées (ex: édition Lua ) lesquelles ne sont pas à portée d'un utilisateur normal. Un utilisateur de base est un utilisateur normal et qui n'est forcément capable de programmer. Il leur est recommandé d'utiliser l'outil de configuration en jeu (/duffedui) pour paramétrer ce qu'ils veulent afficher sur DuffedUI."

	L.tutorial_step_2_line_1 = "DuffedUI comprend une version embarquée de oUF créé par Trond (Haste) A Ekseth. Ceci manipule beaucoup de Unitframe sur l'écran, les buffs et debuffs, et les éléments spécifiques à une classe."
	L.tutorial_step_2_line_2 = "Vous pouvez vous rendre sur wowinterface.com et cherchez après oUF pour plus d'information sur cet outil."
	L.tutorial_step_2_line_3 = "Si vous jouez comme soigneur ou leader de raid, vous pouvez activer l'interface de soigneur. Elle affiche beaucoup plus d'informations sur le raid. (/heal) Un dps ou tank utilisera l'affichage simple du raid. (/dps) Si vous ne voulez afficher aucun d'eux et utiliser un autre addon, vous pouvez les désactiver via le gestionnaire d'addon au chargement des personnages."
	L.tutorial_step_2_line_4 = "Vous avez juste à taper /moveui pour bouger les Unitframes facilement."

	L.tutorial_step_3_line_1 = "DuffedUI est une interface refaite de Blizzard. Ni plus, ni moins. A peu près toutes les caractéristiques que vous pouvez voir sur l'interface de base sont disponibles par DuffedUI. Les seules caractéristiques non disponible sur l'interface par défaut sont quelques caractéristiques automatiques non réellement visibles à l'écran, par exemple vente auto des objets gris chez un marchand ou trier les objets dans les sacs."
	L.tutorial_step_3_line_2 = "Parce que tout le monde n'apprécie pas des addons comme les DPS meters, Boss mods, gestion des menaces, etc, nous jugeons que c'est la meilleure chose à faire. DuffedUI est réalisé dans l'idée de s'adapter au maximum de classes, rôles, spécialisation, type de jeu, goûts des joueurs, etc. C'est pourquoi DuffedUI est l'une des interfaces les plus populaires du moment. Cela convient à tout style de jeu et est éditable à souhait. C'est aussi présenté afin d'être un bon départ pour celui qui veut faire sa propre interface personnalisée sans dépendre d'autres addons. Des tonnes d'utilisateurs depuis 2009 utilisent désormais DuffedUI comme une base pour leur propre interface. Allez faire un tour dans notre section 'Edited Packages' sur notre site !"
	L.tutorial_step_3_line_3 = "Les utilisateurs peuvent visiter notre section 'extra mods' sur notre site ou visiter WoWInterface."
	L.tutorial_step_3_line_4 = ""

	L.tutorial_step_4_line_1 = "Pour définir le nombre de barres que vous voulez, placez votre souris sur la gauche, droite ou le dessous du cadre de fond de la barre d'action. Faites la même chose sur la droite de l'écran, en haut ou en bas du cadre. Pour copier le texte de la fenêtre de dialogue, cliquez sur le bouton vu en passant la souris sur le coin droit de la fenêtre de discussion."
	L.tutorial_step_4_line_2 = "Les bords de la mini carte changent de couleur. C'est vert lorsque vous avez du courrier, rouge lorsque vous avez une nouvelle invitation calendrier, orange lorsque ce sont les deux."
	L.tutorial_step_4_line_3 = "Vous pouvez faire un clic gauche sur 80% des données textes pour afficher divers panneaux de Blizzard. Les données textes Amis et Guilde ont des caractéristiques via clic droit aussi."
	L.tutorial_step_4_line_4 = "Il y a quelques menus contextuels disponibles. Clic droit sur [X] (Fermer) de la fenêtre des sacs vous montrera un menu qui permet de montrer les sacs, les trier, montrer les clés, etc. Clic du milieu sur la mini carte permet d'afficher le micro menu."

	L.tutorial_step_5_line_1 = "Enfin, DuffedUI comprend des commandes utiles. Voici la liste ci-dessous."
	L.tutorial_step_5_line_2 = "/moveui vous permet de bouger beaucoup de cadres n'importe où à l'écran. /enable et /disable sont utilisés pour (dés)activer des addons. /rl recharge l'interface. /heal active l'interface de raid pour soigneur et /dps active l'interface raid pour dps/tank."
	L.tutorial_step_5_line_3 = "/tt vous permet du chuchoter à votre cible. /rc permet de demander si tout le monde est prêt. /rd dissoud un groupe ou raid. /bags affiche quelques options disponibles par ligne de commande. /ainv active l'auto-invitation en vous chuchotant. (/ainv off) pour le désactiver"
	L.tutorial_step_5_line_4 = "/gm affiche la fenêtre d'aide. Les commandes /install, /reset ou /tutorial lancent cette installation. /frame affiche le nom et parent du cadre sous le curseur avec des informations supplémentaires."

	L.tutorial_step_6_line_1 = "Le tutoriel est terminé. Vous pouvez le reconsulter à tout moment en tapant /tutorial."
	L.tutorial_step_6_line_2 = "Je vous suggère de regarder le fichier /config/config.lua ou en tapant /duffedui pour customiser l'interface selon vos besoins."
	L.tutorial_step_6_line_3 = "Vous pouvez maintenant continuer l'installation de l'interface si ce n'est pas encore fait ou si vous voulez remettre le tout par défaut !"
	L.tutorial_step_6_line_4 = ""

	L.install_step_1_line_1 = "Ces étapes appliqueront les paramètres CVar corrects pour DuffedUI."
	L.install_step_1_line_2 = "La première étape applique les paramètres essentiels."
	L.install_step_1_line_3 = "C'est |cffff0000recommandé|r pour tout utilisateur, à moins que vous ne vouliez appliquer qu'une partie spécifique des paramètres."
	L.install_step_1_line_4 = "Cliquez sur 'Continuer' pour appliquer les paramètres, ou cliquez sur 'Passer' si vous voulez passer cette étape."

	L.install_step_2_line_0 = "Un autre addon de discussion a été trouvé. Nous allons ignorer cette étape. Appuyez sur 'Passer' pour continuer l'installation."
	L.install_step_2_line_1 = "La seconde étape applique les paramètres corrects des fenêtres de discussion."
	L.install_step_2_line_2 = "Si vous êtes un nouvel utilisateur, cette étape est recommandée. Si vous êtes un utilisateur habitué, vous pouvez passer cette étape."
	L.install_step_2_line_3 = "Il est normal que la police de discussion apparaisse trop grande lors de l'application de ces paramètres. Cela redeviendra normal une fois l'installation terminée."
	L.install_step_2_line_4 = "Cliquez sur 'Continuer' pour appliquer les paramètres, ou cliquez sur 'Passer' si vous voulez passer cette étape."

	L.install_step_3_line_1 = "La troisième et dernière étape applique le positionnement des cadres par défaut."
	L.install_step_3_line_2 = "Cette étape est |cffff0000recommandée|r pour tout nouvel utilisateur."
	L.install_step_3_line_3 = ""
	L.install_step_3_line_4 = "Cliquez sur 'Continuer' pour appliquer les paramètres, ou cliquez sur 'Passer' si vous voulez passer cette étape."

	L.install_step_4_line_1 = "Installation terminée."
	L.install_step_4_line_2 = "Appuyez sur le bouton 'Terminer' pour recharger l'interface."
	L.install_step_4_line_3 = ""
	L.install_step_4_line_4 = "Bon Jeu avec DuffedUI ! Et venez visiter http://www.duffed.net pour les MàJ et les informations sur votre interface DuffedUI !"

	L.install_button_tutorial = "Tutoriel"
	L.install_button_install = "Installation"
	L.install_button_next = "Suivant"
	L.install_button_skip = "Passer"
	L.install_button_continue = "Continuer"
	L.install_button_finish = "Terminer"
	L.install_button_close = "Fermer"
end
