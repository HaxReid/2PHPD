<?php include 'Header.php'?>

        <main>  
        <div>  
            <div>
                <h1 class='H1'>Réalisateur</h1>

                <?php
                    error_reporting(E_ALL);
                    ini_set('display_errors', TRUE);
                    ini_set('display_startup_errors', TRUE);
                    require 'config.inc.php';
                    require 'MySQL.class.php';

                    $idReal = $_GET['nom'];
                    $req = "SELECT nom, prenom, filmographie FROM realisateur WHERE nom LIKE '%$idReal%' ";
                    $stmt = Mysql::getInstance()->prepare($req);
                    $stmt->execute();

                    $donnees = $stmt->fetch()
                ?>

                <div>
                    <div class="text_card">
                        <h2><?php echo $donnees['prenom']; ?> <?php echo $donnees['nom']; ?></h2>
                        <p>
                            <?php echo $donnees['filmographie']; ?>
                        </p>
                    </div>
                </div>
                
                <?php
                    $stmt->closeCursor();
                ?>
            </div>
        </div>
        </main>
    </body>
</html>