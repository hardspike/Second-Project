var ajax;

function validateForm() {

    var firstNameBox = document.getElementById("firstNameBox");
    var lastNameBox = document.getElementById("lastNameBox");
    var userNameBox = document.getElementById("userNameBox");
    var passwordBox = document.getElementById("passwordBox");

    var firstName = document.getElementById("firstNameBox").value;
    var lastName = document.getElementById("lastNameBox").value;
    var userName = document.getElementById("userNameBox").value;
    var password = document.getElementById("passwordBox").value;

    if (firstName == "") {
        firstNameBox.style.border = "1px solid red";
        alert("First Name is Required!");
        return;
    }
    if (lastName == "") {
        lastNameBox.style.border = "1px solid red";
        alert("Last Name is Required!");
        return;
    }
    if (userName == "") {
        userNameBox.style.border = "1px solid red";
        alert("Please Choose a UserName!");
        return;
    }
    if (password == "") {
        passwordBox.style.border = "1px solid red";
        alert("Please Create a Password!");
        return;
    }

    registerAccount(firstName, lastName, userName, password);
}
function registerAccount(firstName, lastName, userName, password) {

    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=registerAccount&firstName=" + firstName + "&lastName=" + lastName + "&userName=" + userName + "&password=" + password;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = registerResponse;

    ajax.send();

}
function registerResponse() {

    if (ajax.readyState == 4) {
        var response = ajax.responseText;

        if (response === "success") {
            window.location = "success.php";
        } else {
            alert("User Already Exists!");
        }

    }
}

function validateLogin() {

    var userNameBox = document.getElementById("userNameBox");
    var passwordBox = document.getElementById("passwordBox");

    var userName = document.getElementById("userNameBox").value;
    var password = document.getElementById("passwordBox").value;

    if (userName == "") {
        userNameBox.style.border = "1px solid red";
        alert("Please Fill In Your UserName!");
        return;
    }
    if (password == "") {
        passwordBox.style.border = "1px solid red";
        alert("Please Fill In Your Password!");
        return;

    }

    loginAccount(userName, password);
}
function loginAccount(userName, password) {

    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=loginAccount&userName=" + userName + "&password=" + password;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = loginResponse;

    ajax.send();

}
function loginResponse() {
    if (ajax.readyState == 4) {
        var response = ajax.responseText;

        if (response === "success") {
            window.location = "playlist.php";
        } else {
            alert("Invalid Username or Password!");
        }
    }
}



function showPlaylist() {

    var userName = document.getElementById("userNameBox").value;

    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=showPlaylist&userName=" + userName;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = showResponse;

    ajax.send();


}
function showResponse() {
    if (ajax.readyState == 4) { // Data returned from the server.
        if (ajax.status == 200) { // There is no error.

            var response = JSON.parse(ajax.responseText);

            if (Array.isArray(response)) {
                createTable(response);
            } else {
                alert(response.message);
            }

        } else { // There is an error...
            alert("Error! Status: " + ajax.status + ", Message: " + ajax.statusText);
        }
    }
}

function createTable(playlist) {

    var playlistTable = document.getElementById("playlistTable");

    var headerTR = "<thead><tr><th>Title</th><th>Description</th><th>Category</th></tr></thead>";
    
    var tableContent = headerTR;

    for (var i = 0; i < playlist.length; i++) {
        var titleTD = "<td>" + playlist[i].title + "</td>";
        var descriptionTD = "<td>" + playlist[i].description + "</td>";
        var categoryTD = "<td>" + playlist[i].category + "</td>";
        var playlistTR = "<tr>" + titleTD + descriptionTD + categoryTD + "<td id='buttons' name='" + playlist[i].id + "'><img id='playBtn' src='../assets/images/play.png' onclick='playVideo(this.parentElement.getAttribute(`name`)); highlightTR(this.parentNode.parentNode)'><img id='editBtn'src='../assets/images/edit.png' onclick='showEditModal(this.parentElement.getAttribute(`name`))'><img id='deleteBtn'src='../assets/images/delete.png' onclick='showDeleteModal(this.parentElement.getAttribute(`name`))'></td></tr>";
        tableContent += playlistTR;
    }
    
    
    playlistTable.innerHTML = tableContent;

}

function playVideo(videoID) {

    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=getVideoLink&id=" + videoID;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = videoLinkResponse;

    ajax.send();

}
function highlightTR(selectedTR) {

    var TR = document.getElementsByTagName("TR");
    for (var i = TR.length - 1; i >= 0; --i) {
        TR[i].style.backgroundColor = "";
    }
    selectedTR.style.backgroundColor = "rgba(0, 255, 0, 0.2)";

}

function editVideo() {
    var videoIDBox = document.getElementById("videoIDBox");
    var titleBox = document.getElementById("titleBox");
    var descriptionBox = document.getElementById("descriptionBox");
    var categoryBox = document.getElementById("categoryBox");
    var linkBox = document.getElementById("linkBox");

    var videoID = document.getElementById("videoIDBox").value;
    var title = document.getElementById("titleBox").value;
    var description = document.getElementById("descriptionBox").value;
    var category = document.getElementById("categoryBox").value;
    var link = document.getElementById("linkBox");

    if (title == "") {
        alert("Please Enter a Title!");
        titleBox.style.border = "1px solid red";
        return;
    }
    if (description == "") {
        alert("Please Enter a Description!");
        descriptionBox.style.border = "1px solid red";
        return;
    }

    if (category == "") {
        alert("Please Enter a Category!");
        categoryBox.style.border = "1px solid red";
        return;
    }
    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=editVideo&videoID=" + videoID + "&title=" + encodeURIComponent(title) + "&description=" + encodeURIComponent(description) + "&category=" + encodeURIComponent(category) + "&videoLink=" + encodeURIComponent(link);
    ajax.open("GET", url, true);

    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            alert("Video Successfully Edited! Refreshing...");
            window.location = "playlist.php";
        }
    };


    ajax.send();

}

function addVideo() {

    var title = document.getElementById("addTitleBox").value;
    var description = document.getElementById("addDescriptionBox").value;
    var category = document.getElementById("addCategoryBox").value;
    var link = document.getElementById("addLinkBox").value;
    var userName = document.getElementById("userNameBox").value;

    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=addVideo&title=" + encodeURIComponent(title) + "&description=" + encodeURIComponent(description) + "&category=" + encodeURIComponent(category) + "&videoLink=" + encodeURIComponent(link) + "&userName=" + userName;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            alert("Video Successfully Added! Refreshing...");
            window.location = "playlist.php";
        }
    };


    ajax.send();

}

function videoLinkResponse() {
    if (ajax.readyState == 4) { // Data returned from the server.
        if (ajax.status == 200) { // There is no error.

            var response = JSON.parse(ajax.responseText);
            document.getElementById("videoFrame").src = "https://www.youtube.com/embed/" + response.link + "?autoplay=1";

        } else { // There is an error...
            alert("Error! Status: " + ajax.status + ", Message: " + ajax.statusText);
        }
    }
}

function showEditModal(videoID) {

    document.getElementById("videoIDBox").value = videoID;

    //Set Input Values (Video Details) With Ajax:
    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=selectVideo&videoID=" + videoID;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) { // Data returned from the server.
            if (ajax.status == 200) { // There is no error.

                var response = JSON.parse(ajax.responseText);
                document.getElementById("titleBox").value = response.Title;
                document.getElementById("descriptionBox").value = response.Description;
                document.getElementById("categoryBox").value = response.Category;
                document.getElementById("linkBox").value = response.Link;

            } else { // There is an error...
                alert("Error! Status: " + ajax.status + ", Message: " + ajax.statusText);
            }
        }
    };

    ajax.send();

    //Show Modal:
    var editModal = document.getElementById("editModal");
    editModal.style.display = "block";
    editModal.style.animation = "fade 1s";
    setTimeout(function () {
        editModal.style.opacity = "1";
    }, 990);
}
function showDeleteModal(videoID) {

    //Set Input Values (Video Details) With Ajax:
    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=selectVideo&videoID=" + videoID;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) { // Data returned from the server.
            if (ajax.status == 200) { // There is no error.

                var response = JSON.parse(ajax.responseText);
                document.getElementById("videoTitle").innerText = '" ' + response.Title + ' "';
                document.getElementById("videoIDInput").value = videoID;

            } else { // There is an error...
                alert("Error! Status: " + ajax.status + ", Message: " + ajax.statusText);
            }
        }
    };

    ajax.send();

    //Show Modal:
    var deleteModal = document.getElementById("deleteModal");
    deleteModal.style.display = "block";
    deleteModal.style.animation = "fade 1s";
    setTimeout(function () {
        deleteModal.style.opacity = "1";
    }, 990);
}

function deleteVideo() {

    var videoID = document.getElementById("videoIDInput").value;

    ajax = new XMLHttpRequest();

    var url = "http://localhost/Second-Project/php/API.php?command=deleteVideo&videoID=" + videoID;
    ajax.open("GET", url, true);

    ajax.onreadystatechange = function () {
        if (ajax.readyState == 4) {
            alert("Video Successfully Deleted! Refreshing...");
            window.location = "playlist.php";
        }
    };


    ajax.send();

}
function showAddModal() {

    var addModal = document.getElementById("addModal");
    addModal.style.display = "block";
    addModal.style.animation = "fade 1s";
    setTimeout(function () {
        addModal.style.opacity = "1";
    }, 990);
}

function hideModal() {
    var deleteModal = document.getElementById("deleteModal");
    var editModal = document.getElementById("editModal");
    var addModal = document.getElementById("addModal");

    editModal.style.display = "none";
    deleteModal.style.display = "none";
    addModal.style.display = "none";
}

window.onclick = function (event) {
    var deleteModal = document.getElementById("deleteModal");
    var editModal = document.getElementById("editModal");
    var addModal = document.getElementById("addModal");

    if (event.target == addModal || event.target == editModal || event.target == deleteModal) {
        addModal.style.display = "none";
        editModal.style.display = "none";
        deleteModal.style.display = "none";
    }
}

function displayGuidance(event) {
    var guideImg = document.getElementById("linkGuidance1");
    var guideImg2 = document.getElementById("linkGuidance2");

    guideImg2.style.left = event.clientX + "px";
    guideImg2.style.top = event.clientY + "px";
    guideImg2.style.display = "block";
    guideImg2.style.animation = "fade 0.5s";

    guideImg.style.left = event.clientX + "px";
    guideImg.style.top = event.clientY + "px";
    guideImg.style.display = "block";
    guideImg.style.animation = "fade 0.5s";

}
function hideGuidance() {
    var guideImg = document.getElementById("linkGuidance1");
    var guideImg2 = document.getElementById("linkGuidance2");

    guideImg.style.display = "none";
    guideImg2.style.display = "none";
}

function search() {

    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("playlistTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
        for (j = 0; j < 3; j++) {
            td = tr[i].getElementsByTagName("td")[j];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
}