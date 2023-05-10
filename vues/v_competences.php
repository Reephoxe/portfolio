<div class="container">
    <p class="h2 text-center">Competences</p>
    <p class="text-center">Retrouvez les différentes compétences.</p>
</div>
<?php 
    foreach($competences as $competence){
?>
<section class="mt-5">
    <div class="container border rounded">
        <p class="h3">Compétence 1.<?php echo $competence["id"] ?></p>
        <div class="row justify-content-between">
            <p class="col"><u><?php echo $competence["nom"] ?></u></p>
            <p class="col text-end"><a href="index.php?action=competence&c=<?php echo $competence['id'] ?>">Cliquez ici pour en savoir plus.</a></p>
        </div>
    </div>
</section>
<?php
    }
?>