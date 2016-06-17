function countdown(minutes) {
    var seconds = 60;
    var mins = minutes

    function tick() {
        var counter = document.getElementById('timer');
        var current_minutes = mins-1
        seconds--;
        counter.innerHTML = current_minutes.toString() + ":" + (seconds < 10 ? "0" : "") + String(seconds);
        if( seconds > 0 ) {
            myVar = setTimeout(tick, 1000);
        } else {
            if(mins > 1){
                countdown(mins-1);           
            }
        }

    }
    tick();

 
}

function myStopFunction(){
    clearTimeout(myVar);
    document.getElementById("timer").innerHTML = ""
}
