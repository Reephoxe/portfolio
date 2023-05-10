<div class="text-center">
<?php if(!isset($_REQUEST["projet"])){ ?>
<a href="index.php?action=e5&projet=1">GSB Compte Rendu</a>
<a href="index.php?action=e5&projet=2">GSB Paramédical</a>
<?php }else if(($_REQUEST["projet"] == 1)){

 ?>
 <h2>Vous êtes bien sur le projet GSB Compte Rendu</h2>
 <?php 
}else if(($_REQUEST["projet"] == 2)){
 ?>

<h2>Vous êtes bien sur le projet GSB Paramédical</h2>

<?php  }?>
</div>