<html lang="fr">
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
<body>

        <header id="header">
            <a class="logo" href="Accueil.php"><img src="images/logo1.png" alt="logo"></a>
            <nav>
                <ul class="nav__links">
                    <form action='Search.php' method="post">
                        <input id="search" type="search" name='search' placeholder="Entrer le titre d'un film ou le nom d'un réalisateur">
                        <input id="submit" type="submit" value="Rechercher">
                    </form>
                    <li><a href="Accueil.php">Accueil</a></li>
                    <li><a href="Action.php">Action</a></li>
                    <li><a href="Drame.php">Drame</a></li>
                </ul>
            </nav>
            <a href='Connexion.php' action='deconnexion.php' ><img class="img_user" src="images/user.png" alt="user"></a>
            <a class="cta" href="Panier.php">Panier</a>
        </header>
