function onGetCamPos(a:PointEvent) {
    if (animation.curAnim == null) return;
    switch (animation.curAnim.name) {
        case "singLEFT": a.x -= 50;
        case "singDOWN": a.y += 50;
        case "singUP": a.y -= 50;
        case "singRIGHT": a.x += 50;
    }
}