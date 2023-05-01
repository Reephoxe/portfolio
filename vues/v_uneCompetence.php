<?php
$i = 0;
foreach($uneCompetence as $uneJustification){
    $i= $i +1;
    
    ?>
    <section>
        <div class="container rounded bg-light p-5 my-5">
            <p class="text-center h3">Justification n° <?php echo $uneJustification["id_justification"]; ?></p>
            <div class="row mt-5 text-center"> 
                <p class="col align-self-center"><?php echo $uneJustification["text"]; ?></p>
                <img class="img-fluid col w-25 h-25" src="assets/images/preuves/<?php echo $uneJustification['image']; ?>" alt="une preuve">
            </div>
        </div>
    </section>
    <hr/>
    <?php
}




?>
<div class="text-center">
    <a class="border rounded bg-light p-2" href="index?action=competence">Revenir aux compétences</a>

</div>
