// styles language selection dropdown menu
const selectIdiom = document.getElementById("idiom");
selectIdiom.addEventListener("mouseenter", () => selectIdiom.style.backgroundColor = "var(--low-gray)");
selectIdiom.addEventListener("mouseleave", () => selectIdiom.style.backgroundColor = "transparent");

// sets autoplay and player controls
let player;
function onYouTubeIframeAPIReady() {
    player = new YT.Player('yt-player', {
        height: '350',
        width: '622',
        videoId: 'Gc2en3nHxA4',
        playerVars: {
            autoplay: 0,
            controls: 1
        }
    });
}

// starts autoplaying the video at the beginning as soon as the modal is opened
function openVideoModal() {
    document.getElementById('what-is-bitcoin').showModal();
    player && typeof player.playVideo === 'function' ? player.playVideo() : null;
}

// ends video playback when the modal is closed
function closeVideoModal() {
    document.getElementById('what-is-bitcoin').close();
    player && typeof player.stopVideo === 'function' ? player.stopVideo() : null;
}

// updates the current year date in the information section
document.getElementById("current_year").textContent = new Date().getFullYear();