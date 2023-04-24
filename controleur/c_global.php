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

    
    case 'contact':{
        include("vues/v_contact.php");
        break;
    }

}
?>





