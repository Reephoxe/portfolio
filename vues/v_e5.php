<div class="text-center">
<?php if(!isset($_REQUEST["projet"])){ ?>
<a href="index.php?action=e5&projet=1">GSB Compte Rendu</a>
<a href="index.php?action=e5&projet=2">GSB Paramédical</a>
<?php }else if(($_REQUEST["projet"] == 1)){

 ?>
 <h2>Documentation projet GSB Compte Rendu</h2>
 <br/>
<section>
    <div class="container pt-5">
    <hr>
        <p class="h2 text-center">Tests Unitaires</p>
        <a href="assets/images/tests_unitaires.pdf"><img class="img-fluid pt-5" src="assets/images/tests_unitaires-1.png" alt="tests_unitaires-1"><img class="img-fluid pt-5" src="assets/images/tests_unitaires-2.png" alt="tests_unitaires-2"><img class="img-fluid pt-5" src="assets/images/tests_unitaires-3.png" alt="tests_unitaires-3"></a>
    </div>
</section>
<section>
    <div class="container pt-5">
    <hr>
        <p class="h2 text-center">Tests fonctionnels</p>
        <a href="assets/images/TestsFonctionnelsMartin.pdf"><img class="img-fluid pt-5" src="assets/images/tests_fonctionnels-5.png" alt="tests_fonctionnels-5"><img class="img-fluid pt-5" src="assets/images/tests_fonctionnels-1.png" alt="tests_fonctionnels-1"><<img class="img-fluid pt-5" src="assets/images/tests_fonctionnels-2.png" alt="tests_fonctionnels-2"><img class="img-fluid pt-5" src="assets/images/tests_fonctionnels-3.png" alt="tests_fonctionnels-3"><img class="img-fluid pt-5" src="assets/images/tests_fonctionnels-4.png" alt="tests_fonctionnels-4">/a>
    </div>
</section>
 <?php 
}else if(($_REQUEST["projet"] == 2)){
 ?>

<h2>Documentation projet projet GSB Paramédical</h2>
<section>
    <div class="container pt-5">
    <hr>
        <p class="h2 text-center">Tests Unitaires</p>
        <a href="assets/images/2tests_unitaires.pdf"><img class="img-fluid pt-5" src="assets/images/2tests_unitaires-1.png" alt="tests_unitaires-1"><img class="img-fluid pt-5" src="assets/images/2tests_unitaires-2.png" alt="tests_unitaires-2"></a>
    </div>
</section>
<section>
    <div class="container pt-5">
    <hr>
        <p class="h2 text-center">Tests fonctionnels</p>
        <a href="assets/images/lesTestsFonctionnels.pdf"><img class="img-fluid pt-5" src="assets/images/2tests_fonctionnels-1.png" alt="tests_fonctionnels-5"><img class="img-fluid pt-5" src="assets/images/2tests_fonctionnels-5.png" alt="tests_fonctionnels-1"><<img class="img-fluid pt-5" src="assets/images/2tests_fonctionnels-2.png" alt="tests_fonctionnels-2"><img class="img-fluid pt-5" src="assets/images/2tests_fonctionnels-3.png" alt="tests_fonctionnels-3"><img class="img-fluid pt-5" src="assets/images/2tests_fonctionnels-4.png" alt="tests_fonctionnels-4"><img class="img-fluid pt-5" src="assets/images/2tests_fonctionnels-6.png" alt="tests_fonctionnels-4">/a>
    </div>
</section>

<?php  }?>
</div>