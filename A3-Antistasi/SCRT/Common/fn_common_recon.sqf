params ["_position", "_radius", "_revealTime", ["_isInterrogation", false]];

private _affectedEntities = ["Car","Truck","CAManBase", "StaticWeapon"];
private _timeOut = time + _revealTime;

private _units = (nearestObjects [_position, _affectedEntities, _radius]) select { alive _x && {side _x == Occupants || {side _x == Invaders}}};
private _markers = [];

{
    private _entityPosition = position _x;
    _entityPosition = [(_entityPosition select 0) + random 10, (_entityPosition select 1) + random 10, _entityPosition select 2];
    private _revealMarker = createMarker [format ["%1revealedEntity%2", random 10000, random 10000], _entityPosition];
    _revealMarker setMarkerShape "ELLIPSE";
    _revealMarker setMarkerAlpha 0.9;
    _revealMarker setMarkerSize [10, 10];
    _revealMarker setMarkerColor "ColorRed";

    _markers pushBack _revealMarker;
} forEach _units;

private _revealText = nil;

if (!isNil "_units" && {count _units > 0}) then {
    if (_isInterrogation) then {
        _revealText = format ["<t size='0.6'><t size='0.6' color='#988df7'>Interrogated combatant</t> shares approximate enemy positions.</t>"];
    } else {
        _revealText = format ["<t size='0.6'><t size='0.6' color='#D96600'>Reconnaissance</t> shares approximate enemy positions with rebel ground forces.</t>"];
    };
} else {
    if (_isInterrogation) then {
        _revealText = format ["<t size='0.6'><t size='0.6' color='#988df7'>Interrogated combatant</t> does not know anything.</t>"];
    } else {
        _revealText = format ["<t size='0.6'><t size='0.6' color='#D96600'>Reconnaissance</t> has not detected any enemy activity.</t>"];
    };
};

{
    [petros, "support", _revealText] remoteExec ["A3A_fnc_commsMP", _x];
} forEach ([500, _position, teamPlayer] call SCRT_fnc_common_getNearPlayers);

waitUntil {sleep 1; time > _timeOut};

{
    deleteMarker _x;
} forEach _markers;