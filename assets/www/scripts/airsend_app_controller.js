//to_God_be_the_glory

window.native_callback = function(p){
    //console.log("native callback called before main action");
}



// This is a function that bootstraps AngularJS, which is called from later code
function bootstrapAngular() {
    //console.log("Bootstrapping AngularJS");
    // This assumes your app is named "app" and is on the body tag: <body ng-app="app">
    // Change the selector from "body" to whatever you need
    //var domElement = document.querySelector('body');
    // Change the application name from "app" if needed
    angular.bootstrap(document.getElementById("mainbody"), ['app']);
}

//if(typeof QWebChannel !== 'undefined'){
//    new QWebChannel(qt.webChannelTransport, function (channel) {

//        window.FeemBridgeQtImpl = channel.objects.FeemBridgeQtImpl;
//        //console.log("window.FeemBridgeQtImple" + JSON.stringify(window.FeemBridgeQtImpl));
//        //console.log("URL: Running in Qt");
//        document.addEventListener("deviceready", bootstrapAngular, false);

//    });

//}

if ((typeof cordova) !== 'undefined') {
    angular.element(document).ready(function(){
            //console.log("URL: Running in Cordova/PhoneGap");
    document.addEventListener("deviceready", bootstrapAngular, false);

    });
} else {
    //console.log("URL: Running in browser");
    bootstrapAngular();
}
