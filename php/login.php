<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/styles.css">
        <script src="../js/index.js"></script>
        <title>Your YouTube Playlist</title>
    </head>
    <body>
        <br>
        <h2><span id="ytLogo">Your<span id="ytLogo2"> YouTube </span>Playlist</span></h2>
        <br><br>
        <div id="loginContainer">
            <h3>Log in to Your Account</h3>
            <br><br><br>

            <label>Username: </label>
            <input type="text" name="userName" id="userNameBox">
            <br>
            <label>Password: </label>
            <input type="text" name="password" id="passwordBox">
            <input type="hidden" name="command" value="logIn">
            <br><br>

            <button class="btn btn-primary" onclick="validateLogin()">Sign In</button>
        </div>

        <footer><span>©</span> All Right Reserved to Ishay Elimelech 2018 <span>©</span></footer>

    </body>
</html>
