var vignette:FlxSprite = new FlxSprite(0, 0);
var whited:FlxSprite = new FlxSprite(0, 0);

function create() {
	vignette.loadGraphic(Paths.image("vignettes/vignettedarker"));
	vignette.screenCenter();

	whited.loadGraphic(Paths.image("white"));
	whited.screenCenter();

	add(vignette);
	vignette.cameras = [camHUD];

	add(whited);
	whited.cameras = [camHUD];

	camGame.alpha = 0.3;
	whited.alpha = 0;
}

function beatHit(curBeat:Int) {
	if (curBeat == 65) {
		FlxTween.tween(whited, {y: whited.y += 0, alpha: 1}, Conductor.crochet / 250, {
			ease: FlxEase.cubeInOut,
		});
	}
	if (curBeat == 68) {
		camGame.alpha = 1;

		FlxTween.tween(whited, {y: whited.y += 0, alpha: 0}, Conductor.crochet / 500, {
			ease: FlxEase.cubeInOut,
		});
	}
}