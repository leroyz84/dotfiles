// https://gitlab.com/leroyzwakman1/surfingkeys/-/raw/main/surfingkeys.js

// This prevens autofocus disabled (password manager shortcuts won't work, unless you focus first)
settings.stealFocusOnLoad = false;

// Disable emoji
api.iunmap(":");

//show mode
settings.showModeStatus=true;

// disable keys in gmail
if (window.location.origin === "https://mail.google.com") {
    api.unmap('j');
    api.unmap('k');
}

//disable keys in jira
url = /jira/
api.unmap(".", url); // actions
api.unmap("a", url); // assign
api.unmap("c", url); // create
api.unmap("e", url); // edit
api.unmap("m", url); // comment
api.unmap("i", url); // assign to me
api.unmap("?", url); // help
api.unmap("-", url); // toggle swimlanes

settings.omnibarPosition="middle";
// don't know
//settings.richHintsForKeystroke=true;
//settings.modeAfterYank="Normal";
//settings.focusFirstCandidate=false;
//settings.historyMUOrder=false;


// Control+D
api.map('<Ctrl-d>','d');
api.map('<Ctrl-u>','u');

//api.map('H', 'S');
//api.map('L', 'D');

//api.map(';t','yt');

