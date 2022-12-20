import flixel.text.FlxText;
import flixel.util.FlxStringUtil;
import flixel.ui.FlxBar;

var hideNseek:Float = new FlxText(20, 10, FlxG.width, songLength, 64); 
var seekNhide:Float = 0;
var timerBar = new FlxBar(15, 10, LEFT_TO_RIGHT, 563, 40);
var timerBG = new FlxSprite(5, 0);

function create() {
    hideNseek.cameras = [camHUD];
    hideNseek.setFormat("Constantia Bold", 32);
    
    timerBar.cameras = [camHUD];
	timerBar.antialiasing = true;
    timerBar.createGradientBar([0xFF000000], [0xFFdb0000] , 0, 180); 

    timerBG.loadGraphic(Paths.image("barBG"));
    timerBG.cameras = [camHUD];
    timerBG.antialiasing = true;
}

function postCreate() {
    scoreTxt.visible = false;
    missesTxt.visible = false;
    accuracyTxt.visible = false;
    iconP1.visible = false;
    iconP2.visible = false;
    healthBar.visible = false;
    healthBarBG.visible = false;
    
    for (i in [missesTxt, accuracyTxt, scoreTxt, iconP1, iconP2, healthBar, healthBarBG]) i.visible = false;

    for (i in cpuStrums.members) i.x += 98461298718417;
    for (i in playerStrums.members) i.x -= 325;
}

function onSongStart() {
    add(timerBar);
    add(timerBG);
    add(hideNseek);
    timerBar.percent = 100;
}

function update(elapsed:Float) {
    if (health > 0.00000001) {
        health = 0.00000001;
    }
    seekNhide = songLength - Conductor.songPosition;
    hideNseek.text = FlxStringUtil.formatTime(seekNhide / 1000, false);

    timerBar.percent -= 0.004;
}
