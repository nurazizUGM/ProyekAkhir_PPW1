<?php

include 'db.php';
include 'header.php';

$events = $conn->query("SELECT * FROM events e LEFT JOIN (SELECT COUNT(*) as tickets, event_id FROM orders GROUP BY event_id) o ON e.id = o.event_id WHERE tickets IS NULL OR tickets < quota ORDER BY event_date, start_time");
?>

<div class="row my-5">
    <?php while ($event = $events->fetch_assoc()) { ?>
        <div class="col-12 col-md-4 mb-3">
            <div class="card" style="height: 48rem">
                <img src="/assets/events/2.png" class="card-img-top" alt="Cover" style="height: 60%; object-fit: cover; object-position: center">
                <div class="card-body mb-2" style="height: 40%">
                    <h5 class="card-title"><?= $event['name'] ?></h5>
                    <p class="card-text">Location: <?= $event['location'] ?></p>
                    <p class="card-text">Date: <?= $event['event_date'] ?></p>
                    <p class="card-text">Time: <?= $event['start_time'] ?> - <?= $event['end_time'] ?></p>
                    <p class="card-text">Quota: <?= $event['quota'] ?></p>
                    <p class="card-text">Price: <?= $event['price'] ?></p>
                    <a href="checkout.php?id=<?= $event['id'] ?>" class="btn btn-primary">Get Ticket</a>
                </div>
            </div>
        </div>
    <?php } ?>
</div>