<?php

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
require 'config.inc.php';
require 'MySQL.class.php';

session_start();
$_SESSION['erreur'] = '';
$_SESSION['pseudo'] = '';

$pseudo = Mysql::valid_donnees($_POST["pseudo"]);
$password = Mysql::valid_donnees($_POST["password"]);

if (!empty($pseudo) && !empty($password)){
    $verify = "SELECT pseudo, mdp FROM utilisateur WHERE pseudo= '$pseudo' AND mdp ='$password' limit 1";
    $stmt = Mysql::getInstance()->prepare($verify);
    $stmt->execute();
    $check_user = $stmt->fetchAll();

    if (count($check_user) > 0) {

      $_SESSION['pseudo'] = $pseudo;
      header("Location: Accueil.php");
      exit;

  } else {

    echo $_SESSION['erreur']="Pseudo ou Mot de passe incorrect";
    header('Location: test.php');
    exit;

  }
} else {

  echo $_SESSION['erreur']="Champs manquants. Veuillez recommencer. ";
  header('Location: Connexion.php');
  exit;

}