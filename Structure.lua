
--[[

PlayerData {
    Scripts: {id -> count}
    Places: {id -> unknown | known | beaten}
    Credits: #
    Nightfall: bool
}

PlaceData {
    Id: text
    Credits: 1000
    Map: [
        "---- ---- ---- ----"
        "#### #### ##-- ----"
        "#### #### ##-- ----"
        "#### #### ##-- ----"
        "#### #### ##-- ----"
        "#### #### ##-- ----"
        "#### #### ##-- ----"
        "#### #### ##-- ----"
        "---- ---- ---- ----"
        "---- ---- ---- ----"
        "---- ---- ---- ----"
        "---- ---- ---- ----"
    ]
    UploadZoneList: [
        (3, 4)
        (4, 6)
    ]
    ProgramList: [
        {
            ProgramId: Sentinel
            Enemy: true
            Tail: [(7,4), (7,5), (7,6)]
            Frozen: false
        }
    ]
}

ProgramData {
    Sentinel
}

--> loaded into game state on client and server


Networking:
+LoadPlayerData -> client gets player data
player battles a place -> generated PlayData
apply play data to local game state
+SubmitPlay -> server checks play applies it / saves game state
...statistics also?

Applying to the game state:
PlayerData applyPlayData(PlayData)
has to trigger UI for client, but not on server, same logic though
easy since choices don't affect what happens




]]