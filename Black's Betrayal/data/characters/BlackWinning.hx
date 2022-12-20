var movement = 50;

function onGetCamPos(a:PointEvent) {
    if (animation.curAnim == null) return;
    switch (animation.curAnim.name) {
        case "singLEFT": a.x -= movement;
        case "singDOWN": a.y += movement;
        case "singUP": a.y -= movement;
        case "singRIGHT": a.x += movement;
    }
}

function beatHit(curBeat:Int) {
    if (curBeat = 376) {
	movement = 75;
    }
}
