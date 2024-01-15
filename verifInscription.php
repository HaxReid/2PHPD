<?php
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
require 'config.inc.php';
require 'MySQL.class.php';

session_start();
$_SESSION['erreur'] = "";
$_SESSION['pseudo'] = '';


$nom = Mysql::valid_donnees($_POST["nom"]);
$prenom = Mysql::valid_donnees($_POST["prenom"]);
$pseudo = Mysql::valid_donnees($_POST["pseudo"]);
$password = Mysql::valid_donnees($_POST["password"]);
$passconf = Mysql::valid_donnees($_POST["passconf"]);

if (!empty($nom) && !empty($prenom)&& !empty($pseudo) && !empty($password) && !empty($_POST['passconf'])) {

    $verify_pseudo = "SELECT pseudo FROM utilisateur WHERE pseudo= :pseudo LIMIT 1";
    $stmt = Mysql::getInstance()->prepare($verify_pseudo);
    $stmt->execute(array('pseudo' => $pseudo));
    $user_pseudo = $stmt->fetchAll();

    if (count($user_pseudo) > 0) {

        $_SESSION['erreur'] = "le pseudo existe déjà!";
        header('Location: Inscription.php');

    } else if ($password === $passconf){

        $insertion = 'INSERT INTO utilisateur(nom, prenom, pseudo, mdp) VALUES(:nom, :prenom, :pseudo, :mdp)';
        $sth = Mysql::getInstance()->prepare($insertion);

        $sth->bindParam(':nom',$nom);
        $sth->bindParam(':prenom',$prenom);
        $sth->bindParam(':pseudo',$pseudo);
        $sth->bindParam(':mdp',$password);

        $sth->execute();

        $_SESSION['pseudo'] = $pseudo;
        header("Location: Accueil.php");
        exit;

    } else {

        echo $_SESSION['erreur']="Mots de passe incorrects";
        header('Location: Inscription.php');
        exit;

    }
} else {

    echo $_SESSION['erreur']="Champs manquants. Veuillez recommencer. ";
    header('Location: Inscription.php');
    exit;

}




