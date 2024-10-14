// https://gitlab.com/leroyzwakman1/surfingkeys/-/raw/main/surfingkeys.js

// This prevens autofocus disabled (password manager shortcuts won't work, unless you focus first)
settings.stealFocusOnLoad = false;

// Disable emoji
api.iunmap(":");

 // press comma twice to leave current input box.
api.imap(',,', "<Esc>");


// don't use marks
api.unmap('m');
//
//show mode
//u
settings.showModeStatus=true;

// api.unmap('f');
// disable keys in gmail
if (window.location.origin === "https://mail.google.com") {
    api.unmap('j');
    api.unmap('k');
}


api.unmapAllExcept(['yy'], /atlassian.net/);
api.unmap('/office.com/');
api.unmap('/whatsapp.com/');
api.unmap('/docs.google.com/');


//disable keys in jira
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

