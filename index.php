<?php
include 'header.php';
include 'db.php';
?>
<section id="billboard" class="mb-5">
    <div id=" carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/assets/billboard.png" class="d-block w-100" alt="Denny Caknan">
            </div>
        </div>
    </div>
</section>
<section id="summary" class="container-fluid">
    <div class="row">
        <div class="col-8">
            <h1>This Week</h1>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
            <a href="/events.php" class="text-white">See All</a>
        </div>
    </div>
    <div class="row gap-5">
        <?php
        $result = mysqli_query($conn, "SELECT * FROM events where event_date between NOW() and DATE_ADD(NOW(), INTERVAL 7 DAY) ORDER BY event_date, start_time limit 4;");
        if ($result && mysqli_num_rows($result) == 0) {
        ?>
            <h1>No Event</h1>
            <?php } else {
            while ($row = mysqli_fetch_assoc($result)) { ?>
                <div class="col d-flex justify-content-center">
                    <div class="card bg-body-secondary" style="width: 15rem;">
                        <img src="/assets/events/<?= $row['image'] ?>" class="card-img-top" alt="Event Poster">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['name'] ?></h5>
                            <p>Date: <?= $row['event_date'] ?></p>
                            <div class="d-flex justify-content-center">
                                <a href="/checkout.php?id=<?= $row['id'] ?>" class="btn btn-primary">Beli Tiket</a>
                            </div>
                        </div>
                    </div>
                </div>
        <?php }
        } ?>
    </div>
</section>