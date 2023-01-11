package funkin.system;

import flixel.input.FlxInput.FlxInputState;
import flixel.input.keyboard.FlxKey;

class Controls {
    public function new() {}

    public var UI_UP(get, never):Bool;

    function get_UI_UP():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_UP, PRESSED);
    }

    public var UI_UP_P(get, never):Bool;

    function get_UI_UP_P():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_UP, JUST_PRESSED);
    }

    public var UI_DOWN(get, never):Bool;

    function get_UI_DOWN():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_DOWN, PRESSED);
    }

    public var UI_DOWN_P(get, never):Bool;

    function get_UI_DOWN_P():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_DOWN, JUST_PRESSED);
    }

    public var UI_LEFT(get, never):Bool;

    function get_UI_LEFT():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_LEFT, PRESSED);
    }

    public var UI_LEFT_P(get, never):Bool;

    function get_UI_LEFT_P():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_LEFT, JUST_PRESSED);
    }

    public var UI_RIGHT(get, never):Bool;

    function get_UI_RIGHT():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_RIGHT, PRESSED);
    }

    public var UI_RIGHT_P(get, never):Bool;

    function get_UI_RIGHT_P():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_RIGHT, JUST_PRESSED);
    }

    public var ACCEPT(get, never):Bool;

    function get_ACCEPT():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_ACCEPT, JUST_PRESSED);
    }

    public var BACK(get, never):Bool;

    function get_BACK():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_BACK, JUST_PRESSED);
    }

    public var PAUSE(get, never):Bool;

    function get_PAUSE():Bool {
        return checkKeys(OptionsAPI.save.data.CONTROLS_UI_PAUSE, JUST_PRESSED);
    }

    /**
     * Saves your controls to the filesystem.
     */
    public function flush() {
        OptionsAPI.flush();
    }

    // internal functions
    function checkKeys(keys:Array<Null<FlxKey>>, status:FlxInputState) {
        for(key in keys) {
            if(checkKey(key, status))
                return true;
        }
        return false;
    }

    function checkKey(key:Null<FlxKey>, status:FlxInputState) {
        if(key == null || key == NONE) return false;
        return FlxG.keys.checkStatus(key, status);
    }
}