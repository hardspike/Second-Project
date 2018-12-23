<?php
session_start();

if (isset($_REQUEST["hello"])) {
    session_destroy();
    header("Location: index.php");
}

if (isset($_SESSION["userName"])) {
    $userState = $_SESSION["userName"];
} else {
    $userState = "Guest";
}
?>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/responsive.css" media="screen and (max-width: 900px)">
        <script src="js/index.js"></script>
        <title>Your YouTube Playlist</title>
    </head>
    <body>
        <br>
        <div id="welcomeBox">
            <span>Hello <?php echo $userState; ?> |</span>
            <?php
            if ($userState == "Guest") {
                echo "<a href='php/login.php'>Login</a>";
            } else {
                echo "<a href='php/playlist.php'>Playlist<a/>"
                . "<br><a href='index.php?hello=true'>Logout</a>";
            }
            ?>

        </div>
        <h1>Welcome to <span id="ytLogo">Y<span id="ytLogo2">Y</span>P</span></h1>
        <h2><span id="ytLogo">Your<span id="ytLogo2"> YouTube </span>Playlist</span></h2>
        <br><br><br>
        <?php if ($userState == "Guest") {
            echo '<h3>This is where you\'ll be able to create your own costumized youtube playlist, while adding/editing/deleting your selected videos.</h3>
        <h3><a href="php/login.php">Log in</a> to your account to start, or <a href="php/register.php">Register</a> if you don\'t have an account.</h3>';
        } else {
            echo '<h3>Thanks for logging in ' . $userState . '!</h3>'
            . '<h3>Let\'s move right on to your <a href="php/playlist.php">Playlist</a>';
        }
        
                ?>
        <footer><span>©</span> All Right Reserved to Ishay Elimelech 2018 <span>©</span></footer>

    </body>
</html>
