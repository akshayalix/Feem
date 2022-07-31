// Fakes the call of "deviceready". This can be useful for test purposes, but potentially also for the real website
// to avoid things like:
// 		if inside the app, call this method inside "deviceready"
//		else call this method now.
(function () {
	var oldAddEventListener = document.addEventListener;

	document.addEventListener = function (eventName, callback) {
		if (eventName === "deviceready") {
			callback();
		} else {
			//oldAddEventListener(eventName, callback);
		}
	};
})();