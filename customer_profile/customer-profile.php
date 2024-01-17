<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../images/bus_icon.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../style.css">
    <title>Customer Profile-eBus</title>
</head>

<body>
    <!---------------- Navbar section ------------------->
    <nav>
        <!-- logo -->
        <a id="logo" href="../index.php">
            <img id="logopic" src="../images/logo.png" alt="logo-pic">
        </a>
        <!-- Navbar -->
        <ul>
            <li><a href="../admin-panel.php" class="button"><- MENU</a></li>
        </ul>
    </nav>
    <!-- ----------------- titlebar --------------  -->
    <div class="titlebar">
        <p>CUSTOMER PROFILE</p>
    </div>
    <!-- ----------- form -------------- -->
    <div class="form-area">
    <form action="data.php" method="post">
            <input name="name" placeholder="Name" type="text">
            <input name="age" placeholder="Age" type="number">
            <input name="contact" placeholder="Contact No." type="number">
            <input name="occupation" placeholder="Occupation (Student/ Businessman/ Service Holder)" type="text">
            <input name="id" placeholder="Student ID/ Reg-No/ Employee ID" type="number">
            <input name="p_details" placeholder="Institution/ Business Type/ Designation" type="text">
            <input name="salary" placeholder="Qualification/ Monthly Profit/ Monthly wage" type="text">
            <button id="submit-btn" name="add_route_btn" type="submit">
            SUBMIT
            </button>
        </form>
    </div>

    <!-- ---------------- footer ----------------- -->
    <footer>
        <div class="footer-links">
            <div class="footer-col">
                <h4>eBus</h4>
                <ul><a href="../index.php">Home</a></ul>
                <ul><a href="#">About</a></ul>
            </div>
            <div class="footer-col">
                <h4>Admin Panel</h4>
                <ul><a href="../admin-panel.php" style="color: red;"onmouseover="this.style.color='white'" onmouseout="this.style.color='red'">*Manage Database</a></ul>
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

    <?php include('data.php') ?>

</body>

</html>