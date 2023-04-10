var songsData = [];

var userTableBody = document.getElementById("userTableBody");
var rows = userTableBody.getElementsByTagName("tr");

for (var i = 0; i < 16; i++) {
    var cells = rows[i].getElementsByTagName("td");
    var background = "/img/songs/" + cells[1].textContent + ".jpg";
    var name = cells[3].textContent;
    var singer = cells[2].textContent;
    var pathSong = "/music/list-song/" + cells[7].textContent;
    var duration = cells[5].textContent.split(':').slice(0, 2).join(':'); // Remove seconds from duration

    var obj = {
        background: background,
        name: name,
        singer: singer,
        pathSong: pathSong,
        duration: duration,
    };
    songsData.push(obj);
}
