-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 30 août 2023 à 09:31
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lepoint_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id_actu` int(20) NOT NULL,
  `photo_name_actu` varchar(255) NOT NULL,
  `photo_url_actu` varchar(255) NOT NULL,
  `entete_actu` varchar(255) NOT NULL,
  `source_actu` int(20) NOT NULL,
  `texte_actu` text NOT NULL,
  `nombre_like_actu` int(11) NOT NULL DEFAULT 0,
  `nombre_dislike_actu` int(11) NOT NULL DEFAULT 0,
  `type_actu` int(20) NOT NULL,
  `date_actu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id_actu`, `photo_name_actu`, `photo_url_actu`, `entete_actu`, `source_actu`, `texte_actu`, `nombre_like_actu`, `nombre_dislike_actu`, `type_actu`, `date_actu`) VALUES
(2, '24484710lpw-24484951-sommaire-jpg_9506269_200x133.jpg', 'photos/24484710lpw-24484951-sommaire-jpg_9506269_200x133.jpg', '&laquo; Louis XVI, on t&rsquo;a d&eacute;capit&eacute;, Macron, on peut recommencer &raquo; : un &eacute;lu LFI cr&eacute;e un toll&eacute;', 2, 'Christophe Prudhomme, conseiller r&eacute;gional LFI francilien a assur&eacute;, lundi 8 mai, que ce n&rsquo;&eacute;tait pas Emmanuel Macron qui &eacute;tait attaqu&eacute; mais &laquo; la fonction &raquo;.  2', 0, 0, 1, '2023-05-08 19:28:22'),
(3, '24485368lpw-24485510-mega-une-jpg_9506467_320x139.jpg', 'photos/24485368lpw-24485510-mega-une-jpg_9506467_320x139.jpg', '&laquo; Bardot &raquo; : que vaut la s&eacute;rie sur BB ?', 2, 't Brigitte Bardot cr&eacute;a la flamme. Celle qui attira puis br&ucirc;la les hommes qui l\'ont aim&eacute;e. Celle qui r&eacute;veilla et lib&eacute;ra les femmes qui l\'ont adul&eacute;e puis jalous&eacute;e. Celle qui inspira les cin&eacute;astes qui l\'ont film&eacute;e et qui ont contribu&eacute; &agrave; cr&eacute;er le mythe BB. C\'est &agrave; la naissance de cette l&eacute;gende que France 2 nous propose d\'assister avec cette coproduction internationale, consacr&eacute;e &agrave; la jeunesse de l\'actrice, depuis son adolescence au sein d\'une famille bourgeoise dans la France de l\'apr&egrave;s-guerre, jusqu\'&agrave; ses 26 ans et sa tentative de suicide dans sa maison de la Madrague, &agrave; Saint-Tropez.', 0, 0, 3, '2023-05-08 19:41:14'),
(4, 'Photo-sommet.jpg', 'photos/Photo-sommet.jpg', '11e sommet du m&eacute;canisme r&eacute;gional de suivi de l&rsquo;accord-cadre : Dix ans apr&egrave;s, la crise s&eacute;curitaire en RDC persiste', 2, 'POLITIQUE\r\n11e sommet du m&eacute;canisme r&eacute;gional de suivi de l&rsquo;accord-cadre : Dix ans apr&egrave;s, la crise s&eacute;curitaire en RDC persiste\r\n 08/05/2023  Egide Harerimana  0\r\n11e sommet du m&eacute;canisme r&eacute;gional de suivi de l&rsquo;accord-cadre : Dix ans apr&egrave;s, la crise s&eacute;curitaire en RDC persiste\r\nLes chefs d&rsquo;Etat et de gouvernement signataires de l&rsquo;Accord-cadre ont appel&eacute; &agrave; la d&eacute;sescalade entre le Rwanda et la RDC\r\nAu cours du 11e sommet de m&eacute;canisme r&eacute;gional de suivi de l&rsquo;accord-cadre pour la paix, la s&eacute;curit&eacute; et la coop&eacute;ration pour la RDC et la r&eacute;gion qui s&rsquo;est tenu &agrave; Bujumbura, samedi 6 mai, le pr&eacute;sident congolais F&eacute;lix Tshisekedi a de nouveau accus&eacute; le Rwanda de soutenir le M23. Des dirigeants r&eacute;gionaux et internationaux ont appel&eacute; &agrave; la cessation des combats &agrave; l&rsquo;Est de la RDC et &agrave; la d&eacute;sescalade entre le Rwanda et la RDC.', 0, 0, 2, '2023-05-08 19:50:18'),
(7, 'profil.jpg', 'photos/profil.jpg', 'dkkkmmkdvmkmvkmkvmkvmkv', 2, 'sdrd88888888888888888ghfccccccvvvvvvvvvvvvvvvvvvvvvvvvvvvc', 0, 0, 5, '2023-05-21 17:53:16'),
(13, 'Neva-et-Kagame.jpg', 'photos/Neva-et-Kagame.jpg', 'Bilan diplomatico-&eacute;conomique du pr&eacute;sident Ndayishimiye : Une politique d&rsquo;ouverture au c&oelig;ur d&rsquo;une &eacute;conomie d&eacute;labr&eacute;e', 2, 'Nomination &agrave; la t&ecirc;te de l&rsquo;EAC, reprise effective des liens avec le Rwanda, visite du ministre russe des Affaires &eacute;trang&egrave;res, &hellip;, le chef de l&rsquo;Etat burundais a marqu&eacute; beaucoup de points sur la sc&egrave;ne internationale depuis trois ans qu&rsquo;il exerce le pouvoir (18 juin 2020). Cependant, un sp&eacute;cialiste en relations internationales souligne que cette diplomatie d&rsquo;ouverture doit s&rsquo;accompagner d&rsquo;une rel&egrave;ve de la machine socio-&eacute;conomique.\r\n\r\n22 juillet 2022. La marche n&rsquo;&eacute;tait pas tant si haute que cela. Apr&egrave;s le d&eacute;but de sa politique d&rsquo;ouverture sur le monde ext&eacute;rieur, de nombreux observateurs politiques avis&eacute;s se demandaient s&rsquo;il n&rsquo;allait pas d&eacute;cliner le poste, &agrave; l&rsquo;instar de son pr&eacute;d&eacute;cesseur, feu Pierre Nkurunziza.\r\n\r\nMalgr&eacute; quelques absences lors des sommets pr&eacute;liminaires, o&ugrave; il d&eacute;l&eacute;guait son vice-pr&eacute;sident, le chef de l&rsquo;Etat burundais a tenu parole. &laquo; Compte tenu de la nouvelle configuration g&eacute;opolitique actuelle de cette partie orientale de l&rsquo;Afrique, et de ce besoin de faire revenir le Burundi sur le devant de la sc&egrave;ne politique internationale. Une occasion qu&rsquo;il ne se serait autoris&eacute; de passer &agrave; c&ocirc;t&eacute; &raquo;, a laiss&eacute; entendre un cadre travaillant au ministre de l&rsquo;EAC.\r\n\r\nDans son discours tenu &agrave; cette occasion, apr&egrave;s sa prise de fonction, le nouveau pr&eacute;sident de l&rsquo;EAC, Evariste Ndayishimiye, a promis de renforcer la paix dans la r&eacute;gion, la bonne gouvernance et a institutionnaliser les m&eacute;canismes d&rsquo;intervention d&rsquo;urgence de l&rsquo;EAC. Objectif : cr&eacute;er un environnement commercial stable et am&eacute;liorer la vie des citoyens des pays membres.\r\n\r\nIl a &eacute;galement invit&eacute; les pays de la communaut&eacute; est-africaine &agrave; travailler ensemble pour pr&eacute;venir et g&eacute;rer les conflits afin d&rsquo;assurer un bon voisinage.', 0, 0, 1, '2023-06-20 18:53:59'),
(19, 'profil.jpg', 'photos/profil.jpg', 'Guerre en Ukraine : carnage au restaurant de Kramatorsk', 2, 'dfghjklsdfghjklasdfghjklsfghjksdfghjkl;xcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 0, 0, 8, '2023-07-20 17:37:53'),
(26, '1F6E7649-6F59-4384-9694-33B7A616DA73.jpeg', 'photos/1F6E7649-6F59-4384-9694-33B7A616DA73.jpeg', 'Les relations sino-burundaises élevées à un niveau supérieur', 26, 'Le Président de la République du Burundi Son Excellence Evariste Ndayishimiye s’est entretenu dans le cadre des relations bilaterales le 29 juillet 2023 à Chengdu avec son Homologue Son Excellence Xi Jinping, Président de la République Populaire de Chine.\r\n\r\nLors de cette rencontre bilaterale, les deux Presidents ont eu des échanges fructueuses revenant sur des excellentes relations basées sur une amitié sincère, un soutien mutuel, mais également un respect des intérêts vitaux de chaque pays.\r\n\r\nLe Chef de l’État Burundais a remercié vivement le Président de la République Populaire de Chine pour le soutien indéfectible que la Chine a manifesté durant la période 2015, période où le Burundi était sous san économiques injustes prises unilatéralement contre le Burundi, ainsi que son soutien à travers les projets de développement au Burundi.\r\n\r\nLe Président Chinois a félicité son Homologue Burundais pour son leadership éclairé, pour sa vision au Burundi 2040-2060 et n’a pas manqué l’occasion de féliciter l’élan du développement que le Burundi affiche. “Lorsque nous unissons nos forces nous pouvons arriver sur des objectifs palpables mieux que les pays puissants, a dît S.E Xi Jinping.', 0, 0, 12, '2023-07-29 17:25:17'),
(27, 'burundi_russie.jpeg', 'photos/burundi_russie.jpeg', 'Le Président Burundais SE Ndayishimiye rencontre son homologue Russe SE Vladimir Poutine', 26, 'Le Président de la République du Burundi Son Excellence Évariste Ndayishimiye a rencontré en tête à tête en marge de l’ouverture de la deuxieme édition du Sommet Russie-Afrique son homologue Russe Son Excellence Vladimir Poutine, Président de la République Fédérale de la Russie.\r\n\r\nLe Président Ndayishimiye lui a transmis les salutations du peuple Burundais au peuple Russe cordialement attachées l’un à l’autre depuis de longues décennies.\r\n\r\nLe Chef de l’État Burundais salue les excellentes relations bilatérales et historiques qui existent entre les deux peuples et les deux Gouvernements respectifs, basées sur des valeurs partagées de souveraineté, de respect mutuel, de solidarité et d’amitié sans faille.\r\n\r\n“Je garde en mémoire le message que vous m’avez adressé par l’entremise du Ministre Russe des affaires étrangères Mr. Sergueï Lavrov il y a deux mois ainsi que nos échanges fructueux sur l’État de la coopération entre nos deux pays, guidées par les principes de la solidarité, respect et confiance mutuelle”, a dit le Président Président Ndayishimiye.\r\n\r\n“La rencontre d’aujourd’hui ouvre de nouvelles perspectives de coopération” a fait savoir le Président Burundais saluant les liens d’amitiés et de coopération qui n’ont pas cessés de se renforcer d’avantage dans l’intérêt de deux peuples respectifs.\r\n\r\nLe Président de la République Fédérale de la Russie Son Excellence Vladimir Poutine a quand à lui salué le partenariat fiable russo-burundais 60 ans déjà sans faille et parle maintenant de l’élan vers le renforcement des relations bilatérales.\r\n\r\nLe Président Poutine a fait savoir qu’il se réjouit de l’année 2023 qui a été couronnée par le succès des relations bilatérales en témoigne l’échange des visites des ministres des affaires étrangères de deux pays respectifs en Russie et à Bujumbura, a-t-il dit.\r\n\r\nEnfin le Président Russe a souhaité que les relations économiques soient au haut niveau et que les accords signés soient mis en action rapidement.VERY GOOD', 0, 0, 12, '2023-07-29 17:32:39'),
(28, 'never.jpeg', 'photos/never.jpeg', 'Le Pr&eacute;sident Ndayishimiye &agrave; Saint-P&eacute;tersbourg s&rsquo;entretient avec l&rsquo;agence TASS', 26, 'Le Chef de l&rsquo;&Eacute;tat burundais Son Excellence  &Eacute;variste Ndayishimiye en visite en R&eacute;publique F&eacute;d&eacute;rale Russe pour prendre part &agrave; la deuxi&egrave;me &eacute;dition du sommet Russie-Afrique &agrave; Saint-P&eacute;tersbourg, s&rsquo;est entretenu le 27 juillet 2023 avec L &lsquo;Agence Russe TASS.\r\n\r\nLe Pr&eacute;sident Ndayishimiye a d&rsquo;abord fait savoir que le Burundi et l&rsquo;Afrique en g&eacute;n&eacute;ral doivent abandonner la posture de la &ldquo;main tendue&rdquo; et faire entendre leur voix pour des partenariats bas&eacute;s sur le respect mutuel. Ce sommet offre selon le Pr&eacute;sident burundais, une bonne opportunit&eacute; de faire dialoguer les exp&eacute;riences nationales, africaines et penser &agrave; un avenir de dignit&eacute; et de prosp&eacute;rit&eacute; partag&eacute;s.\r\n\r\nSon Excellence &Eacute;variste Ndayishimiye a salu&eacute; les excellentes relations bilat&eacute;rales, amicales et historiques qui existent entre les peuples burundais et russe, ainsi que les gouvernements respectifs; bas&eacute;es sur des valeurs partag&eacute;es de souverainet&eacute;, de respect mutuel, de solidarit&eacute; et d&rsquo;amiti&eacute; sinc&egrave;re.\r\n\r\n&ldquo;Nos relations diplomatiques sont au bon fixe, que ce soit sur le plan bilat&eacute;ral ou dans les instances internationales&rdquo; a dit le Pr&eacute;sident.', 0, 0, 12, '2023-07-29 19:29:29'),
(29, 'vice_president.jpeg', 'photos/vice_president.jpeg', 'Le Vice-Pr&eacute;sident estime que le d&eacute;veloppement du secteur des assurances contribue &agrave; l&rsquo;&eacute;mergence du Burundi', 2, 'Le Vice-Pr&eacute;sident de la R&eacute;publique SE Prosper BAZOMBANZA a proc&eacute;d&eacute; au lancement officiel, ce mercredi 26 juillet &agrave; Bujumbura, de la 2&egrave;me &eacute;dition de la semaine d&eacute;di&eacute;e &agrave; l&rsquo;Assurance au Burundi, sous le th&egrave;me central : &ldquo;L&rsquo;assurance pour tous, un v&eacute;ritable pilier du d&eacute;veloppement&rdquo; et dont l&rsquo;objectif est de sensibiliser et &eacute;duquer la population &agrave; l&rsquo;Assurance. Il a fait savoir que le d&eacute;veloppement du secteur des assurances contribuera sans nul doute &agrave; l&rsquo;&eacute;mergence du Burundi.\r\n\r\n&ldquo;L&rsquo;assurance pour tous permettra au monde rural vivant essentiellement de l&rsquo;agriculture et l&rsquo;&eacute;levage d&rsquo;acc&eacute;der facilement aux cr&eacute;dits bancaires pour financer leurs activit&eacute;s&rdquo;, a-t-il martel&eacute;.\r\n\r\nLa repr&eacute;sentante du ministre en charge des Assurances a, quant &agrave; elle, pr&eacute;cis&eacute; que leur souhait est que la couverture d&rsquo;assurances soit &eacute;tendue jusqu&rsquo;&agrave; la population &agrave; faible dans ses activit&eacute;s quotidiennes notamment l&rsquo;agriculture et l&rsquo;&eacute;levage. Elle a ajout&eacute; que l&rsquo;assurance agricole permettra aux agriculteurs et &eacute;leveurs d&rsquo;acc&eacute;der facilement aux financements par le syst&egrave;me bancaire auxquels ils sont actuellement quasiment exclus.\r\n\r\nLe Vice-Pr&eacute;sident de la R&eacute;publique a appr&eacute;ci&eacute; positivement le travail d&eacute;j&agrave; r&eacute;alis&eacute; par l&rsquo;Agence de R&eacute;gulation et de Contr&ocirc;le des Assurances (ARCA), dans la redynamisation et le d&eacute;veloppement du secteur des assurances au Burundi et a &eacute;galement saisi l&rsquo;occasion pour interpeller l&rsquo;industrie d&rsquo;assurance du Burundi &agrave; respecter les dispositions relatives &agrave; la solvabilit&eacute;, &agrave; la couverture des engagements r&eacute;glementaires et au paiement des sinistres dans les d&eacute;lais l&eacute;gaux.\r\n\r\nAvant d&rsquo;entamer la visite des stands &ndash; exposition des produits et services d&rsquo;assurances offerts par les assureurs, le Vice-Pr&eacute;sident BAZOMBANZA a enfin appel&eacute; la population burundaise et les &eacute;trangers r&eacute;sidents &agrave; Bujumbura et &agrave; Gitega, respectivement les capitales &eacute;conomique et politique du Burundi, de participer massivement aux travaux de cette semaine d&eacute;di&eacute;e &agrave; l&rsquo;Assurance afin de prendre conscience de l&rsquo;importance de souscrire aux assurances diverses pour se prot&eacute;ger, prot&eacute;ger leurs familles et leur bien-&ecirc;tre contre les risques &eacute;ventuels.', 0, 0, 12, '2023-07-29 19:43:51'),
(30, 'never_umuzungu.jpeg', 'photos/never_umuzungu.jpeg', 'Les Ambassadeurs d&rsquo;Afrique du Sud, de Belgique et d&rsquo;Allemagne pr&eacute;sentent leurs adieux au Pr&eacute;sident Ndayishimiye', 2, 'Le Chef de l&rsquo;Etat Son Excellence Evariste Ndayishimiye a re&ccedil;u en audience le mardi 25 juillet 2023 au Palais Ntare Rushatsi, Mme Kgomotso Nomi Jolobe, Mr Alain Van Gucht, et Mr Dieter REINL, respectivement Ambassadeurs d&rsquo;Afrique du Sud, de Belgique et d&rsquo;Allemagne au Burundi qui &eacute;taient venus lui adresser les adieux &agrave; la fin de leurs mandats respectifs au Burundi.\r\n\r\nCe f&ucirc;t une occasion d&rsquo;&eacute;changer sur les bonnes relations d&rsquo;amiti&eacute; et de coop&eacute;ration qui existent entre le Burundi et ces pays.\r\n\r\n&ldquo;Nous reconnaissons le r&ocirc;le primordial qu&rsquo;a jou&eacute; Nelson Mandela d&egrave;s le d&eacute;but du processus de paix au Burundi&rdquo;, a d&eacute;clar&eacute; le Pr&eacute;sident burundais se r&eacute;jouissant que les relations bilat&eacute;rales entre le Burundi et l&rsquo;Afrique du Sud n&rsquo;ont cess&eacute; de s&rsquo;am&eacute;liorer.\r\n\r\nDans leurs &eacute;changes avec les Ambassadeurs de Belgique et d&rsquo;Allemagne au Burundi qui ont &eacute;t&eacute; tour &agrave; tour re&ccedil;us apr&egrave;s l&rsquo;Ambassadrice de l&rsquo;Afrique du Sud, le Chef de l&rsquo;Etat les remerci&eacute;s pour avoir contribu&eacute; &agrave; la normalisation des relations entre le Burundi et l&rsquo;Union Europ&eacute;enne.\r\n\r\nIl en a profit&eacute; pour les informer que le Burundi, dans son processus de v&eacute;rit&eacute; et r&eacute;conciliation, envisage de construire un mus&eacute;e historique national et a sollicit&eacute; l&rsquo;appui de ces pays colonisateurs du Burundi dans le rapatriement des objets qui peuvent aider &agrave; la reconstitution de l&rsquo;histoire du Burundi.\r\n\r\n&ldquo;Pour nous, le Burundi n&rsquo;est pas seulement un pays &agrave; mille et une collines, mais aussi un pays &agrave; mille et une exp&eacute;riences, amiti&eacute;s et impressions&rdquo;, a indiqu&eacute; le diplomate allemand avant de &ldquo;saluer le changement politique insuffl&eacute; par Son Excellence le Pr&eacute;sident Evariste Ndayishimiye qui a amen&eacute; &agrave; l&rsquo;am&eacute;lioration des relations entre le Burundi et l&rsquo;UE ainsi que le r&ocirc;le constructif du Burundi dans la r&eacute;gion&rdquo;.\r\n\r\nL&rsquo;Ambassadeur Dieter REINL a en outre r&eacute;v&eacute;l&eacute; dans le cadre de partenariat avec le Burundi, l&rsquo;Allemagne entend d&eacute;bloquer 32 millions d&rsquo;Euros dans l&rsquo;impl&eacute;mentation du Projet d&rsquo;eau et assainissement en Province Rumonge qui va d&eacute;marrer &agrave; la fin de l&rsquo;ann&eacute;e 2023.\r\n\r\nLe Pr&eacute;sident de la R&eacute;publique a demand&eacute; &agrave; ces 3 ambassadeurs de continuer &agrave; &ecirc;tre des ambassadeurs du Burundi partout o&ugrave; ils seront, en leur signifiant que le Burundi a besoin des appuis multiformes surtout en ce moment o&ugrave; il vit une p&eacute;riode de relance &eacute;conomique.', 0, 0, 12, '2023-07-29 20:08:44'),
(31, 'ndayishimiye.jpeg', 'photos/ndayishimiye.jpeg', 'Le Président Ndayishimiye est attendu au 2eme Sommet Russie-Afrique', 27, 'Le Chef de l’État Burundais Son Excellence Évariste Ndayishimiye est attendu en République fédérale de Russie, pour prendre part à la deuxième édition du sommet Russie-Afrique qui va s’ouvrir le 27juillet 2023 à Saint-Petersburg, dédié au renforcement des partenariats avec le continent.\r\n\r\nCe sommet est présenté comme “un événement majeur”pour les relations russo-africaines car il intensifie des liens entre Moscou et le continent.\r\n\r\nLe plan d’action du Forum du partenariat Russie-Afrique est destiné à la mise en pratique de la coopération mutuellement avantageuse entre la Fédération de Russie et les États africains reconnus par l’Organisation des Nations-Unies, et les principales organisations d’intégration africaine pour la période\r\n\r\nLe présent plan définit les priorités et les mesures qui visent la réalisation du potentiel du partenariat russo-africain dans tous les domaines d’intérêt commun , tenant compte de ” l’Agenda 2063 de l’Union africaine : nos aspirations pour l’Afrique que nous voulons ” ainsi que des plans de son implantation et autres documents relatifs à la coopération entre la Russie et l’Afrique.\r\n\r\nEn marge de ce sommet, le Président Burundais Son Excellence Évariste Ndayishimiye rencontrera son homologue Russe Son Excellence Vladimir Poutine', 0, 0, 12, '2023-07-29 20:15:26'),
(34, 'field_media_image-2702223-146506b9a0ca37cc2d6c76c40cc0747af9fa2b01.jpg', 'photos/field_media_image-2702223-146506b9a0ca37cc2d6c76c40cc0747af9fa2b01.jpg', 'Les 10 astronautes fran&ccedil;ais partis dans l\'espace', 26, 'Le deuxi&egrave;me Fran&ccedil;ais, Patrick Baudry, embarque &agrave; bord de la navette Discovery pour une mission franco-am&eacute;ricaine de sept jours en 1985. N&eacute; au Cameroun, il a notamment &eacute;t&eacute; pilote de chasse de l&rsquo;arm&eacute;e de l&rsquo;air fran&ccedil;aise. A la fin des ann&eacute;es 1980, il a &eacute;t&eacute; &agrave; l&rsquo;origine de la mise en place du premier centre europ&eacute;en d&rsquo;initiation au voyage dans l&rsquo;espace, Space Camp. En septembre 1999, M. Baudry a &eacute;t&eacute; nomm&eacute; ambassadeur de bonne volont&eacute; de l&rsquo;Unesco en reconnaissance de son engagement personnel aupr&egrave;s de la jeunesse pour la promotion de la paix.', 0, 0, 4, '2023-07-29 21:12:35'),
(35, 'economie.jpg', 'photos/economie.jpg', 'Ange Noiret : qui est le nouveau pr&eacute;sentateur m&eacute;t&eacute;o de TF1 ?', 26, 'PAR CL&Eacute;MENT MACHECOURT\r\n&Agrave; 33 ans, le pr&eacute;sentateur m&eacute;t&eacute;o sur LCI a fait ses d&eacute;buts sur la premi&egrave;re cha&icirc;ne le week-end dernier, o&ugrave; son physique et son sourire ont &eacute;t&eacute; remarqu&eacute;s. Retour sur son parcours surprenant.  7\r\n\r\n', 0, 0, 3, '2023-07-29 21:14:49'),
(36, 'igihe.jpg', 'photos/igihe.jpg', 'hhhhhhhhhhhhhhhhhhhhhhhhhh', 2, 'bkjjjjjjjjjjjjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 0, 0, 9, '2023-07-30 18:32:54'),
(38, 'Penurie-de-carburant.jpg', 'photos/Penurie-de-carburant.jpg', 'Pénurie de carburant : les conducteurs des bus remontés contre la mesure de rationnement', 18, 'Désormais, les conducteurs de bus et de taxis sont rationnés et les stations-service ne leur servent que 20 litres d’essence. Selon ces derniers, la mesure abusive date d’environ deux semaines. Ils déplorent des manques à gagner énormes qui ne cessent d’être enregistrés.\r\n\r\nD’après les taximen et les conducteurs des bus de transport en commun, la source de cette mesure de ne pas dépasser 20 litres d’essence reste inconnue. « Les pompistes nous disent seulement que c’est un ordre qu’ils ont reçu et cela à partir du mois de juillet », révèle Moses, un des taximen rencontrés au centre-ville de Bujumbura. « Il y a des pertes énormes que nous enregistrons », regrette-t-il.\r\n\r\nCe conducteur de taxi affirme que sa situation financière n’a fait que s’empirer depuis la mesure. « Avant j’arrivais à gagner au moins 80 mille BIF, la semaine après des journées entières et des nuits passées devant les stations-Service. Mais pour le cas, c’est 20 litres après des nuits devant les stations-service. C’est à se demander s’ils veulent qu’on aille quémander dans les rues ».\r\n\r\nEn plus de ces manques à gagner, les conducteurs des bus de transport en commun déplorent le nombre insuffisant de bus sur les parkings. « Avec la quantité d’essence reçue, nous ne faisons qu’à peine 5 tours. Il faut qu’on garde au moins 5 litres pour retourner faire la queue devant les stations-service », confie un des conducteurs des bus desservant le nord de la ville de Bujumbura.\r\n\r\nSelon lui, le gouvernement devrait s’attaquer au problème de pénurie de carburant au lieu de recourir au rationnement. « Il faut aussi que les vrais vendeurs de carburant sur le marché noir soient sanctionnés, car ils sont bien connus », dénonce un autre conducteur de bus interrogé. Et de juger d’arbitraire cette mesure les frappant.\r\n\r\n\r\n\r\n peinurie carburant', 0, 0, 12, '2023-07-30 20:23:52'),
(39, 'guerre-en-ukraine-les-armes-occidentales-au-coeur-de-la-bataille-c99b4c-0@1x.jpg', 'photos/guerre-en-ukraine-les-armes-occidentales-au-coeur-de-la-bataille-c99b4c-0@1x.jpg', 'Personnalisez votre exp&eacute;rience TF1 Info et cr&eacute;ez votre JT rien que pour vous. La guerre arrive &quot;en Russie, dans ses centres strat&eacute;giques et ses bases militaires&quot;, a affirm&eacute; ce dimanche le pr&eacute;sident ukrainien Vo', 2, '\r\nL\'APPEL DU PAPE SUR LES C&Eacute;R&Eacute;ALES\r\n\r\n\r\n\r\nLe pape Fran&ccedil;ois a appel&eacute;, dimanche, les autorit&eacute;s russes &agrave; revenir &agrave; l\'accord qui autorisait les exportations de c&eacute;r&eacute;ales ukrainiennes par la mer Noire malgr&eacute; la guerre, invoquant les millions de personnes souffrant de la faim.\r\n\r\n\r\n\r\n&quot;Ne nous arr&ecirc;tons pas de prier pour l\'Ukraine martyris&eacute;e o&ugrave; la guerre d&eacute;truit tout, y compris le bl&eacute;, et ceci repr&eacute;sente une grave offense &agrave; Dieu, parce que le bl&eacute; est son don pour nourrir l\'humanit&eacute; et le cri de millions de fr&egrave;res et de s&oelig;urs qui souffrent de la faim monte au ciel&quot;, a-t-il dit apr&egrave;s la pri&egrave;re de l\'Ang&eacute;lus devant des milliers de p&egrave;lerins r&eacute;unis place Saint-Pierre.\r\n\r\n10:24\r\nDISCOURS DE VLADIMIR POUTINE\r\n\r\n\r\n\r\n', 0, 0, 2, '2023-07-30 20:46:34'),
(40, 'burundi_russie.jpeg', 'photos/burundi_russie.jpeg', 'Burundi : quatre journalistes d\'Iwacu lib&eacute;r&eacute;s', 26, 'vvvggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 0, 0, 2, '2023-07-31 08:04:48'),
(41, 'images (6).jpeg', 'photos/images (6).jpeg', 'jouggbbb', 2, 'sdrfghjkllkjhgfdsayhgfds', 0, 0, 9, '2023-07-31 08:48:22'),
(42, 'images (6).jpeg', 'photos/images (6).jpeg', 'dfghjkl;\'dfhjkl', 18, 'rtyuiop[]dfghjkl\r\nfghjkl;', 0, 0, 9, '2023-07-31 09:40:11');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_commentaire` int(11) NOT NULL,
  `id_actualite` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `text_commentaire` text NOT NULL,
  `date_commentaire` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id_commentaire`, `id_actualite`, `id_user`, `text_commentaire`, `date_commentaire`) VALUES
(1, 2, 2, 'ffffffffffffffffffffffff', '2023-05-15 14:14:19'),
(2, 2, 2, 'ffffffffffffffffffffffff', '2023-05-15 14:23:21'),
(3, 4, 2, 'kmkmkmkmkmkkmk', '2023-05-15 14:23:52'),
(4, 4, 2, 'kmkmkmkmkmkkmk', '2023-05-15 14:26:23'),
(20, 3, 2, 'dfddddd', '2023-05-15 14:53:50'),
(21, 3, 2, 'dfddddd', '2023-05-15 14:54:59'),
(22, 3, 2, 'dfddddd', '2023-05-15 14:55:08'),
(23, 2, 2, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2023-05-15 14:58:19'),
(24, 4, 2, 'fghjklsdcv ', '2023-05-17 11:04:41'),
(25, 3, 2, 'bite wewe', '2023-05-19 14:21:32'),
(26, 2, 11, 'that\'s good', '2023-05-24 18:59:31'),
(27, 2, 13, 'c\'est bon', '2023-05-26 10:29:08'),
(29, 7, 2, 'gdghh', '2023-06-08 13:03:07'),
(31, 2, 14, 'good news', '2023-06-15 10:56:46'),
(32, 4, 2, 'good picture', '2023-06-15 11:23:57'),
(33, 2, 15, 'that is goog', '2023-06-18 22:59:07'),
(35, 3, 11, 'that\'s very interested', '2023-06-20 11:38:48'),
(37, 4, 15, 'very interested', '2023-06-20 18:39:41'),
(38, 13, 11, 'that\'s interested', '2023-06-20 18:55:17'),
(39, 2, 11, 'nivyiza\r\n', '2023-06-21 16:53:17'),
(40, 3, 2, 'j\'aime ca', '2023-06-22 14:38:15'),
(41, 2, 2, 'yes', '2023-06-23 07:52:34'),
(42, 13, 16, 'that\'s good', '2023-06-28 12:11:21'),
(43, 4, 2, 'c\'est bon', '2023-07-20 11:20:56'),
(44, 3, 2, 'googggggg', '2023-07-28 21:01:16'),
(46, 7, 2, 'dfghjkkkkkssssssssssssssssssssssssss', '2023-07-28 21:40:51'),
(47, 3, 18, 'geeeeeeeeeeeeoooooooooooooooooo', '2023-07-28 22:24:56'),
(51, 27, 11, 'i\'m very interested', '2023-07-29 19:31:27'),
(52, 27, 13, 'very good', '2023-07-29 19:32:06'),
(53, 27, 15, 'a good picture', '2023-07-29 19:33:18'),
(55, 36, 2, 'vhuuuuuuuuuuuuuuuuuuvvvv', '2023-07-30 18:33:18'),
(56, 26, 30, 'i\'m very interested', '2023-07-31 07:47:19'),
(57, 38, 31, 'bien mon amie', '2023-07-31 08:25:44'),
(58, 27, 34, 'hyjfjjmhgu', '2023-07-31 09:31:46'),
(59, 27, 34, 'hjukyggy', '2023-07-31 09:31:59');

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

CREATE TABLE `galerie` (
  `id_galerie` int(11) NOT NULL,
  `id_actualite` int(11) NOT NULL,
  `nom_photo` varchar(200) NOT NULL,
  `photo_url_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `galerie`
--

INSERT INTO `galerie` (`id_galerie`, `id_actualite`, `nom_photo`, `photo_url_name`) VALUES
(1, 18, 'Manifestations-Kinshasa.jpg', 'galerie/Manifestations-Kinshasa.jpg'),
(2, 18, 'Neva-et-Kagame.jpg', 'galerie/Neva-et-Kagame.jpg'),
(3, 18, 'ukraine.jpg', 'galerie/ukraine.jpg'),
(6, 18, 'Photo-sommet.jpg', 'galerie/Photo-sommet.jpg'),
(7, 18, 'téléchargement.jpg', 'galerie/téléchargement.jpg'),
(9, 18, 'kagame.jpg', 'galerie/kagame.jpg'),
(14, 20, 'istockphoto-1387759698-612x612.jpg', 'galerie/istockphoto-1387759698-612x612.jpg'),
(15, 21, 'images (1).jpeg', 'galerie/images (1).jpeg'),
(16, 20, 'BIM-2023-700x441.jpg', 'galerie/BIM-2023-700x441.jpg'),
(17, 20, 'istockphoto-1349412663-612x612.jpg', 'galerie/istockphoto-1349412663-612x612.jpg'),
(18, 21, 'téléchargement.jpeg', 'galerie/téléchargement.jpeg'),
(19, 20, 'Neva-et-Kagame.jpg', 'galerie/Neva-et-Kagame.jpg'),
(20, 26, 'images (6).jpeg', 'galerie/images (6).jpeg'),
(21, 27, 'igihe.jpg', 'galerie/igihe.jpg'),
(22, 31, '24487169lpw-24487303-sommaire-jpg_9507076_200x133.jpg', 'galerie/24487169lpw-24487303-sommaire-jpg_9507076_200x133.jpg'),
(23, 34, 'geongar (1).jpeg', 'galerie/geongar (1).jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `number_dislike`
--

CREATE TABLE `number_dislike` (
  `id_actualite` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `number_dislike`
--

INSERT INTO `number_dislike` (`id_actualite`, `id_user`) VALUES
(2, 15),
(4, 2),
(3, 11),
(2, 2),
(7, 2),
(38, 31),
(27, 34);

-- --------------------------------------------------------

--
-- Structure de la table `number_likes`
--

CREATE TABLE `number_likes` (
  `id_actualite` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `number_likes`
--

INSERT INTO `number_likes` (`id_actualite`, `id_user`) VALUES
(2, 14),
(3, 2),
(4, 15),
(13, 11),
(13, 16),
(4, 18),
(4, 19),
(27, 26),
(27, 11),
(27, 13),
(27, 15),
(30, 2),
(36, 2),
(26, 30);

-- --------------------------------------------------------

--
-- Structure de la table `publicite`
--

CREATE TABLE `publicite` (
  `id_publicite` int(11) NOT NULL,
  `entete_pub` varchar(200) NOT NULL,
  `photo_url_name` varchar(255) NOT NULL,
  `nom_entreprise` varchar(250) NOT NULL,
  `adresse` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `publicite`
--

INSERT INTO `publicite` (`id_publicite`, `entete_pub`, `photo_url_name`, `nom_entreprise`, `adresse`) VALUES
(2, 'ffghkl;', 'photos/profil.jpg', 'pouytre', 'nm'),
(3, 'leboncoin facilite tous les &eacute;changes au quotidien gr&acirc;ce &agrave; ses 47,8 millions d\'annonces dans 10 univers.', 'photos/téléchargement.jpg', 'le bon coin', 'helooui'),
(4, 'Sommet 11/06/2023', 'photos/Photo-sommet.jpg', 'lumitel', 'burundi.com'),
(5, 'publicite', 'photos/igihe.jpg', 'brarudi', 'buyenzi-buja'),
(6, 'bgfdddddddh', 'photos/images (6).jpeg', 'hggddddd', 'haooo'),
(7, 'fghjk', 'photos/garage.jpeg', 'vbnm,', 'dfghj'),
(8, 'GARAGE', 'photos/never_umuzungu.jpeg', 'TWITEZIMBERE', 'KANYOSHA');

-- --------------------------------------------------------

--
-- Structure de la table `type_actualite`
--

CREATE TABLE `type_actualite` (
  `id_type_actu` int(11) NOT NULL,
  `type_actualite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_actualite`
--

INSERT INTO `type_actualite` (`id_type_actu`, `type_actualite`) VALUES
(1, 'Politique'),
(2, 'International'),
(3, 'Economie'),
(4, 'Tech_Net'),
(5, 'Culture'),
(6, 'Sciences'),
(7, 'Santé'),
(8, 'Afrique'),
(9, 'sport'),
(12, 'burundi');

-- --------------------------------------------------------

--
-- Structure de la table `type_user`
--

CREATE TABLE `type_user` (
  `id_type_user` int(11) NOT NULL,
  `type_user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_user`
--

INSERT INTO `type_user` (`id_type_user`, `type_user`) VALUES
(1, 'utilisateur'),
(2, 'moderateur'),
(3, 'adminisrateur');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `photo_name` varchar(100) NOT NULL,
  `photo_url` varchar(100) NOT NULL,
  `type_user` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `nom`, `prenom`, `email`, `password`, `telephone`, `adresse`, `photo_name`, `photo_url`, `type_user`) VALUES
(2, 'ndagijimanana', 'therence', 'thera@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 'buja_campus', 'ndayishimiye.jpeg', 'photos/ndayishimiye.jpeg', 3),
(9, 'kana', 'amedee star', 'amede@gmail.com', '8cc780f863beab9f4d32af4f7cf40516bfe652be', '65356094', 'GIHOSHA', '24485368lpw-24485510-mega-une-jpg_9506467_320x139.jpg', 'photos/24485368lpw-24485510-mega-une-jpg_9506467_320x139.jpg', 1),
(10, 'NAHAYO', 'alice', 'naha@gmail.com', '02bdb07f874c2ef429667dc7432933e215a7cd51', '55552415645', 'bwiza', '24487169lpw-24487303-sommaire-jpg_9507076_200x133.jpg', 'photos/24487169lpw-24487303-sommaire-jpg_9507076_200x133.jpg', 2),
(11, 'ngendakuriyo', 'fabrice', 'fabri@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '75946845214', 'buja-celabe', 'Photo-sommet.jpg', 'photos/Photo-sommet.jpg', 1),
(13, 'irakoze', 'charles', 'chardine@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '759464545214', 'buja_kiririrrrr', '24487169lpw-24487303-sommaire-jpg_9507076_200x133.jpg', 'photos/24487169lpw-24487303-sommaire-jpg_9507076_200x133.jpg', 1),
(14, 'cubahiro', 'jonathan', 'jonathan@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '61202782', 'bwiza', 'Manifestations-Kinshasa.jpg', 'photos/Manifestations-Kinshasa.jpg', 1),
(15, 'kanama', 'Gedeon', 'gedeon@gmail.com', '273a0c7bd3c679ba9a6f5d99078e36e85d02b952', '6535609425', 'buyenzi-buja', 'field_media_image-2701519-5dbe1638dafdc2f96e3ae82c006fd0631ba59cf0.jpg', 'photos/field_media_image-2701519-5dbe1638dafdc2f96e3ae82c006fd0631ba59cf0.jpg', 1),
(16, 'BUKURU ', 'SIMEON', 'simeon@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '124587665221', 'kanyosha', 'maison.jpg', 'photos/maison.jpg', 1),
(17, 'kabura', 'sion', 'sion@gmail.com', '71dd07494c5ee54992a27746d547e25dee01bd97', '3366552214', 'gihosha', 'field_media_image-2702223-146506b9a0ca37cc2d6c76c40cc0747af9fa2b01.jpg', 'photos/field_media_image-2702223-146506b9a0ca37cc2d6c76c40cc0747af9fa2b01.jpg', 1),
(18, 'ndayihimbaze', 'audace', 'audace@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '45632185', 'carama', 'kagame.jpg', 'photos/kagame.jpg', 2),
(19, 'zaburi', 'kevin', 'kevin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '369874521', 'kirirbujw', 'téléchargement.jpg', 'photos/téléchargement.jpg', 1),
(26, 'ndayikengurutse', 'erirc', 'eric@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '25415645855', 'buja_celab', 'maison.jpg', 'photos/maison.jpg', 2),
(27, 'ndayikengurukiye', 'nadine', 'nadine@gmail.com', '9adcb29710e807607b683f62e555c22dc5659713', '2356487591', 'kiriri', 'igihe.jpg', 'photos/igihe.jpg', 2),
(30, 'girukwishaka', 'yvan', 'yvan@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2578455155', 'kiriri', 'ndayishimiye.jpeg', 'photos/ndayishimiye.jpeg', 1),
(31, 'butoyi', 'jean', 'jean@gmail.com', '9a3e61b6bcc8abec08f195526c3132d5a4a98cc0', '61656452', 'buja', 'economie.jpg', 'photos/economie.jpg', 1),
(32, 'muhizi', 'idris', 'idris@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '78564298', 'mutanga_nord', 'burundi_russie.jpeg', 'photos/burundi_russie.jpeg', 2),
(33, 'keza', 'aniha', 'keke@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '79256315', 'jabe', 'igihe.jpg', 'photos/igihe.jpg', 1),
(34, 'NIHORIMBERE', 'robin', 'robin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '65356982', 'buja', 'internationnal.jpg', 'photos/internationnal.jpg', 1),
(35, 'ndahogo', 'dfghjk', 'jojojo@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '55552415645', 'kanyosha', 'IMG_20221202_114254.jpg', 'photos/IMG_20221202_114254.jpg', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id_actu`),
  ADD KEY `actualite_ibfk_1` (`source_actu`),
  ADD KEY `actualite_ibfk_2` (`type_actu`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `commentaires_ibfk_1` (`id_actualite`),
  ADD KEY `commentaires_ibfk_2` (`id_user`);

--
-- Index pour la table `galerie`
--
ALTER TABLE `galerie`
  ADD PRIMARY KEY (`id_galerie`);

--
-- Index pour la table `number_dislike`
--
ALTER TABLE `number_dislike`
  ADD KEY `id_actualite` (`id_actualite`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `number_likes`
--
ALTER TABLE `number_likes`
  ADD KEY `id_actualite` (`id_actualite`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `publicite`
--
ALTER TABLE `publicite`
  ADD PRIMARY KEY (`id_publicite`);

--
-- Index pour la table `type_actualite`
--
ALTER TABLE `type_actualite`
  ADD PRIMARY KEY (`id_type_actu`);

--
-- Index pour la table `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`id_type_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `type_user` (`type_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id_actu` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `galerie`
--
ALTER TABLE `galerie`
  MODIFY `id_galerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `publicite`
--
ALTER TABLE `publicite`
  MODIFY `id_publicite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `type_actualite`
--
ALTER TABLE `type_actualite`
  MODIFY `id_type_actu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `type_user`
--
ALTER TABLE `type_user`
  MODIFY `id_type_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD CONSTRAINT `actualite_ibfk_1` FOREIGN KEY (`source_actu`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `actualite_ibfk_2` FOREIGN KEY (`type_actu`) REFERENCES `type_actualite` (`id_type_actu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`id_actualite`) REFERENCES `actualite` (`id_actu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commentaires_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `number_dislike`
--
ALTER TABLE `number_dislike`
  ADD CONSTRAINT `number_dislike_ibfk_1` FOREIGN KEY (`id_actualite`) REFERENCES `actualite` (`id_actu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `number_dislike_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `number_likes`
--
ALTER TABLE `number_likes`
  ADD CONSTRAINT `number_likes_ibfk_1` FOREIGN KEY (`id_actualite`) REFERENCES `actualite` (`id_actu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `number_likes_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type_user`) REFERENCES `type_user` (`id_type_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
