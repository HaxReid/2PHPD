<?php include 'Header.php'?>
        <main>
            <div class="panier">
                <div class="titrePanier">Panier :</div>

                <?php
                    error_reporting(E_ALL);
                    ini_set('display_errors', TRUE);
                    ini_set('display_startup_errors', TRUE);
                    require 'config.inc.php';
                    require 'MySQL.class.php';
                    require 'deleteFilm.php';

                    session_start();
                    $_SESSION['erreur'] = '';
                    $id_film = $_GET['id'];

                    if ($_SESSION['pseudo']!=''){
                        $insertion = 'INSERT INTO panier(id_film) VALUES(:id_film)';
                        $sth = Mysql::getInstance()->prepare($insertion);

                        $sth->bindParam(':id_film', $id_film);

                        $sth->execute();
                    } else {
                        header("Location: Connexion.php");
                        exit;
                    }
                    
                    $req = "SELECT id_panier, titre FROM film
                    INNER JOIN panier ON panier.id_film = film.id_film 
                    WHERE panier.id_film = film.id_film";
                    $stmt = Mysql::getInstance()->prepare($req);

                    $stmt->execute();

                    while ($donnees = $stmt->fetch()) 
                    {
                ?>

                    <div class="putNameBook">
                        <p class="pWrite"><?php echo $donnees['titre']; ?></p>
                    </div>
                    <div class="buttonPutBookDiv">
                        <button class="buttonPutBook" onclick="<?php delete($donnees['id_panier']);?>">supprimer</button>
                    </div>
                    
                <?php
                    }
                    $stmt->closeCursor();
                ?>
            </div>

        </main>
    </body>
</html>