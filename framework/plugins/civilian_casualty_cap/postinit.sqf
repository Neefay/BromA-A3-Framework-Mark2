
// =============================================================================
//  Civilian casualty cap parameter
// =============================================================================

switch (param_dead_civies) do {
    case 0: { mission_dead_civilian_limit = -1 };
    case 1: { mission_dead_civilian_limit = 5 };
    case 2: { mission_dead_civilian_limit = 15 };
    case 3: { mission_dead_civilian_limit = 30 };
};
publicVariable "mission_dead_civilian_limit";

// =============================================================================

if (mission_dead_civilian_limit == -1) exitWith {};

#include "settings.sqf";

if (isNil "hostile_civilians") then { hostile_civilians = [] };

if (isNil "dead_civilians_side_a" ) then { dead_civilians_side_a = 0 };
if (isNil "dead_civilians_side_b" ) then { dead_civilians_side_b = 0 };
if (isNil "dead_civilians_side_c" ) then { dead_civilians_side_c = 0 };

fnc_deadHostileCivilian = {
    _killed = _this select 0;
    _killed removeAllEventHandlers "mpkilled";
};

fnc_civFiredWeapon = {
    _unit = _this select 0;
    _unit addMPEventHandler ["mpkilled", fnc_deadHostileCivilian];
    
    if !(_unit in hostile_civilians) then {
        hostile_civilians pushBack _unit; 
        publicVariable "hostile_civilians";
        _unit addRating -10000;
        ["SERVER", "F_LOG", format ["SERVER: %1 IS NOW CONSIDERED HOSTILE",_unit]] call BRM_fnc_doLog;
    };
};
  
// Function to update death counter.
fnc_countCivDeaths = {
    _killed = _this select 0;
    _killer = _this select 1;
    _sideKiller = _killer getVariable ["unit_side", (side _killer)];

    if !(_killed in hostile_civilians) then {
        if ((isPlayer _killer) && (_sideKiller in responsible_sides)) then {
            
            switch (true) do {
                case (_sideKiller == side_a_side): { 
                    dead_civilians_side_a = dead_civilians_side_a + 1; publicVariable "dead_civilians_side_a";
                    ["CLIENTS", "HINT", format ["%3 CIVILIAN CASUALTIES: %1 out of %2", dead_civilians_side_a, mission_dead_civilian_limit, side_a_name]] call BRM_fnc_doLog;
                };
                case (_sideKiller == side_b_side): { 
                    dead_civilians_side_b = dead_civilians_side_b + 1; publicVariable "dead_civilians_side_b";
                    ["CLIENTS", "HINT", format ["%3 CIVILIAN CASUALTIES: %1 out of %2", dead_civilians_side_b, mission_dead_civilian_limit, side_b_name]] call BRM_fnc_doLog;
                };
                case (_sideKiller == side_c_side): { 
                    dead_civilians_side_c = dead_civilians_side_c + 1; publicVariable "dead_civilians_side_c";
                    ["CLIENTS", "HINT", format ["%3 CIVILIAN CASUALTIES: %1 out of %2", dead_civilians_side_c, mission_dead_civilian_limit, side_c_name]] call BRM_fnc_doLog;
                };
            };
            dead_civilians = dead_civilians + 1; publicvariable "dead_civilians";
            ["SERVER", "F_LOG", format ["SERVER: %2 HAS KILLED CIVILIAN %1", name _killed, name _killer]] call BRM_fnc_doLog;
        };
    };

    // Checks if the max number of civies is beyond the limit
    if (dead_civilians_side_a >= mission_dead_civilian_limit) then {
        ["defeat"] call BRM_fnc_callEnding;
    };
};

publicVariable "fnc_civFiredWeapon";

// Add killed EventHandler to all civilians.
{
    if (side _x == civilian) then {
      _x addEventHandler ["fired", fnc_civFiredWeapon];
      _x addMPEventHandler ["mpkilled", fnc_countCivDeaths];
    };
} foreach allUnits;