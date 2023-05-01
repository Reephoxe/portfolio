<?php
include_once 'bd.inc.php';



function getAllCompetences()
{

    try {

        $monPdo = connexionPDO();
        $req = 'SELECT id,nom FROM competences';
        $res = $monPdo->query($req);
        $result = $res->fetchAll();

        return $result;
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
}
function getOneCompetence($id)
{

    try {
        $getInfo = connexionPDO();
        $req = $getInfo->prepare('SELECT id_justification, id_competence, text, image  FROM justification WHERE `id_competence`=:id');
        $req->bindParam(':id', $id, PDO::PARAM_STR);
        $req->execute();
        $res = $req->fetchAll();

        return $res;
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
}
function getVeille(){
    try {

        $monPdo = connexionPDO();
        $req = 'SELECT id,mois, lien_article, image, description FROM veille';
        $res = $monPdo->query($req);
        $result = $res->fetchAll();

        return $result;
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
}


?>