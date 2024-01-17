<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/bus_icon.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>Admin Panel-eBus</title>
</head>

<body>
    <!---------------- Navbar section ------------------->
    <nav>
        <!-- logo -->
        <a id="logo" href="index.php">
            <img id="logopic" src="images/logo.png" alt="logo-pic">
        </a>
        <!-- Navbar -->
        <ul>
            <li><a href="index.php" class="button"><- Home</a></li>
        </ul>
    </nav>
    <!-- ----------------- titlebar --------------  -->
    <div class="titlebar">
        <p>ADMIN-MENU</p>
    </div>
    <!-- ----------- menu -------------- -->
    <div class="menu">
        <ul>
            <li><a href="customer_profile/customer-profile.php">Customer Profile</a></li>
            <li><a href="tickets/tickets.php">Tickets</a></li>
            <li><a href="bus_routes/bus-routes.php">Bus Routes</a></li>
        </ul>
    </div>

    <!-- ---------------- footer ----------------- -->
    <footer>
        <div class="footer-links">
            <div class="footer-col">
                <h4>eBus</h4>
                <ul><a href="index.php">Home</a></ul>
                <ul><a href="#">About</a></ul>
            </div>
            <div class="footer-col">
                <h4>Admin Panel</h4>
                <ul><a href="admin-panel.php" style="color: red;"onmouseover="this.style.color='white'" onmouseout="this.style.color='red'">*Manage Database</a></ul>
                <ul><a href="">Clear all Data</a></ul>
            </div>
            <div class="footer-col">
                <h4>Contact</h4>
                <ul><a href="#">Email</a></ul>
                <ul><a href="#">Facebook</a></ul>
            </div>
        </div>
        <p>© 2023 eBus. All rights reserved.</p>
    </footer>

</body>

</html>