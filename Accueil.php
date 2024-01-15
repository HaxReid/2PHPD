<?php include 'Header.php'?>
    <main>  
        <div>   
            <div>
                <h1 class='H1'>Last Added</h1>
                
                <?php
                    error_reporting(E_ALL);
                    ini_set('display_errors', TRUE);
                    ini_set('display_startup_errors', TRUE);
                    require 'config.inc.php';
                    require 'MySQL.class.php';

                    $req = "SELECT id_film, titre, image, genre, temps, prix, acteurs, nom, prenom FROM film INNER JOIN realisateur ON film.id_realisateur = realisateur.id_realisateur WHERE lastAdded = 'yes'";
                    $stmt = Mysql::getInstance()->prepare($req);
                    $stmt->execute();

                    while ($donnees = $stmt->fetch()) 
                    {
                    ?>

                    <div>
                        <div class="text_card">
                            <img src=<?=$donnees['image']?> alt='imageFilm'> 
                            <h2><?php echo $donnees['titre']; ?></h2>
                            <p>
                                <?php echo $donnees['genre'];?> / <?php echo $donnees['temps']; ?> / <?php echo $donnees['prix'] . "€"; ?></br></br>
                                De : <a href="Realisateur.php?nom=<?php echo $donnees['nom'];?>"><?php echo $donnees['prenom'];?> <?php echo $donnees['nom'];?></a></br>
                                Avec : <?php echo $donnees['acteurs'];?>
                            </p>
                            <p>
                                <a href="Panier.php?id=<?php echo $donnees['id_film'];?>">Acheter</a>
                            </p><br>
                        </div>
                    </div>

                    <?php
                        }
                        $stmt->closeCursor();
                    ?>                    
            </div>
        </div>
    </main>
