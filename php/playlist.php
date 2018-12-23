<?php
session_start();

if (!isset($_SESSION["userName"])) {
    header("location: login.php");
}

$userName = $_SESSION["userName"];
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/styles.css">
        <link rel="stylesheet" href="../css/responsive.css" media="screen and (max-width: 900px)">
        <script src="../js/index.js"></script>
        <title>Your YouTube Playlist</title>
    </head>
    <body onload="showPlaylist()">
        <div id="welcomeBox">
            <span>Hello <?php echo $userName; ?> |</span>
            <?php
            echo "<a href='../index.php'>Main<a/>"
            . "<br><a href='../index.php?hello=true'>Logout</a>";
            ?>
        </div>
        <h1 id="helloUser">Hello <?php echo $userName; ?>!</h1>
        <input id="userNameBox" type="hidden" value="<?php echo $userName; ?>">

        <h2><span id="ytLogo">Your<span id="ytLogo2"> YouTube </span>Playlist</span></h2>

        <span id="searchSpan">Search Keyword: </span>
        <input id="searchInput" type="text" onkeyup="search()">
        <br>

        <div id="playlistContainer">

            <img id="ytIcon" src="../assets/images/ytIcon.png">
            <h1 id="playlistHeader"><?php echo $userName; ?>'s Playlist</h1>
            <button class="btn btn-primary" id="addBtn" onclick="showAddModal()">+ ADD VIDEO</button>

            <div id="iframeContainer">

                <iframe id="videoFrame" height="100%" width="100%" src="https://www.youtube.com/embed/B8xgCPYlTaM"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                </iframe>
            </div>

            <div id="tableContainer">
                <table id="playlistTable">

                </table>
            </div>
        </div>

        <div id="addModal">
            <div id="addModal-content">
                <h1 id="addModalHeader">Add Video</h1>
                <br><br>

                <label>Title: </label>
                <input type="text" id="addTitleBox" placeholder="Title">
                <br>
                <label>Description: </label>
                <input type="text" id="addDescriptionBox" placeholder="Description">
                <br>
                <label>Category: </label>
                <input type="text" id="addCategoryBox" placeholder="Category"><br>
                <label>YouTube Link: </label>
                <input type="text" id="addLinkBox" placeholder="6mHcllbTVVc">
                <img src="../assets/images/questionMark.png" class="qMark" onmouseover="displayGuidance(event)" onmouseout="hideGuidance()">
                <img src="../assets/images/linkGuidance.png" id="linkGuidance2">


                <br><br>
                <button class="btn btn-primary" id="addVideo" onclick="addVideo()">ADD</button>
                <button class="btn btn-success" onclick="hideModal()">CANCEL</button>
            </div>
        </div>

        <div id="editModal">
            <div id="editModal-content">
                <h1 id="editModalHeader">Edit Video</h1>
                <br><br>

                <label>Video ID </label>
                <input type="number" id="videoIDBox" placeholder="videoID" readonly>
                <br>
                <label>Title </label>
                <input type="text" id="titleBox" placeholder="Title">
                <br>
                <label>Description </label>
                <input type="text" id="descriptionBox" placeholder="Description">
                <br>
                <label>Category </label>
                <input type="text" id="categoryBox" placeholder="Category">
                <br>
                <label>YouTube Link: </label>
                <input type="text" id="linkBox" placeholder="6mHcllbTVVc">
                <img src="../assets/images/questionMark.png" class="qMark" onmouseover="displayGuidance(event)" onmouseout="hideGuidance()">
                <img src="../assets/images/linkGuidance.png" id="linkGuidance1">

                <br><br>
                <button class="btn btn-primary" id="editVideo" onclick="editVideo()">EDIT</button>
                <button class="btn btn-success" onclick="hideModal()">CANCEL</button>
            </div>
        </div>

        <div id="deleteModal">
            <div id="deleteModal-content">
                <h1 id="deleteModalHeader">Are you sure you want to delete this video?</h1>
                <br><br>

                <p id="videoTitle"></p>
                <input type="hidden" id="videoIDInput">

                <br>
                <button class="btn btn-danger" id="deleteVideo" onclick="deleteVideo()">DELETE</button>
                <button class="btn btn-success" onclick="hideModal()">CANCEL</button>
            </div>
        </div>

        <footer><span>©</span> All Right Reserved to Ishay Elimelech 2018 <span>©</span></footer>

    </body>
</html>
