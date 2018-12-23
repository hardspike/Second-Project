<?php

require_once "BLL.php";

$command = $_REQUEST["command"];

//Declaring All Variables If They Exist
if (isset($_REQUEST["firstName"])) {
    $firstName = $_REQUEST["firstName"];
}
if (isset($_REQUEST["lastName"])) {
    $lastName = $_REQUEST["lastName"];
}
if (isset($_REQUEST["userName"])) {
    $userName = addslashes($_REQUEST["userName"]);
}
if (isset($_REQUEST["password"])) {
    $password = addslashes($_REQUEST["password"]);
}
if (isset($_REQUEST["id"])) {
    $id = ($_REQUEST["id"]);
}
if (isset($_REQUEST["videoID"])) {
    $videoID = ($_REQUEST["videoID"]);
}
if (isset($_REQUEST["title"])) {
    $title = addslashes($_REQUEST["title"]);
}
if (isset($_REQUEST["description"])) {
    $description = addslashes($_REQUEST["description"]);
}
if (isset($_REQUEST["category"])) {
    $category = addslashes($_REQUEST["category"]);
}
if (isset($_REQUEST["videoLink"])) {
    $videoLink = addslashes($_REQUEST["videoLink"]);
}


switch ($command) {

    case "registerAccount":

        //PHP Validation:
        if ($userName == "" || $password == "" || $firstName == "" || $lastName == "") {
            break;
        }

        if (checkIfUserExists($firstName, $lastName, $userName, $password) == true) {

            echo "success";
            break;
        } else {

            echo "failure";
            break;
        }

    case "loginAccount":

        //PHP Validation:
        if ($userName == "" || $password == "") {
            break;
        }

        if (validateLogin($userName, $password) == true) {

            session_start();
            $_SESSION["userName"] = $userName;

            echo "success";
            break;
        } else {

            echo "failure";
            break;
        }

    case "selectVideo":

        $videoDetails = selectVideo($videoID);
        echo json_encode($videoDetails);
        break;

    case "editVideo":

        //PHP Validation:
        if ($title == "" || $description == "" || $category == "" || $videoLink == "") {
            break;
        }

        updateVideo($videoID, $title, $description, $category, $videoLink);
        break;

    case "addVideo":

        //PHP Validation:
        if ($userName == "" || $title == "" || $description == "" || $category == "" || $videoLink == "") {
            break;
        }

        addVideo($title, $description, $category, $videoLink, $userName);
        break;

    case "deleteVideo":

        deleteVideo($videoID);
        break;

    case "showPlaylist":

        $oopVideos = showPlaylist($userName);
        echo json_encode($oopVideos);
        break;

    case "getVideoLink":

        $videoLink = getVideoLink($id);
        echo json_encode($videoLink);
        break;
}

