var system = require('system');
var args = system.args;

if (args.length === 1) {
    console.log('No args. Enter a url.');
    phantom.exit();
}
else {
    var page = require('webpage').create();

    page.open(args[1], function() {
	console.log('Phantom opened: ' + args[1]);
	page.render('screenshot-for-' + encodeURIComponent(args[1]) + '.png');
	phantom.exit();
    });
}
