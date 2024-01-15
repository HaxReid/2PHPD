<?php include 'Header.php'?>
    <main>  
        <div>   
            <div>                
                <?php
                error_reporting(E_ALL);
                ini_set('display_errors', TRUE);
                ini_set('display_startup_errors', TRUE);
                require 'config.inc.php';
                require 'MySQL.class.php';
                session_start();
                $_SESSION['erreur'] = "";

                $searchText = Mysql::valid_donnees($_POST["search"]);

                if(!empty($searchText)){
                    $keyword = $searchText;

                    $searchReal = "SELECT nom, prenom, filmographie FROM realisateur WHERE nom LIKE '%$keyword%'";
                    $searchFilm = "SELECT id_film, image, titre, description, temps, genre, acteurs, prix, nom, prenom FROM film INNER JOIN realisateur ON film.id_realisateur = realisateur.id_realisateur WHERE titre LIKE '%$keyword%'";
                    $reqReal = Mysql::getInstance()->prepare($searchReal);
                    $reqFilm = Mysql::getInstance()->prepare($searchFilm);
                    $reqReal->execute();
                    if ($reqReal->rowCount() > 0){
                        $donnees = $reqReal->fetch()
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
                    $reqReal->closeCursor();

                    } else {
                        $reqFilm->execute();

                        if ($reqFilm->rowCount() > 0) {
                            $donnees = $reqFilm->fetch();
                            ?>

                            <div>
                                <div class="text_card">
                                    <img src=<?=$donnees['image'];?> alt='imageFilm'>
                                    <h2><?php echo $donnees['titre']; ?></h2>
                                    <p>
                                        <?php echo $donnees['genre'];?> / <?php echo $donnees['temps']; ?> / <?php echo $donnees['prix'] . "€"; ?></br></br>
                                        De : <a href="Realisateur.php?nom=<?php echo $donnees['nom'];?>"><?php echo $donnees['prenom'];?> <?php echo $donnees['nom'];?></a></br>
                                        Avec : <?php echo $donnees['acteurs'];?>
                                    </p>
                                    <p>
                                        <?php echo $donnees['description'];?>
                                    </p>
                                    <p>
                                        <a href="Panier.php?id=<?php echo $donnees['id_film'];?>">Acheter</a>
                                    </p>
                                </div>
                            </div>

                            <?php
                                $reqFilm->closeCursor();  
                        } else {

                            echo $_SESSION['erreur']="Champ invalide. Veuillez recommencer. ";
                            header('Location: Accueil.php');
                            exit;

                        }
                    }
                } else {

                    echo $_SESSION['erreur']="Champs manquants. Veuillez recommencer. ";
                    header('Location: Accueil.php');
                    exit;
                }
                ?>
            </div>
        </div>
    </main>
