
local ScriptColors = require(game.ReplicatedStorage.ScriptColors)

local function script(id, name, move, maxSize, color, img, desc, ...)
    return {
        Id = id;
        Name = name;
        Desc = desc;
        Move = move;
        MaxSize = maxSize;
        AttackList = {...};
    }
end

local function command(id, name, type, sizeReq, cost, range, amount)
    return {
        Id = id;
        Type = 'damage';
        Name = name;
        Desc = "todo";
        SizeReq = sizeReq;
        Cost = cost;
        Range = range;
        Amount = amount;
    }
end

local function scripts(tb)
    local lookup = {}
    for k, v in pairs(tb) do
        lookup[v.Id] = v
    end
    return lookup
end

return scripts{
    --======================================================================--
    --========================== Friendly Programs =========================--
    --======================================================================--
    script('bitman', "Bit-Man", 3, 3,
        ScriptColors.LightGreen, 'rbxasset://Images/',
        "Make sectors of the grid appear or disappear... forever!",
        command('zero', "Zero", 'zero', 0, 0, 1, 1),
        command('one', "One", 'one', 0, 0, 1, 1));    

    script('hack', "Hack", 2, 4,
        ScriptColors.LightBlue, 'rbxasset://Images/',
        "Basic attack script.",
        command('slice', "Slice", 'damage', 0, 0, 1, 2));

    script('hack2', "Hack 2.0", 3, 4,
        ScriptColors.LightBlue, 'rbxasset://Images/',
        "Improved hacking script.",
        command('slice', "Slice", 'damage', 0, 0, 1, 2),
        command('dice', "Dice", 'damage', 3, 0, 1, 3));

    script('hack3', "Hack 3.0", 4, 4,
        ScriptColors.LightBlue, 'rbxasset://Images/',
        "Top of the line hacking script.",
        command('slice', "Slice", 'damage', 0, 0, 1, 2),
        command('mutilate', "Mutilate", 'damage', 4, 0, 1, 4));

    script('golemmud', "Golem.mud", 1, 5,
        ScriptColors.Cyan, 'rbxasset://Images/',
        "Slow and steady attack script.",
        command('thump', "Thump", 'damage', 0, 0, 1, 3));        
    
    script('golemclay', "Golem.clay", 2, 6,
        ScriptColors.Cyan, 'rbxasset://Images/',
        "Clay is stronger than mud.",
        command('bash', "Bash", 'damage', 0, 0, 1, 5));

    script('golemstone', "Golem.stone", 3, 7,
        ScriptColors.Cyan, 'rbxasset://Images/', 
        "Nothing can stand in its way.",
        command('crash', "Crash", 'damage', 0, 0, 1, 7));

    script('wolfspider', "Wolf Spider", 3, 3,
        ScriptColors.DarkGreen, 'rbxasset://Images/',
        "Speedy and creepy little program.",
        command('byte', "Byte", 'damage', 0, 0, 1, 2));

    script('blackwidow', "Black Widow", 4, 3,
        ScriptColors.DarkGreen, 'rbxasset://Images/',
        "Speedier and creepier.",
        command('byte', "Byte", 'damage', 0, 0, 1, 2),
        command('paralyze', "Paralyze", 'speedMod', 0, 0, 1, -3));

    script('tarantula', "Tarantula", 5, 3,
        ScriptColors.DarkGreen, 'rbxasset://Images/',
        "Fast, with a venomous byte.",
        command('megabyte', "Megabyte", 'damage', 0, 0, 1, 3),
        command('paralyze', "Paralyze", 'speedMod', 0, 0, 1, -3));

    script('bug', "Bug", 5, 1,
        ScriptColors.LightGreen, 'rbxasset://Images/',
        "Fast, cheap... and out of control!",
        command('fglitch', "Fractal Glitch", 'damage', 0, 0, 1, 2));

    script('mandelbug', "MandelBug", 5, 1,
        ScriptColors.LightGreen, 'rbxasset://Images/',
        "It's not a true bug, it's a feature.",
        command('fglitch', "Fractal Glitch", 'damage', 0, 0, 1, 4));

    script('heisenbug', "HeisenBug", 5, 1,
        ScriptColors.LightGreen, 'rbxasset://Images/',
        "They can't kill what they can't catch!",
        command('qglitch', "Quantum Glitch", 'damage', 0, 0, 1, 6));

    script('buzzbomb', "BuzzBomb", 8, 2,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Fast an annoying.",
        command('sting', "Sting", 'damage', 0, 0, 1, 1),
        command('kamikazee', "Kamikazee", 'damage', 0, 1337, 1, 5));

    script('logicbomb', "LogicBomb", 3, 6,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Self-Destructing attack script.",
        command('selfdestruct', "Self-Destruct", 'damage', 6, 1337, 1, 10));
    
    script('fiddle', "Fiddle", 3, 3,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Twiddle and tweak the features of your scripts.",
        command('tweak', "Tweak", 'speedMod', 0, 1, 1, 1),
        command('twiddle', "Twiddle", 'sizeMod', 0, 1, 1, 1));

    script('medic', "Medic", 3, 3,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Grows you programs from a distance.",
        command('hypo', "Hypo", 'grow', 0, 0, 3, 2));

    script('dr', "Data Doctor", 4, 5,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Helps grow your scripts.",
        command('grow', "Grow", 'grow', 0, 0, 1, 2));

    script('drpro', "Data Doctor Pro", 5, 8,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Twice the expansion power of data doctor.",
        command('megagrow', "MegaGrow", 'grow', 0, 0, 1, 4),
        command('surgery', "Surgery", 'sizeMod', 0, 0, 1, 1));

    script('turbo', "Turbo", 3, 3,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Speed up your scripts.",
        command('boost', "Boost", 'speedMod', 0, 1, 1, 1));

    script('tdulux', "Turbo Delux", 4, 4,
        ScriptColors.DarkBlue, 'rbxasset://Images/',
        "Slow and steady is for losers.",
        command('megaboost', "Megaboost", 'speedMod', 3, 2, 2, 2));

    script('sumo', "Sumo", 2, 12,
        ScriptColors.DarkGreen, 'rbxasset://Images/',
        "A massive and slow-moving powerhouse.",
        command('dataslam', "Dataslam", 'damage', 6, 0, 1, 8));

    script('seeker2', "Seeker 2.0", 3, 4,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Solid distance attack script.",
        command('peek', "Peek", 'damage', 0, 0, 2, 2));

    script('seeker2', "Seeker 2.0", 3, 4,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Bigger and better than seeker.",
        command('poke', "Poke", 'damage', 0, 0, 3, 2));

    script('seeker3', "Seeker 3.0", 4, 5,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Seeker with extra deletion power.",
        command('poke', "Poke", 'damage', 0, 0, 3, 2),
        command('seekndestroy', "Seek and Destroy", 'damage', 5, 2, 2, 5));

    script('tower', "Tower", 0, 1,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Immobile long range script.",
        command('spot', "Spot", 'damage', 0, 0, 3, 3));

    script('mobiletower', "Mobile Tower", 1, 1,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Slow moving long range script.",
        command('spot', "Spot", 'damage', 0, 0, 3, 3));

    script('sat', "Satellite", 1, 1,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Sort-range hard-hitting script.",
        command('scramble', "Scramble", 'damage', 0, 0, 2, 4));

    script('lasersat', "Laser Satellite", 2, 1,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Long range hard-hitting script.",
        command('megascramble', "Megascramble", 'damage', 0, 0, 3, 4));

    script('slingshot', "Slingshot", 2, 2,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Basic ranged attack program.",
        command('stone', "Stone", 'damage', 0, 0, 3, 1));

    script('ballista', "Ballista", 1, 2,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Extreme range attack script.",
        command('fling', "Fling", 'damage', 0, 0, 4, 2));

    script('catapult', "Catapult", 2, 3,
        ScriptColors.Teal, 'rbxasset://Images/',
        "Extreme-range mobile attacker.",
        command('fling', "Fling", 'damage', 0, 0, 4, 2));

    script('clog2', "Clog 2.0", 2, 4,
        ScriptColors.Cyan, 'rbxasset://Images/',
        "Twice as effective as the first version.",
        command('chug', "Chug", 'speedMod', 0, 0, 3, -2));

    script('clog3', "Clog 3.0", 2, 4,
        ScriptColors.Cyan, 'rbxasset://Images/',
        "Brings hostile scripts to a halt.",
        command('chug', "Chug", 'speedMod', 0, 0, 3, -2),
        command('hang', "Hang", 'speedMod', 4, 0, 3, -1337));

    script('guru', "Guru", 2, 3,
        ScriptColors.Cyan, 'rbxasset://Images/',
        "Multipurpose script for the l33tist of the l33t.",
        command('fire', "Fire", 'damage', 0, 0, 2, 4),
        command('ice', "Ice", 'speedMod', 0, 0, 2, -3));

    script('hog', "Memory Hog", 5, 30,
        ScriptColors.LightGreen, 'rbxasset://Images/',
        "PED's magnum opus: Massive memory-filling bloatware.");

    script('wizard', "Wizard", 5, 30,
        ScriptColors.Cyan, 'rbxasset://Images/',
        "Pay no attention to the man behind the curtain."
        command('scorch', "Scorch", 'damage', 0, 0, 3, 2),
        command('stretch', "Stretch", 'sizeMod', 0, 0, 2, 1));

        
    --======================================================================--
    --=========================== Enemy Programs ===========================--
    --======================================================================--
    script('pup', "Pup", 3, 2,
        ScriptColors.YellowOrange, 'rbxasset://Images/',
        "A speedy little corporate cur."
        command('byte', "Byte", 'damage', 0, 0, 1, 2));

    script('guarddog', "Guard Dog", 3, 3,
        ScriptColors.YellowOrange, 'rbxasset://Images/',
        "Who let this dog out?"
        command('kilobyte', "Kilobyte", 'damage', 0, 0, 1, 2));

    script('attackdog', "Attack Dog", 4, 7,
        ScriptColors.YellowOrange, 'rbxasset://Images/',
        "Ravenous and bloodthirsty corporate canine."
        command('megabyte', "Megabyte", 'damage', 0, 0, 1, 3));

    script('sentinel', "Sentinel", 1, 3,
        ScriptColors.DarkOrange, 'rbxasset://Images/',
        "Corporate data defender."
        command('cut', "Cut", 'damage', 0, 0, 1, 2));

    script('sentinel2', "Sentinel 2.0", 2, 4,
        ScriptColors.DarkOrange, 'rbxasset://Images/',
        "Corporate data defender."
        command('cut', "Cut", 'damage', 0, 0, 1, 2));

    script('sentinel3', "Sentinel 3.0", 2, 4,
        ScriptColors.DarkOrange, 'rbxasset://Images/',
        "Sentinel that attacks several scripts at once."
        command('tazer', "Tazer", 'damage', 0, 0, 1, 4));

    script('watchman', "Watchman", 1, 2,
        ScriptColors.Magenta, 'rbxasset://Images/',
        "Corporate ranged attack script."
        command('phaser', "Phaser", 'damage', 0, 0, 2, 2));

    script('watchmanx', "Watchman X", 1, 4,
        ScriptColors.Magenta, 'rbxasset://Images/',
        "Improved version of the watchman."
        command('phaser', "Phaser", 'damage', 0, 0, 2, 2));

    script('watchmansp', "Watchman SP", 1, 4,
        ScriptColors.Magenta, 'rbxasset://Images/',
        "Watching from an even greater distance."
        command('phaser', "Phaser", 'damage', 0, 0, 3, 2));

    script('warden', "Warden", 1, 5,
        ScriptColors.Red, 'rbxasset://Images/',
        "Slow and steady corporate attack script."
        command('smash', "Smash", 'damage', 0, 0, 1, 3));

    script('wardenp', "Warden+", 2, 6,
        ScriptColors.Red, 'rbxasset://Images/',
        "Get out of its way."
        command('bash', "Bash", 'damage', 0, 0, 1, 5));

    script('wardenpp', "Warden++", 3, 7,
        ScriptColors.Red, 'rbxasset://Images/',
        "The last word in corporate security."
        command('crash', "Crash", 'damage', 0, 0, 1, 7));

    script('boss', "Boss", 6, 25,
        ScriptColors.EnemyOrange, 'rbxasset://Images/',
        "No introduction needed."
        command('shutdown', "Shutdown", 'damage', 0, 0, 5, 5));

    script('firewall', "Firewall", 2, 20,
        ScriptColors.EnemyOrange, 'rbxasset://Images/',
        "Keeps unwanted scripts out of corporate data."
        command('burn', "Burn", 'damage', 0, 0, 1, 1));

    script('sensor', "Sensor", 0, 1,
        ScriptColors.EnemyYellow, 'rbxasset://Images/',
        "Immobile program erradicator."
        command('blip', "Blip", 'damage', 0, 0, 5, 1));

    script('sonar', "Sonar", 0, 1,
        ScriptColors.EnemyYellow, 'rbxasset://Images/',
        "Deadly program erradicator."
        command('pong', "Pong", 'damage', 0, 0, 5, 2));

    script('radar', "Radar", 0, 1,
        ScriptColors.EnemyYellow, 'rbxasset://Images/',
        "Long-range program erradicator."
        command('ping', "Ping", 'damage', 0, 0, 8, 1));
}