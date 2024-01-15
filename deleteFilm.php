<?php

function delete($id_panier){

    $query = "DELETE FROM panier WHERE id_panier = $id_panier";
    $req = Mysql::getInstance()->prepare($query);
    $req->execute();

}

?>