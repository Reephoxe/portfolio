<?php

if (!isset($_REQUEST['action']) || empty($_REQUEST['action'])) {
	$action = "accueil";
} else {
	$action = $_REQUEST['action'];
}
switch ($action) {
	case 'accueil': {
        include("vues/v_accueil.php");
        break;
    }
    case 'competence':{
        if(isset($_REQUEST['c'])){
            $uneCompetence = getOneCompetence($_REQUEST['c']);
            include("vues/v_uneCompetence.php");
        }else{
            $competences = getAllCompetences();
            include("vues/v_competences.php");
        }
        break;
    }
    case 'veille':{
        $veille = getVeille();
        include("vues/v_veille.php");
        break;
    }

    case 'contact':{
        include("vues/v_contact.php");
        break;
    }
    case 'e5':{
        include("vues/v_e5.php");
        break;
    }
    case 'certification': {
        include("vues/v_certification.php");
        break;
    }

}
?>





