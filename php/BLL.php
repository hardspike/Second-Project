<?php

require_once 'DAL.php';
require_once 'Video.php';

function showPlaylist($userName) {

    $sql = "SELECT title, description, category, id FROM youtube JOIN users ON youtube.userID = users.userID WHERE users.Username = '$userName'";

    $dbVideos = select($sql);

    foreach ($dbVideos as $v) {
        $oopVideos[] = new Video($v->title, $v->description, $v->category, $v->id);
    }

    return $oopVideos;
}

function checkIfUserExists($firstName, $lastName, $userName, $password) {

//Check if Username Already Exists
    $sql = "SELECT * FROM users WHERE username = '$userName'";

    if (selectObject($sql) == "") {

        $password = crypt($password, "Ishay");
        $password = sha1($password);

        $sql = "INSERT INTO users (firstname, lastname, username, password) VALUES ('$firstName', '$lastName', '$userName', '$password')";
        insert($sql);

        //Insert Some Videos as Default
        $sql = "INSERT INTO `youtube` (`ID`, `userID`, `Category`, `Title`, `Description`, `Link`) VALUES (NULL, (select MAX(userID) from users), 'Web Development', 'Learn React - React Crash Course 2018 - React Tutorial with Examples | Mosh', 'A 2 hour crash course for using React, by \'Programming with Mosh\'', 'Ke90Tje7VS0'), (NULL, (select MAX(userID) from users), 'Web Development', 'Angular Tutorial for Beginners: Learn Angular from Scratch | Mosh', 'A 2 hour Angular crash course by \'Programming with Mosh\'', 'k5E2AVpwsko'), (NULL, (select MAX(userID) from users), 'Football Respect & Most Beautiful Moments 2018 #2 HD', 'Football Respect & Beautiful, Emotional Moments 2018 HD 2018: Neymar, Salah, Ronaldo', 'COqTVbh3_xs'), (NULL, (select MAX(userID) from users), 'Football', 'Comedy Football & Funniest Moments 2018 ● HD #3', 'A compilation of some of the funniest moments in football in 2018', 'Y4RKXNhYpeo'), (NULL, (select MAX(userID) from users), 'Standup', 'Israeli Standup - Yohay Sponder\r\n', 'Yohay Sponder is performing in America in English', 'EB_IWZ7JmXo'), (NULL, (select MAX(userID) from users), 'Standup', 'FUNNY MONDAY With Shahar Hason - Suddenly English', 'Shachar Hason performing his hilarious show in English', 's9BPl1iV8w4'), (NULL, (select MAX(userID) from users), 'Music', 'Disturbed - The Sound Of Silence [Official Music Video]', 'A cover of \"Sound of Silence\" by Disturbed', 'u9Dg-g7t2l4'), (NULL, (select MAX(userID) from users), 'Music', 'DJ Khaled - No Brainer (Official Video) ft. Justin Bieber, Chance the Rapper, Quavo', 'A new song by DJ Khaled called \"No Brainer\" featuring Justin Bieber, Chance the Rapper & Quavo', 'kxloC1MKTpg')";
        insert($sql);

        return true;
    } else {
        return false;
    }
}

function validateLogin($userName, $password) {

    $password = crypt($password, "Ishay");
    $password = sha1($password);

    $sql = "SELECT * FROM users WHERE username = '$userName' and password = '$password'";

    if (selectObject($sql) == "") {
        return false;
    } else {
        return true;
    }
}

function updateVideo($videoID, $title, $description, $category, $videoLink) {


    $sql = "UPDATE youtube SET Title = '$title', Description = '$description', Category = '$category', Link = '$videoLink'  WHERE youtube.ID = $videoID";

    update($sql);
}

function deleteVideo($videoID) {


    $sql = "DELETE FROM youtube WHERE youtube.id = $videoID";

    delete($sql);
}

function addVideo($title, $description, $category, $videoLink, $userName) {

    $sql = "INSERT INTO `youtube` (`ID`, `userID`, `Title`, `Description`, `Category`, `Link`) VALUES (NULL, (SELECT userID FROM users WHERE users.Username = '$userName'), '$title', '$description', '$category', '$videoLink')";

    insert($sql);
}

function getVideoLink($id) {

    $sql = "SELECT link FROM youtube WHERE id = $id";

    return selectObject($sql);
}

function selectVideo($videoID) {

    $sql = "SELECT * FROM youtube WHERE id = $videoID";
    $dbVideoDetails = selectObject($sql);
    return $dbVideoDetails;
}
