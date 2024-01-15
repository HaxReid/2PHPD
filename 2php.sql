-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 14 jan. 2023 à 19:51
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `2php`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `titre` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(2000) COLLATE utf8_bin NOT NULL,
  `genre` varchar(255) COLLATE utf8_bin NOT NULL,
  `temps` time NOT NULL,
  `prix` decimal(11,0) NOT NULL,
  `id_realisateur` bigint(20) UNSIGNED NOT NULL,
  `acteurs` varchar(255) COLLATE utf8_bin NOT NULL,
  `lastAdded` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_realisateur` (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `image`, `titre`, `description`, `genre`, `temps`, `prix`, `id_realisateur`, `acteurs`, `lastAdded`) VALUES
(1, 'images\\action\\AlienLeRetour', 'Alien, le retour', 'Après 57 ans de dérive dans l\'espace, Ellen Ripley est secourue par la corporation Weyland-Yutani. Malgré son rapport concernant l’incident survenu sur le Nostromo, elle n’est pas prise au sérieux par les militaires quant à la présence de xénomorphes sur la planète LV-426 où se posa son équipage… planète où plusieurs familles de colons ont été envoyées en mission de \"terraformage\". Après la disparition de ces derniers, Ripley décide d\'accompagner une escouade de marines dans leur mission de sauvetage... et d’affronter à nouveau la Bête.', 'Action, Science fiction', '02:17:00', '8', 3, 'Sigourney Weaver, Michael Biehn, Lance Henriksen', 'no'),
(2, 'images\\action\\Avatar2', 'Avatar : La Voie de l\'eau', 'Se déroulant plus d’une décennie après les événements relatés dans le premier film, AVATAR : LA VOIE DE L’EAU raconte l\'histoire des membres de la famille Sully (Jake, Neytiri et leurs enfants), les épreuves auxquelles ils sont confrontés, les chemins qu’ils doivent emprunter pour se protéger les uns les autres, les batailles qu’ils doivent mener pour rester en vie et les tragédies qu\'ils endurent.', 'Science fiction, Aventure, Fantastique, Action', '03:12:00', '20', 3, 'Sam Worthington, Zoe Saldana, Sigourney Weaver', 'yes'),
(3, 'images\\action\\BlackPanther', 'Black Panther', 'Après les événements qui se sont déroulés dans Captain America : Civil War, T’Challa revient chez lui prendre sa place sur le trône du Wakanda, une nation africaine technologiquement très avancée. Mais lorsqu’un vieil ennemi resurgit, le courage de T’Challa est mis à rude épreuve, aussi bien en tant que souverain qu’en tant que Black Panther. Il se retrouve entraîné dans un conflit qui menace non seulement le destin du Wakanda, mais celui du monde entier…', 'Action, Aventure, Science fiction, Fantastique', '02:15:00', '12', 5, 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o', 'no'),
(4, 'images\\action\\BlackPanther2', 'Black Panther : Wakanda Forever', 'La Reine Ramonda, Shuri, M’Baku, Okoye et les Dora Milaje luttent pour protéger leur nation des ingérences d’autres puissances mondiales après la mort du roi T’Challa. Alors que le peuple s’efforce d’aller de l’avant, nos héros vont devoir s’unir et compter sur l’aide de la mercenaire Nakia et d’Everett Ross pour faire entrer le royaume du Wakanda dans une nouvelle ère. Mais une terrible menace surgit d’un royaume caché au plus profond des océans : Talokan.', 'Action, Aventure, Fantastique', '02:42:00', '17', 5, 'Letitia Wright, Angela Bassett, Danai Gurira', 'yes'),
(5, 'images\\action\\IndianaJonesArchePerdue', 'Les Aventuriers de l\'arche perdue', '1936. Parti à la recherche d\'une idole sacrée en pleine jungle péruvienne, l\'aventurier Indiana Jones échappe de justesse à une embuscade tendue par son plus coriace adversaire : le Français René Belloq.\r\nRevenu à la vie civile à son poste de professeur universitaire d\'archéologie, il est mandaté par les services secrets et par son ami Marcus Brody, conservateur du National Museum de Washington, pour mettre la main sur le Médaillon de Râ, en possession de son ancienne amante Marion Ravenwood, désormais tenancière d\'un bar au Tibet.\r\nCet artefact égyptien serait en effet un premier pas sur le chemin de l\'Arche d\'Alliance, celle-là même où Moïse conserva les Dix Commandements. Une pièce historique aux pouvoirs inimaginables dont Hitler cherche à s\'emparer...', 'Aventure, Action', '01:56:00', '8', 2, 'Harrison Ford, Karen Allen, Paul Freeman', 'no'),
(6, 'images\\action\\KillBill', 'Kill Bill: Volume 1', 'Au cours d\'une cérémonie de mariage en plein désert, un commando fait irruption dans la chapelle et tire sur les convives. Laissée pour morte, la Mariée enceinte retrouve ses esprits après un coma de quatre ans.\r\n\r\nCelle qui a auparavant exercé les fonctions de tueuse à gages au sein du Détachement International des Vipères Assassines n\'a alors plus qu\'une seule idée en tête : venger la mort de ses proches en éliminant tous les membres de l\'organisation criminelle, dont leur chef Bill qu\'elle se réserve pour la fin.', 'Action, Thriller', '01:52:00', '10', 1, 'Uma Thurman, Sonny Chiba, Lucy Liu', 'no'),
(7, 'images\\action\\Le5emeElement', 'Le Cinquième Élément', 'Au XXIII siècle, dans un univers étrange et coloré, où tout espoir de survie est impossible sans la découverte du cinquième élément, un héros affronte le mal pour sauver l\'humanité.', 'Science fiction, Action', '02:06:00', '8', 4, 'Bruce Willis, Gary Oldman, Ian Holm', 'no'),
(8, 'images\\action\\ReadyPlayerOne', 'Ready Player One', '2045. Le monde est au bord du chaos. Les êtres humains se réfugient dans l\'OASIS, univers virtuel mis au point par le brillant et excentrique James Halliday. Avant de disparaître, celui-ci a décidé de léguer son immense fortune à quiconque découvrira l\'œuf de Pâques numérique qu\'il a pris soin de dissimuler dans l\'OASIS. L\'appât du gain provoque une compétition planétaire. Mais lorsqu\'un jeune garçon, Wade Watts, qui n\'a pourtant pas le profil d\'un héros, décide de participer à la chasse au trésor, il est plongé dans un monde parallèle à la fois mystérieux et inquiétant…', 'Science fiction, Action', '02:20:00', '12', 2, 'Tye Sheridan, Olivia Cooke, Ben Mendelsohn', 'yes'),
(9, 'images\\action\\Terminator2', 'Terminator 2 : le Jugement Dernier', 'En 1997, les survivants de l\'apocalypse nucléaire poursuivent une guerre sans merci contre les robots et machines qu\'ils ont eux-même créés. Pour en finir avec John Connor qui dirige la résistance des hommes, deux \"cyborgs\" sont envoyés dans le passé. Leur mission : abattre Connor enfant. Le premier modèle de la série \"Terminator\" a échoué en 1984. Le second, modèle plus performant en liquide métamorphosable, se lance à la poursuite de l\'enfant et de sa mère, Sarah, dans les années quatre-vingt-dix. De leur côté, les hommes du futur ont envoyé dans le passé un Terminator chargé de protéger le jeune Connor. Le duel des robots va prendre alors des allures titanesques. Et, tandis que l\'enfant enseignera à ce Terminator des rudiments d\'humanité, sa mère tentera par tous les moyens d\'empêcher la création des premières machines intelligentes. Avec l\'aide du Terminator qu\'ils ont éduqué, ils combattront pour influencer le futur...', 'Science fiction, Action', '02:17:00', '9', 3, 'Arnold Schwarzenegger, Linda Hamilton, Edward Furlong', 'no'),
(10, 'images\\action\\Valerian', 'Valerian et la Cité des mille planètes', 'Au 28ème siècle, Valérian et Laureline forment une équipe d\'agents spatio-temporels chargés de maintenir l\'ordre dans les territoires humains. Mandaté par le Ministre de la Défense, le duo part en mission sur l’extraordinaire cité intergalactique Alpha - une métropole en constante expansion où des espèces venues de l\'univers tout entier ont convergé au fil des siècles pour partager leurs connaissances, leur savoir-faire et leur culture. Un mystère se cache au cœur d\'Alpha, une force obscure qui menace l\'existence paisible de la Cité des Mille Planètes. Valérian et Laureline vont devoir engager une course contre la montre pour identifier la terrible menace et sauvegarder non seulement Alpha, mais l\'avenir de l\'univers.', 'Science fiction, Aventure, Action, Fantastique', '02:17:00', '13', 4, 'Dane DeHaan, Cara Delevingne, Clive Owen', 'yes'),
(11, 'images\\drame\\Contact', 'Contact', 'Ellie Arroway, passionnée depuis sa plus tendre enfance par l\'univers, est devenue une jeune et brillante astronome. Avec une petite équipe de chercheurs elle écoute le ciel et guette un signe d\'intelligence extraterrestre. Un jour, ils captent un message.', 'Science fiction, Drame', '02:33:00', '8', 7, 'Jodie Foster, Matthew McConaughey, Tom Skerritt', 'no'),
(12, 'images\\drame\\Creed', 'Creed - L\'Héritage de Rocky Balboa', 'Adonis Johnson n\'a jamais connu son père, le célèbre champion du monde poids lourd Apollo Creed décédé avant sa naissance. Pourtant, il a la boxe dans le sang et décide d\'être entraîné par le meilleur de sa catégorie. À Philadelphie, il retrouve la trace de Rocky Balboa, que son père avait affronté autrefois, et lui demande de devenir son entraîneur. D\'abord réticent, l\'ancien champion décèle une force inébranlable chez Adonis et finit par accepter…', 'Drame', '02:14:00', '13', 5, 'Michael B. Jordan, Sylvester Stallone, Tessa Thompson', 'no'),
(13, 'images\\drame\\ForrestGump', 'Forrest Gump', 'Quelques décennies d\'histoire américaine, des années 1940 à la fin du XXème siècle, à travers le regard et l\'étrange odyssée d\'un homme simple et pur, Forrest Gump.', 'Romance, Drame, Comédie', '02:20:00', '10', 7, 'Tom Hanks, Gary Sinise, Robin Wright', 'no'),
(14, 'images\\drame\\LaVieEnGrand', 'La Vie en grand', 'Adama est un adolescent de 14 ans. Il vit avec sa mère dans un petit deux-pièces en banlieue parisienne. Il est en échec scolaire même si c’est un élève prometteur. Avec Mamadou, plus jeune que lui, ils vont inverser le cours de leurs vies.', 'Drame', '01:33:00', '10', 6, 'Balamine Guirassy, Ali Bidanessy, Guillaume Gouix', 'yes'),
(15, 'images\\drame\\Leon', 'Léon', 'Un tueur à gages répondant au nom de Léon prend sous son aile Mathilda, une petite fille de douze ans, seule rescapée du massacre de sa famille. Bientôt, Léon va faire de Mathilda une \"nettoyeuse\", comme lui. Et Mathilda pourra venger son petit frère...', 'Policier, Drame', '01:43:00', '8', 4, 'Jean Reno, Gary Oldman, Natalie Portman', 'no'),
(16, 'images\\drame\\OnceUponATimeInHollywood', 'Once Upon a Time... in hollywood', 'En 1969, la star de télévision Rick Dalton et le cascadeur Cliff Booth, sa doublure de longue date, poursuivent leurs carrières au sein d’une industrie qu’ils ne reconnaissent plus. ', 'Drame, Comédie', '02:41:00', '12', 1, 'Leonardo DiCaprio, Brad Pitt, Margot Robbie', 'yes'),
(17, 'images\\drame\\SeulAuMonde', 'Seul au monde', 'Chuck Noland, un cadre de Fedex, sillonne le monde pour améliorer les performances de son entreprise et la productivité de ses équipes. Il ne trouve la tranquillité qu\'auprès de sa compagne Kelly. Mais à la veille de Noël, il reçoit un appel lui annonçant qu\'il doit contrôler la livraison d\'un colis urgent pour la Malaisie. Il n\'en a que pour quatre jours et reviendra pour fêter le Nouvel An avec sa dulcinée.\r\nChuck quitte Los Angeles à bord d\'un petit avion. Mais au-dessus de l\'Océan Pacifique, un orage éclate et prend par surprise l\'équipage. Le crash est inévitable. Agrippé à un radeau de sauvetage, Chuck s\'échoue sur une île déserte. Les jours passent et aucun secours en vue.\r\nPendant quatre ans, le naufragé va tenter de s\'adapter à cet environnement sauvage en surmontant l\'épreuve terrible de la solitude.', 'Aventure, Drame', '02:23:00', '10', 7, 'Tom Hanks, Helen Hunt, Nick Searcy', 'yes'),
(18, 'images\\drame\\SoldatRyan', 'Il faut sauver le soldat Ryan', 'Alors que les forces alliées débarquent à Omaha Beach, Miller doit conduire son escouade derrière les lignes ennemies pour une mission particulièrement dangereuse : trouver et ramener sain et sauf le simple soldat James Ryan, dont les trois frères sont morts au combat en l\'espace de trois jours. Pendant que l\'escouade progresse en territoire ennemi, les hommes de Miller se posent des questions. Faut-il risquer la vie de huit hommes pour en sauver un seul ?', 'Guerre, Drame', '02:43:00', '8', 2, 'Ryan Hurst, Tom Hanks, Tom Sizemore', 'no'),
(19, 'images\\drame\\Tirailleurs', 'Tirailleurs', '1917. Bakary Diallo s\'enrôle dans l\'armée française pour rejoindre Thierno, son fils de 17 ans, qui a été recruté de force. Envoyés sur le front, père et fils vont devoir affronter la guerre ensemble. Galvanisé par la fougue de son officier qui veut le conduire au cœur de la bataille, Thierno va s\'affranchir et apprendre à devenir un homme, tandis que Bakary va tout faire pour l\'arracher aux combats et le ramener sain et sauf.', 'Drame, Historique, Guerre', '01:40:00', '20', 6, 'Omar Sy, Alassane Diong, Jonas Bloquet', 'yes'),
(20, 'images\\drame\\Titanic', 'Titanic', 'Southampton, 10 avril 1912. Le paquebot le plus grand et le plus moderne du monde, réputé pour son insubmersibilité, le \"Titanic\", appareille pour son premier voyage. Quatre jours plus tard, il heurte un iceberg. A son bord, un artiste pauvre et une grande bourgeoise tombent amoureux.', 'Drame, Romance', '03:14:00', '10', 3, 'Leonardo DiCaprio, Kate Winslet, Billy Zane', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `id_panier` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_film` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_panier`),
  KEY `id_film` (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id_realisateur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(255) COLLATE utf8_bin NOT NULL,
  `filmographie` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id_realisateur`, `nom`, `prenom`, `filmographie`) VALUES
(1, 'Tarantino', 'Quentin', 'Once Upon a Time... in Hollywood / Kill Bill: Volume1'),
(2, 'Spielberg', 'Steven', 'Ready Player One / Les Aventuriers de l\'arche perdue / Il faut sauver le soldat Ryan'),
(3, 'Cameron', 'James', 'Avatar : La Voie de l\'eau / Terminator 2 : Le Jugement Dernier / Alien, le retour / Titanic'),
(4, 'Besson', 'Luc', 'Valerian et la Cité des mille planètes / Le Cinquième Élément / Léon'),
(5, 'Coogler', 'Ryan', 'Creed : L\'Héritage de Rocky Balboa / Black Panther / Black Panther : Wakanda Forever'),
(6, 'Vadepied', 'Mathieu', 'Tirailleurs / La Vie en grand'),
(7, 'Zemeckis', 'Robert', 'Forrest Gump / Seul au monde / Contact');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` text COLLATE utf8_bin NOT NULL,
  `prenom` text COLLATE utf8_bin NOT NULL,
  `pseudo` text COLLATE utf8_bin NOT NULL,
  `mdp` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `pseudo`, `mdp`) VALUES
(1, 'Maury', 'Henry', 'test', 'test');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id_realisateur`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
