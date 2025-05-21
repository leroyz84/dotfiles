// https://gitlab.com/leroyzwakman1/surfingkeys/-/raw/main/surfingkeys.js

// This prevens autofocus disabled (password manager shortcuts won't work, unless you focus first)
settings.stealFocusOnLoad = false;

// Disable emoji
api.iunmap(":");

 // press comma twice to leave current input box.
//api.imap(',,', "<Esc>");


// don't use marks
api.unmap('m');
// I use history
api.unmap('<Ctrl-h>');
// I use Downloads
api.unmap('<Ctrl-j>');

// Ctrl I is annoying
api.unmap('<Ctrl-i>');

// Ctrl A got introduced and removed the clearing for input forms for me
api.unmap('<Ctrl-a>');
//
//show mode
//u
settings.showModeStatus=true;

// disable keys in gmail
//api.unmap('mail.google.com');
if (window.location.origin === "https://mail.google.com") {
    api.unmap('f');
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

