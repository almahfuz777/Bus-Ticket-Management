<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/bus_icon.png" type="image/x-icon" />
    <!-- ----fonts---- -->
    <link href="https://fonts.googleapis.com/css2?family=Graduate&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>Home-eBus</title>
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
            <li><a href="admin-panel.php" style="color: red;"onmouseover="this.style.color='grey'" onmouseout="this.style.color='red'">*Admin Panel</li>
            <li><a href="bus_routes/bus-routes.php">Routes</a></li>
            <li><a href="#">Plans</a></li>
            <li><a href="customer_profile/customer-profile.php"" class="button">Sign In</a></li>
        </ul>
    </nav>
    
    <!-- ----------------- hero section --------------- -->
    <div class="hero">
        <div class="container">
            <div class="heroText">
                <p class="heroText1">Secure, Speedy and Stress-Free Bus Ticketing</p>
                <p class="heroText2">Hop Onboard with Hassle-Free bus ticketing.</p>
                <a class="button" href="customer_profile/customer-profile.php">Begin Your Adventure</a>
            </div>
            <div class="heroPic">
                <img src="images/bus.png" alt="">
            </div>
        </div>
    
        <!-- ----------------- text ----------------- -->
        <div class="textarea">
            <p class="textarea1">Your Path to Seamless Bus Travel</p>
            <p class="textarea2">Unlock the Best Ticket Deals Online</p>
        </div>
    </div>
    
    
    <!-- ----------------- pricing ----------------- -->
    <div class="pricing">
        <div class="pricing-card" id="pc1">
            <h3>Single Trip</h3>
            <p>Pay as you go</p>
            <p style="font-size: 32px;">?<span style="font-size: 19px; color: rgb(135, 135, 135);">/ trip</span></p>
            <p>Per user.</p><br>
            <a id="button" href="#">FIND ROUTES</a>
        </div>
        <div class="pricing-card" id="pc2">
            <h3>Weekly Pass</h3>
            <p>Unlimited Rides</p>
            <p style="font-size: 32px;">৳499<span style="font-size: 19px; color: rgb(135, 135, 135);">/ month</span></h3>
            <p>Per user.</p><br>
            <a id="button" href="#">CHOOSE PLAN</a>
        </div>
        <div class="pricing-card" id="pc3">
            <h3>Monthly Pass</h3>
            <p>Unlimited Rides</p>
            <p style="font-size: 32px;">৳1799<span style="font-size: 19px; color: rgb(135, 135, 135);">/ month</span></p>
            <p>Per user.</p><br>
            <a id="button" href="#">CHOOSE PLAN</a>
        </div>
    </div>
    <span id="pricing-tag">PRICING</span>

    <!-- --------------- routes -------------- -->
    <div class="routes">
        <div class="container">
            <div class="heroText">
                <p class="heroText1">Check for your convenient routes</p>
                <p class="heroText2">Travel anywhere inside Dhaka City with ease. We got it all covered</p>
                <a class="button" href="bus_routes/bus-routes.php">Explore</a>
            </div>
            <div class="heroPic">
                <img src="images/map.png" alt="">
            </div>
        </div>
    </div>

    <!-- --------------- facilities -------------- -->
    <div class="facilities">
        <div class="container">
            <div class="heroText">
                <p class="heroText1">Safe Journey with maximum comfort</p>
                <p class="heroText2">Ensuring you the maximum comfort you can expect in a bus journey.</p>
            </div>
            <div class="heroPic">
                <img src="images/feature1.jpeg" alt="">
                <img src="images/feature2.jpeg" alt="">
                <img src="images/feature3.jpeg" alt="">
            </div>
        </div>
    </div>

    <!-- --------------- payment -------------- -->
    <div class="payment-methods">
        <img src="images/payment_methods.png" alt="">
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
                <ul><a href="#">Clear all Data</a></ul>
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