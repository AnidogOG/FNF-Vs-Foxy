package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.*;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;
import flixel.math.FlxMath;
import flixel.addons.transition.FlxTransitionableState;
import sys.FileSystem;
import flixel.addons.ui.FlxInputText;
import flixel.addons.display.FlxBackdrop;
import lime.system.System;  

class GalleryState extends MusicBeatState
{
    var itemGroup:FlxTypedGroup<GalleryImage>;
    var imagePaths:Array<String>;
    var imageDescriptions:Array<String>;
    var imageTitle:Array<String>;
    var linkOpen:Array<String>;
    var currentIndex:Int = 0;
    var descriptionText:FlxText;
    var titleText:FlxText;
    var background:FlxSprite;
    var imageSprite:FlxSprite;
    var bg:FlxSprite;
    var backspace:FlxSprite;
    var intendedColor:Int;
	var colorTween:FlxTween;
    var imagePath:String = "gallery/";
    var openLink:String;

    override public function create():Void
    {
        // idk i didnt rlly experiment w this shit if anything bugs out here just remove the 2 lines
        Paths.clearStoredMemory();
		Paths.clearUnusedMemory();
        
        // Place your preferred galleryMusic file in the same folder freakyMenu is in.
        // Comment out the line if you don't want the music to change. If not the menu might be silent.
        FlxG.sound.playMusic(Paths.music("galleryMusic"));

		transIn = FlxTransitionableState.defaultTransIn;
		transOut = FlxTransitionableState.defaultTransOut;

        // Set up background
        background = new FlxSprite(10, 50).loadGraphic(Paths.image("gallery/ui/void"));
        background.setGraphicSize(Std.int(background.width * 1));
        background.screenCenter();
        add(background);

        //Setup the bars
        background = new FlxSprite(10, 50).loadGraphic(Paths.image("gallery/ui/bars"));
        background.setGraphicSize(Std.int(background.width * 1));
        background.screenCenter();
        add(background);

        // Set up image paths and descriptions
        imagePaths = ["Foxy", "Sophie", "Sarah", "Denna", "Kattie", "Diego", "Fozghon", "Allison", "Him", "Her", "Dinksie", "Catherine", "Luna", "Dark", "Dog", "TheHidden", "Jack", "FoxyConcept", "TheObservers", "Eggfifi", "DisruptGuy", "FoxyApple", "SophieFramed", "FoxyFramed", "FoxyUnhinge", "DiegoCopGuy", "DennaCopper", "Icoose", "blank", "PressEnter"];
        imageTitle = ["Render Of Foxy", "Render Of Sophie", "Render Of Sarah", "Render Of Denna", "Render Of Kattie", "Render Of Diego", "Render Of Fozghon", "Render Of Allison", "Render Of Him", "Render Of Her", "Render Of Dinksie", "Render Of Catherine", "Render Of Luna", "Render Of Dark", "Render Of Dog", "Render Of The Hidden", "Render Of Jack", "Concept Art Of Foxy", "Concept Art Of The Observers", "Unused Scrambled Fifi Render", "Unused Disruption Guy Render", "Unused Applecore Foxy Render", "Unused Wireframe Sophie Render", "Unused Wireframe Foxy Render", "Unused Unhinged Foxy Render", "Unused Enforcers Diego Render", "Unused Enforcers Denna Render", "Unused Cover Icons", "", ""];

        itemGroup = new FlxTypedGroup<GalleryImage>();

        for (id => i in imagePaths) {
            var newItem = new GalleryImage();
            newItem.loadGraphic(Paths.image(imagePath + i));
            newItem.ID = id;
            itemGroup.add(newItem);
        }
        
        add(itemGroup);

        titleText = new FlxText(50, 50, FlxG.width - 100, imageTitle[currentIndex]);
        titleText.screenCenter(X);
        titleText.setFormat(null, 40, 0xffffff, "center");
        titleText.setFormat(Paths.font("vcr.ttf"), 32);
        add(titleText);

        backspace = new FlxSprite(-0, 560);
        backspace.frames = Paths.getSparrowAtlas('gallery/ui/backspace');
        backspace.animation.addByPrefix('backspace to exit white0', "backspace to exit white0", 24);
        backspace.animation.play('backspace to exit white0');
        backspace.updateHitbox();
        add(backspace);
        
        persistentUpdate = true;
        changeSelection();
        super.create();
        CustomFadeTransition.nextCamera = FlxG.cameras.list[FlxG.cameras.list.length - 1];

        #if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In The Gallery", null);
		#end
    }
    

    var allowInputs:Bool = true;
    
override public function update(elapsed:Float):Void
{
    super.update(elapsed);

    // Handle left and right arrow keys to scroll through image
    if ((controls.UI_LEFT_P || controls.UI_RIGHT_P) && allowInputs) {
        changeSelection(controls.UI_LEFT_P ? -1 : 1);
        FlxG.sound.play(Paths.sound("scrollMenu"));
    }
    
    if (controls.BACK && allowInputs)
    {
        allowInputs = false;
        FlxG.sound.play(Paths.sound('cancelMenu'));
        MusicBeatState.switchState(new MainMenuState());
        backspace.animation.addByPrefix('backspace to exit', "backspace to exit", 12);
        backspace.animation.play('backspace to exit');
        FlxG.sound.playMusic(Paths.music("freakyMenu")); // Comment this out if not using a custom galleryMenu music theme
    }
    
    // Handle opening the link when the desired input (e.g., ENTER) is detected
    if (controls.ACCEPT && allowInputs)
    {
        CoolUtil.browserLoad(openLink);

        // After opening the link, you can handle any other actions or updates as needed.
        // For example, you may want to play a sound, show a message, or perform other logic.
    }
}

    
    private function changeSelection(i = 0)
    {
    currentIndex = FlxMath.wrap(currentIndex + i, 0, imageTitle.length - 1);

    titleText.text = imageTitle[currentIndex]; 

            var linkOpen:Array<String> = [
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "https://drive.google.com/drive/folders/1IWk45dqyzqh-KjMr9h4kARFUTBCi6xmV?usp=sharing",
            // Add other links here for each image
        ];

    openLink = linkOpen[currentIndex];  // Update the link based on the current index

    var change = 0;
    for (item in itemGroup) {
        item.posX = change++ - currentIndex;
        item.alpha = item.ID == currentIndex ? 1 : 0.6;
        }
    }
}

class GalleryImage extends FlxSprite {
    public var posX:Float = 0;
    
    override function update(elapsed:Float) {
        super.update(elapsed);
        x = FlxMath.lerp(x, (FlxG.width - width) / 2 + posX * 780, CoolUtil.boundTo(elapsed * 3, 0, 1));
    }
}

function boundTo(value:Float, min:Float, max:Float):Float {
        var newValue:Float = value;
        if(newValue < min) newValue = min;
        else if(newValue > max) newValue = max;
        return newValue;
    }