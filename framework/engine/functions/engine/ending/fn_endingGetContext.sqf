
private["_titleColor"];

_fncStringSides = {
    _str = "";
    {
        _name = [_x,"name"] call BRM_fnc_getSideInfo;
        _punct = ", ";
        if (_forEachIndex+2 == (count _this)) then { _punct = " and " };
        if (_forEachIndex+1 == (count _this)) then { _punct = "" };
        _str = _str + _name + _punct;
    } forEach _this;
    _str
};

_success = ((side player in (mission_ending_details select 0)) && !(side player in (mission_ending_details select 1)));

if (_success) then { _titleColor = "green" } else { _titleColor = "red" };

mission_ending_personal = [_success, _titleColor];

if (count (mission_ending_details select 0) > 0) then { mission_ending_details set [0, (mission_ending_details select 0) call _fncStringSides] };

if (count (mission_ending_details select 1) > 0) then { mission_ending_details set [1, (mission_ending_details select 1) call _fncStringSides] };