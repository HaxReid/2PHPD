<html>
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Time2Watch</title>
      <link rel="shortcut icon" href="images/starred-ticket.png">
      <link rel="stylesheet" href="2php.css">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:500&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Playball&display=swap" rel="stylesheet">
      <script src="https://kit.fontawesome.com/966ebd3183.js" crossorigin="anonymous"></script>
</head>
<main>
<body>
  <div class="connErreur"></div>

  <form class="connForm" name="form" method="post" action="verifConnexion.php">
    <input type="text" name="pseudo" placeholder="Votre Pseudo" /><br />
    <input type="password" name="password" placeholder="Mot de passe" /><br />
    <input type="submit" name="valider" value="S'authentifier" />
    <a href="Inscription.php">Créer un compte</a>
  </form>
</body>
</main>
</html>