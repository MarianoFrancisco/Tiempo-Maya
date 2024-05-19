var songs = [
    "Tz\'utuj_Q\'ajom.mp3",
    "El_Rey_K\'iche.mp3",
    "El_Alba.mp3"
];

var currentSongIndex = 0;

function playNextSong() {
    currentSongIndex++;
    if (currentSongIndex >= songs.length) {
        currentSongIndex = 0;
    }
    playSongAtIndex(currentSongIndex);
}

function playPreviousSong() {
    currentSongIndex--;
    if (currentSongIndex < 0) {
        currentSongIndex = songs.length - 1;
    }
    playSongAtIndex(currentSongIndex);
}

function playSongAtIndex(index) {
    var audioPlayer = document.getElementById("audioPlayer");
    var audioSource = document.getElementById("audioSource");
    audioSource.src = "audio/" + songs[index];
    audioPlayer.load();
    audioPlayer.play();
}
