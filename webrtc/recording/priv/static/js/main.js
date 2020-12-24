const webSocketUrl = "wss://" + window.location.host + "/record";

function setupLocalVideo(stream) {
    setupVideo("local", stream);
    localStream = stream;
    document.getElementById("local").muted = true;
}

function setupVideo(id, stream) {
    if(!document.getElementById(id)) {
        var template = document.querySelector("template");
        var child = document.importNode(template.content, true);
        child.querySelector("video").id = id; 
        document.getElementById("videochat").appendChild(child);
    }
    document.getElementById(id).srcObject = stream;
}

function onRecord() {
    document.querySelector("#recording_btn").style.display = "none";
    document.querySelector("#recording_msg").style.display = "block";
    record();
}

startStreaming(webSocketUrl, setupLocalVideo, setupVideo);
