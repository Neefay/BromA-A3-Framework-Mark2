
//==============================================================================
// Here we declare what text will be shown to the player when the game is loading.

_loadingScreen =
    "Please wait in order to allow the game to synchronize with all players.\n
    \n 
    Remember to ALWAYS read the briefing.\n
    \n
    Take your time to plan your tactics with your team-mates.";
//==============================================================================

player spawn {
    player action ["SwitchWeapon", vehicle player, vehicle player, 99];
    sleep 4;
    // Stop the players from moving.
    player enableSimulation false;
};

titletext [format ["Loading mission \n\n 0%2 \n[-----------] \n\n%1", _loadingScreen, "%"], "BLACK FADED",0];
sleep 1;
titletext [format["Loading mission \n\n 25%2 \n[==--------] \n\n%1", _loadingScreen, "%"], "BLACK FADED",0];
sleep 2;
titletext [format["Loading mission \n\n 50%2 \n[=====-----] \n\n%1", _loadingScreen, "%"], "BLACK FADED",0];
sleep 1;
titletext [format["Loading mission \n\n 75%2 \n[=======---] \n\n%1", _loadingScreen, "%"], "BLACK FADED",0];
sleep 2;
titletext [format["Loading mission \n\n 100%2 \n[=========] \n\n%1", _loadingScreen, "%"], "BLACK FADED",0];
sleep 3;
titleText ["", "PLAIN"];

player enableSimulation true;

loading_screen_finished = true;