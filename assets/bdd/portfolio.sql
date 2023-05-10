-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 01 mai 2023 à 13:23
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hrmncddr_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

DROP TABLE IF EXISTS `competences`;
CREATE TABLE IF NOT EXISTS `competences` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `nom`) VALUES
(1, 'Gérer le patrimoine informatique.'),
(2, 'Répondre aux incidents et aux demandes d’assistance et d’évolution.'),
(3, 'Développer la présence en ligne de l’organisation.'),
(4, 'Travailler en mode projet.'),
(5, 'Mettre à disposition des utilisateurs un service informatique.'),
(6, 'Organiser son développement professionnel.');

-- --------------------------------------------------------

--
-- Structure de la table `justification`
--

DROP TABLE IF EXISTS `justification`;
CREATE TABLE IF NOT EXISTS `justification` (
  `id_justification` int(11) NOT NULL,
  `id_competence` int(11) NOT NULL,
  `text` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_justification`,`id_competence`),
  KEY `id_competence` (`id_competence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `justification`
--

INSERT INTO `justification` (`id_justification`, `id_competence`, `text`, `image`) VALUES
(1, 1, 'Versionning : utilisation de différentes versions de base de données pour le projet Android (visible ici par le champ version).', '1.1_android.png'),
(1, 2, 'Suivi de demande : un cas de demande ici afficher à été correctement importer dans un des projets en cours.', '1.2_cas_utilisation.png'),
(1, 3, 'Modification de l\'interface graphique d\'une application (parti de 0).', '1.3_IG.png'),
(1, 4, 'Capture d\'écran du tello réalisé durant un projet qui regroupe toutes les tâches distribuer à chaque membre du groupe.', '1.4_trello.png'),
(1, 5, 'Réalisation de tests fonctionnels et unitaires (ici présent) d\'un projet réalisés. Ses éléments correspondent à un plan de test et rapport de test pour les tests unitaires et une documentation technique pour les tests fonctionnels.', '1.5_unitaire.png'),
(1, 6, 'Réalisation d\'une veille sur le thème de l\'intelligence artificiel disponible sur l\'onglet veille.', '1.6_veille.png'),
(2, 1, 'Versionning : Utilisation de git hub pour gérer le versionning de divers projets, comme présent dans la photo.', '1.1_git_hub.png'),
(2, 2, 'Historique des pull/commit/push fait sur git hub pour chacun des projets réalisés.', '1.2_git_hub.png'),
(2, 3, 'Tableau des tests fonctionnels réalisés sur un des projets qui à été mis à jour suivant les modifications technique du site.', '1.3_tests.png'),
(2, 4, 'Représentation de la méthode Kaban qui propose une planification d\'un projet suivant les différentes personnes disponible ainsi que toutes les tâches à faire.', '1.4_kaban.png'),
(2, 5, 'Mise en œuvre d\'un document tutoriel réalisé en commun avec des élèves de SNO pour expliquer les notions sur les CMS ainsi que les opérations de base sur Wordpress (ici présent). ', '1.5_tuto.png'),
(3, 1, 'Gestion des habilitations. Sur l\'image on peut voir que l\'utilisateur est connecté en tant que délégué régional.', '1.1_habilitation.png');

-- --------------------------------------------------------

--
-- Structure de la table `veille`
--

DROP TABLE IF EXISTS `veille`;
CREATE TABLE IF NOT EXISTS `veille` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mois` varchar(10) COLLATE utf8_bin NOT NULL,
  `lien_article` varchar(200) COLLATE utf8_bin NOT NULL,
  `image` varchar(200) COLLATE utf8_bin NOT NULL,
  `description` varchar(1000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `veille`
--

INSERT INTO `veille` (`id`, `mois`, `lien_article`, `image`, `description`) VALUES
(1, 'Septembre', 'https://www.actuia.com/actualite/le-machine-learning-et-des-cameras-sous-marines-pour-predire-la-repartition-mondiale-du-zooplancton/', '1.6_veille.png', 'L\'article en question décrit une étude qui combine le machine learning et des caméras sous-marines pour prédire la répartition mondiale du zooplancton. Le zooplancton est un groupe d\'organismes marins qui sont importants pour la chaîne alimentaire océanique.\r\nL\'étude a révélé que le zooplancton était plus abondant dans les eaux chaudes et que sa répartition variait en fonction des courants océaniques. Les résultats de cette étude pourraient être utilisés pour mieux comprendre la façon dont les écosystèmes marins réagissent aux changements environnementaux et pour élaborer des stratégies de conservation des océans.'),
(2, 'Octobre', 'https://www.actuia.com/actualite/la-cour-de-cassation-se-tourne-vers-lia-pour-identifier-les-divergences-des-jurisprudences/', 'v_octobre.png', 'L\'article décrit comment la Cour de cassation en France utilise l\'IA pour identifier les divergences des jurisprudences. La Cour de cassation est la plus haute juridiction de l\'ordre judiciaire en France.\r\nGrâce à l\'utilisation de l\'IA, la Cour de cassation peut identifier les divergences de jurisprudence plus rapidement et avec une précision accrue. Cela peut aider à garantir la cohérence des décisions judiciaires et à renforcer la confiance dans le système judiciaire.'),
(3, 'Novembre', 'https://www.actuia.com/actualite/refik-anadol-unsupervised-quand-lia-sinvite-au-musee-dart-moderne-de-new-york/', 'v_novembre.png', 'Cet article parle d\'un artiste nommé Refik Anadol qui utilise l\'IA pour créer une installation artistique au musée d\'art moderne de New York.\r\nL\'installation \"Unsupervised\" est un exemple de la façon dont l\'IA peut être utilisée dans le domaine de l\'art pour créer des œuvres d\'art numériques qui évoquent des émotions et des sensations chez les spectateurs. Le musée d\'art moderne de New York espère que cette installation aidera à susciter des conversations sur la façon dont la technologie peut être utilisée pour enrichir notre expérience de l\'art.'),
(4, 'Décembre', 'https://www.actuia.com/actualite/premiers-retours-dexperience-sur-chatgpt-le-modele-de-langage-conversationnel-base-sur-gpt-35/', 'v_decembre.png', 'L\'article décrit les premiers retours d\'expérience sur ChatGPT, un modèle de langage conversationnel basé sur GPT-3.5.\r\nDans l\'ensemble, ChatGPT est une avancée importante dans le domaine des chatbots conversationnels, offrant une réponse précise et rapide à une grande variété de questions posées en langage naturel.'),
(5, 'Janvier', 'https://www.actuia.com/actualite/synthese-vocale-microsoft-presente-vall-e-un-modele-dia-entraine-a-reproduire-la-voix/', 'v_janvier.png', 'L\'article décrit une nouvelle avancée de Microsoft dans la synthèse vocale : l\'introduction de Vall-E, un modèle d\'IA qui est capable de reproduire la voix humaine de manière réaliste.\r\nVall-E utilise une approche basée sur l\'apprentissage profond pour reproduire la voix de personnes réelles, en utilisant des échantillons de voix pour entraîner le modèle. Le modèle peut être entraîné à reproduire différentes voix, y compris des voix de personnes qui parlent des langues différentes ou qui ont des accents différents.\r\nEn somme, Vall-E représente une avancée significative dans le domaine de la synthèse vocale, avec des applications potentielles dans de nombreux domaines, y compris la communication assistée et les interfaces homme-machine.'),
(6, 'Février', 'https://www.actuia.com/actualite/ia-et-biodiversite-lancement-du-projet-life-seadetect-visant-a-proteger-les-grands-cetaces/', 'v_fevrier.png', 'L\'article décrit le projet Life-SeaDetect, un projet de conservation de la biodiversité marine qui utilise l\'IA pour protéger les grands cétacés.\r\nLe projet est actuellement en cours de développement dans plusieurs pays européens et vise à fournir des informations essentielles pour protéger les populations de cétacés menacées par la pollution, la surpêche et les changements climatiques.\r\nLes chercheurs espèrent que le projet Life-SeaDetect sera un outil important pour aider à protéger les espèces marines menacées, en fournissant des données précises sur les schémas de comportement des cétacés et en aidant les gestionnaires de l\'environnement à prendre des mesures pour réduire les menaces qui pèsent sur ces animaux.'),
(7, 'Mars', 'https://www.actuia.com/actualite/comment-roblox-veut-revolutionner-la-creation-de-jeux-sur-sa-plateforme-avec-lia-generative/', 'v_mars.png', 'L\'article décrit comment la plateforme de jeu en ligne Roblox utilise l\'IA générative pour améliorer la création de jeux sur sa plateforme.\r\nRoblox utilise l\'IA générative pour créer des éléments de jeu tels que les terrains, les personnages et les accessoires, en combinant différents éléments pour créer des objets uniques. Les développeurs peuvent ensuite utiliser ces objets pour créer des jeux plus rapidement et avec une plus grande variété de contenu.\r\n\r\nEn somme, l\'utilisation de l\'IA générative par Roblox représente une avancée importante dans la création de jeux en ligne, en offrant aux développeurs un moyen plus rapide, plus abordable et plus efficace de créer du contenu de haute qualité pour les joueurs de la plateforme.'),
(8, 'Avril', 'https://www.actuia.com/actualite/le-laboratoire-nvidia-ai-de-toronto-presente-un-modele-text-to-video-base-sur-stable-diffusion/\r\n', 'v_avril.png', 'L\'article décrit un nouveau modèle de synthèse vidéo développé par le laboratoire d\'IA de NVIDIA à Toronto, qui utilise une technique appelée \"stable diffusion\" pour créer des vidéos à partir de texte.\r\nLes chercheurs de NVIDIA espèrent que leur modèle de synthèse vidéo pourra être utilisé dans de nombreuses applications, telles que la production de films, la publicité, la formation professionnelle et l\'éducation. En outre, la technique de diffusion stable utilisée par le modèle pourrait également être appliquée à d\'autres domaines de l\'IA, tels que la génération de texte ou la synthèse vocale.\r\n\r\nEn somme, le modèle de synthèse vidéo de NVIDIA représente une avancée significative dans la capacité de l\'IA à créer des vidéos à partir de descriptions textuelles, offrant des perspectives intéressantes pour les industries créatives et l\'éducation.');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `justification`
--
ALTER TABLE `justification`
  ADD CONSTRAINT `justification_ibfk_1` FOREIGN KEY (`id_competence`) REFERENCES `competences` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
