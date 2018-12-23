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
        <h1>Welcome to <span id="ytLogo">Y<span id="ytLogo2">Y</span>P</span></h1>
        <h2><span id="ytLogo">Your<span id="ytLogo2"> YouTube </span>Playlist</span></h2>
        <br>
        <div id="registerContainer">
            <h2>Registration</h2>
            <br><br><br>

            <label>First Name: </label>
            <input type="text" name="firstName" id="firstNameBox">
            <br>
            <label>Last Name: </label>
            <input type="text" name="lastName" id="lastNameBox">
            <br>
            <label>Create a Username: </label>
            <input type="text" name="userName" id="userNameBox">
            <br>
            <label>Choose Your Password: </label>
            <input type="text" name="password" id="passwordBox">
            <input type="hidden" name="command" value="registerAccount">
            <br><br>

            <button class="btn btn-primary" onclick="validateForm()">Create Account</button>
        </div>

        <footer><span>©</span> All Right Reserved to Ishay Elimelech 2018 <span>©</span></footer>

    </body>
</html>
