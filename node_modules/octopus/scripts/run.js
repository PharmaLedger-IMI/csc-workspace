const octopus = require("./index");
const args = process.argv;
args.splice(0, 2);

let tasksListSelector;
if (args.length === 1) {
	tasksListSelector = args[0];
}

octopus.runConfig(octopus.readConfig(), tasksListSelector, function (err, res) {
	if (err) {
		throw err;
	}
	console.log(res);
});