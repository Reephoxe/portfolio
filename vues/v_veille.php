<div class="container">
    <p class="h2 text-center">Veille</p>
    <p class="text-center">Retrouvez les différents articles de veille.</p>
</div>
<?php 
    foreach($veille as $uneVeille){
?>
<section class="mt-5">
    <div class="container border rounded">
        <p class="h3"><u><?php echo $uneVeille["mois"] ?></u></p>
        <div class="row mt-5 text-center h-50"> 
                <p class="col align-self-center"><?php echo $uneVeille["description"]; ?></p>
                <img class="img-fluid col w-25 h-100" src="assets/images/preuves/<?php echo $uneVeille['image']; ?>" alt="une preuve">
            </div>
            <a class="" href="<?php echo $uneVeille["lien_article"] ?>">Aller à l'article</a>
    </div>
</section>
<?php
    }
?>