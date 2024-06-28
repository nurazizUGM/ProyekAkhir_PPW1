<?php
include 'db.php';
include 'header.php';

if (!isset($_GET['id'])) {
    header("Location: index.php");
    exit;
}
$id = $_GET['id'];
$event = $conn->query("SELECT * FROM events WHERE id = $id")->fetch_assoc();
?>

<div class="container d-flex align-items-center justify-content-center flex-column absolute w-100" style="min-height: 80vh;">
    <div class="row mt-3 mb-2">
        <div class="col">
            <h1 class="text-center">Checkout</h1>
        </div>
    </div>
    <div class="row h-50 w-75 w-md-100 mb-5 mb-md-0">
        <div class="col-12 col-md-4">
            <div class="d-flex justify-content-center mb-5">
                <img src="/assets/events/<?= $event['image'] ?>" alt="Cover" class="img-fluid">
            </div>
        </div>
        <div class="col-12 col-md-8">
            <h1 class="mb-5"><?= $event['name'] ?></h1>
            <div class="row mb-3">
                <div class="col-6 col-md-2">
                    <h5>Date</h5>
                </div>
                <div class="col-6">
                    <h5>: <?= $event['event_date'] ?></h5>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-6 col-md-2">
                    <h5>Time</h5>
                </div>
                <div class="col-6">
                    <h5>: <?= $event['start_time'] ?> - <?= $event['end_time'] ?></h5>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-6 col-md-2">
                    <h5>Location</h5>
                </div>
                <div class="col-6">
                    <h5>: <?= $event['location'] ?></h5>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-6 col-md-2">
                    <h5>Price</h5>
                </div>
                <div class="col-6">
                    <h5>: Rp <?= $event['price'] ?></h5>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-6 col-md-2">
                    <h5>Quantity</h5>
                </div>
                <div class="col-6">
                    <h5>: <input type="number" name="quantity" id="quantity" min="1" max="10" value="1"></h5>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-6 col-md-2">
                    <h5>Total Price</h5>
                </div>
                <div class="col-6">
                    <h5>: Rp <span id="total"><?= $event['price'] ?></span></h5>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-5 mb-md-0">
        <div class="col d-flex justify-content-end"><button class="btn btn-primary" id="checkout">Checkout</button></div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $("#quantity").change(function() {
            var total = $("#quantity").val() * <?= $event['price'] ?>;
            $("#total").text(total);
        })
        $("#checkout").click(function() {
            window.location.href = `invoice.php?id=<?= $id ?>&quantity=${$("#quantity").val()}`
        })
    })
</script>