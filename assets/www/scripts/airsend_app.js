//to_God_be_the_glory

var airsend_app = angular.module('app', ['angularMoment','countUp','angular-svg-round-progressbar', 'angular-carousel','ngLetterAvatar','toaster', 'ngSanitize', 'angular-ios-actionsheet', 'ngTouch', 'tmh.dynamicLocale', 'ngCookies', 'pascalprecht.translate', 'ui.router', 'ui.router.title'])
.config(['$compileProvider', '$stateProvider', '$urlRouterProvider',function ($compileProvider, $stateProvider, $urlRouterProvider) {
    $compileProvider.imgSrcSanitizationWhitelist(/^\s*.*?:/);
    $urlRouterProvider.otherwise("/peers");
    // Now set up the states
    $stateProvider
      .state('/intro', {
        url: "/intro",
        template: "<div appplaceholder />",
         resolve: {
          $title: function() { return 'Feem'; }
        }
      })
    .state('/peers', {
      url: "/peers",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Feem'; }
      }
    })
    .state('/devicesettings', {
      url: "/devicesettings",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Feem Device Settings'; }
      }
    })
    .state('/feemprosettings', {
      url: "/feemprosettings",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Feem Pro Settings'; }
      }
    })
    .state('/feemsettings', {
      url: "/feemsettings",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Feem Settings'; }
      }
    })
    .state('/webmode', {
      url: "/webmode",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'LANG_WEB_MODE'; }
      }
    })
    .state('/feemstore', {
        url: "/feemstore",
        template: "<div appplaceholder />",
        resolve: {
        $title: function() { return 'Feem Store'; }
        }
    })
         
   .state('/aboutfeem', {
      url: "/aboutfeem",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Feem About'; }
      }
    })
   .state('/notifications_sender', {
      url: "/notifications_sender",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Notifications'; }
      }
    })
        .state('/foldersettings', {
            url: "/foldersettings",
            template: "<div appplaceholder />",
            resolve: {
                $title: function () { return 'Feem Folder Settings'; }
            }
        })
    .state('/help', {
      url: "/help",
      template: "<div appplaceholder />",
       resolve: {
        $title: function() { return 'Feem Help'; }
      }
    })
    .state('/chat', {
      url: "/chat/{id}",
      template: "<div appplaceholder />",
      reloadOnSearch: false,
       resolve: {
        $title: function() { return 'Feem Chat'; }
      }
    })
}])
.config(['$sceDelegateProvider',
function($sceDelegateProvider) {
// Set a new whitelist
    $sceDelegateProvider.resourceUrlWhitelist(['.*']);
}])

.directive('intro', function(){
    var template_ = '<div><h1>Welcome to Feem v4.1</h1></div>';

    return {
        restrict: 'A',
        replace: true,
        template: template_,
        link: function(scope){

        }
        }

})

.directive('appplaceholder', ['theme', '$state', '$rootScope', function(theme, $state, $rootScope){
  var template_ = '\
                      <div style="height:100%; width: 100%;  overflow: hidden;">\
                        <div style="height:100%; width: 100%;"  class="hidden-xs" ng-if="$sstate.$current.name == \'/peers\'" intro2></div>\
                        <div style="height:100%; width: 100%;" class="visible-xs" ng-if="$sstate.$current.name == \'/peers\'" feem-peers></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/intro\'" intro></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/devicesettings\'" device-settings></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/feemprosettings\'" feem-pro-settings></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/feemsettings\'" feem-settings></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/feemstore\'" feem-store></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/aboutfeem\'" about-feem></div>\
			<div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/webmode\'" web-mode></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/notifications_sender\'" notifications-sender></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/foldersettings\'" folder-settings></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/help\'" feem-help></div>\
                        <div style="height:100%; width: 100%;" ng-if="$sstate.$current.name == \'/chat\'" feem-chat></div>\
                      </div>\
  ';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      link: function($scope){
        $scope.$sstate = $state;
          $scope.theme = theme.default;
          console.log("theme is "+ $scope.theme.dark_primary_color);
          $scope.speed_stats = $rootScope.speed_stats;

          $rootScope.$watch('speed_stats', function(n){
              $scope.speed_stats = n;
          });


      }
      }
}])


.constant('LOCALES', {
    'locales': {
        'en_US': 'English'
    },
    'preferredLocale': 'en_US'
})
.config(function ($translateProvider) {
    //$translateProvider.useMissingTranslationHandlerLog();
})
.config(function ($translateProvider) {
//    $translateProvider.useStaticFilesLoader({
//        prefix: 'resources/locale-',// path to translations files
//        suffix: '.json'// suffix, currently- extension of the translations
//    });
    $translateProvider.useSanitizeValueStrategy('escape');
    $translateProvider.fallbackLanguage("en");

    //$translateProvider.preferredLanguage('en_US');// is applied on first load
    $translateProvider.preferredLanguage('en');// is applied on first load
    //$translateProvider.use('en');
    $translateProvider.useLocalStorage();// saves selected language to localStorage

})
.config(function (tmhDynamicLocaleProvider) {
    tmhDynamicLocaleProvider.localeLocationPattern('bower_components/angular-i18n/angular-locale_{{locale}}.js');
})
.config(['$httpProvider', function($httpProvider){

  if(!$httpProvider.defaults.headers.get){
    $httpProvider.defaults.headers.get = {};
  }

  $httpProvider.defaults.headers.get['If-Modified-Since'] = 'Mon, 26 Jul 1997 05:00:00 GMT';
  $httpProvider.defaults.headers.get['Cache-Control'] = 'no-cache';
  $httpProvider.defaults.headers.get['Pragma'] = 'no-cache';
  


}])
.run(['$http', '$rootScope', '$window', 'FeemDevice', 'toaster', 'airsend_config', '$timeout', 'FeemUtils', '$translate', '$interval', '$filter', 'FeemPeers', 'theme', '$state', 'amMoment', 'FeemBridge', function($http, $rootScope, $window, FeemDevice, toaster, airsend_config, $timeout, FeemUtils, $translate, $interval, $filter, FeemPeers, theme, $state, amMoment, FeemBridge) {


    $rootScope.translations = {};

    var available_languages = ["en"];

    if(available_languages.indexOf($translate.use()) == -1){
      $translate.use('en');
    }

$rootScope.theme = theme.default;

$window.FastClick.attach($window.document.body);

amMoment.changeLocale($translate.use());

$window.native_callback = function(parameters){

        $rootScope.$broadcast(parameters.action, parameters);
    };


    var large_screen_width = 700;
        $rootScope.small_screen = $window.innerWidth < large_screen_width;
    $rootScope.is_portrait = true;

    if($window.innerWidth > $window.innerHeight){
        $rootScope.is_portrait = false;
    }
    var w = angular.element($window);
    w.bind('resize', function () {
        $rootScope.$evalAsync(function(){
                    $rootScope.small_screen = $window.innerWidth < large_screen_width;
            if($window.innerWidth > $window.innerHeight){
                $rootScope.is_portrait = false;
            }else{
                $rootScope.is_portrait = true;
            }
        });

    });

    $rootScope.$watch('small_screen', function(newvalue, oldvalue){
        if((newvalue != oldvalue)){
            $rootScope.switch_page('');
        }
    });

    $rootScope.page = "";


/** Switch pages */
   $rootScope.switch_page = function(page){

        $rootScope.$evalAsync(function(){
              $rootScope.page = page;
        });

    }

var backbutton=0;


var onBackKeyDown = function(e){
    e.preventDefault();

if($state.$current.name != "/peers"){

    $state.go("/peers");
}
else{

var r = confirm("Are You Sure You Want To Exit Feem?");
if (r == true) {
e.preventDefault();
    navigator.app.exitApp();
} else {

}


}


}

   document.addEventListener("backbutton", onBackKeyDown, false);

    //translations
    var translation_strings = [
   "_you_need_to_update_feem_title",
   "_you_need_to_update_feem_description",
   "_scanning",
   "_wifi_networks"

   ]

    angular.forEach(translation_strings, function(translation_string){
        $translate(translation_string).then(function (translation) {
          $rootScope.translations[translation_string] = translation;
        });

    });

    $rootScope.$on('$translateChangeSuccess', function (event, data) {// ON LANGUAGE CHANGED
        angular.forEach(translation_strings, function(translation_string){
            $translate(translation_string).then(function (translation) {
              $rootScope.translations[translation_string] = translation;
            });

        });
    });





    $rootScope.check_updates_2 = function(){

        var params = JSON.stringify({"os": FeemDevice.get().os});

        $http.post(airsend_config.api_endpoint+"/check_updates", params, {headers: {'Content-Type': 'text/plain'}})
        .success(function(data, status) {
                         FeemDevice.set_latest_app_version(data.app_version);
                        $rootScope.$broadcast("latest_app_version", {"version":data.app_version});

                    if(FeemDevice.get().newer_version_found){

                        toaster.pop({
                                        type: "warning",
                                        title: $rootScope.translations._you_need_to_update_feem_title,
                                        body: $rootScope.translations._you_need_to_update_feem_description,
                                        timeout: -1
                                    });

                    }

                })
         .error(function(data, status) {
                return false;
              });
        return true;
}

$rootScope.$on("folder_access_error", function (event, data) {
    toaster.pop({
        type: "error",
        title: "Folder access error",
        body: "Add this folder in your Feem settings -- " + data.folder ,
        timeout: -1
    });
});


    $rootScope.$on("mirror_notification", function(event, data){

        //alert(data.alias);
        toaster.pop({
                        type: "warning",
                        title: data.alias,
                        body: "App " + data.title + " " + data.description,
                        timeout: 2000
                    });

    });

    $rootScope.$on('device_updated', function (event, data) {
        FeemDevice.update2();
    });

    $rootScope.$on('peers_updated', function (event, data) {
        FeemPeers.update2();
    });

    var device_updated_2_first_time = true;
    $rootScope.$on('device_updated_2', function (event, data) {
        if(device_updated_2_first_time){
            device_updated_2_first_time = false;
            $rootScope.check_updates_2();
        }
        $timeout(function(){
            $rootScope.device = data;
        },0);


    });

    FeemDevice.update2();
    FeemPeers.update2();




       // $rootScope.check_updates();


var run_tests = false;
if(run_tests){
  FeemBridge.request("/run_tests", {}, function(reply){
  });
}

$rootScope.interstitial = {};
$rootScope.default_interstitial = {};


$rootScope.default_interstitial.img = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/4QCYRXhpZgAASUkqAAgAAAAEABoBBQABAAAAPgAAABsBBQABAAAARgAAACgBAwABAAAAAgAAAGmHBAABAAAATgAAAAAAAABgAAAAAQAAAGAAAAABAAAABQAAkAcABAAAADAyMTAAoAcABAAAADAxMDABoAMAAQAAAP//AAACoAQAAQAAABICAAADoAQAAQAAAO4CAAAAAAAA/+ED9Wh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8APD94cGFja2V0IGJlZ2luPSfvu78nIGlkPSdXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQnPz4KPHg6eG1wbWV0YSB4bWxuczp4PSdhZG9iZTpuczptZXRhLyc+CjxyZGY6UkRGIHhtbG5zOnJkZj0naHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyc+CgogPHJkZjpEZXNjcmlwdGlvbiB4bWxuczpwZGY9J2h0dHA6Ly9ucy5hZG9iZS5jb20vcGRmLzEuMy8nPgogIDxwZGY6QXV0aG9yPmZyaXR6LmVrd29nZTwvcGRmOkF1dGhvcj4KICA8cGRmOkF1dGhvcj5mcml0ei5la3dvZ2U8L3BkZjpBdXRob3I+CiA8L3JkZjpEZXNjcmlwdGlvbj4KCiA8cmRmOkRlc2NyaXB0aW9uIHhtbG5zOnhtcD0naHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyc+CiAgPHhtcDpDcmVhdG9yVG9vbD5DYW52YTwveG1wOkNyZWF0b3JUb29sPgogPC9yZGY6RGVzY3JpcHRpb24+CgogPHJkZjpEZXNjcmlwdGlvbiB4bWxuczpleGlmPSdodHRwOi8vbnMuYWRvYmUuY29tL2V4aWYvMS4wLyc+CiAgPGV4aWY6WFJlc29sdXRpb24+OTY8L2V4aWY6WFJlc29sdXRpb24+CiAgPGV4aWY6WVJlc29sdXRpb24+OTY8L2V4aWY6WVJlc29sdXRpb24+CiAgPGV4aWY6UmVzb2x1dGlvblVuaXQ+SW5jaDwvZXhpZjpSZXNvbHV0aW9uVW5pdD4KICA8ZXhpZjpFeGlmVmVyc2lvbj5FeGlmIFZlcnNpb24gMi4xPC9leGlmOkV4aWZWZXJzaW9u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";
$rootScope.default_interstitial.link = "http://www.feem.io/feem_pro_universal/";

$rootScope.interstitial = angular.extend($rootScope.interstitial,$rootScope.default_interstitial );

if (typeof (Storage) !== "undefined" && typeof(window.localStorage) !== "undefined") {
    if(window.localStorage.getItem("interstitial_img") != null){
        $rootScope.interstitial.img  = window.localStorage.getItem("interstitial_img");
    }

    if(window.localStorage.getItem("interstitial_link")){
        $rootScope.interstitial.link  = window.localStorage.getItem("interstitial_link");
    }

}



function convertImgToDataURLviaCanvas(url, callback, outputFormat) {

  var img = new Image();
  img.crossOrigin = 'Anonymous';
  img.onload = function () {

    var canvas = document.createElement('CANVAS');
    var ctx = canvas.getContext('2d');
    var dataURL;
    canvas.height = this.height;
    canvas.width = this.width;
    ctx.drawImage(this, 0, 0);
    dataURL = canvas.toDataURL(outputFormat);

    callback(dataURL);
    canvas = null;
  };

  img.onerror = function () {

      $rootScope.interstitial = angular.extend($rootScope.interstitial, $rootScope.default_interstitial);
      if (typeof (Storage) !== "undefined") {
          window.localStorage.setItem("interstitial_img", $rootScope.interstitial.img);
          window.localStorage.setItem("interstitial_link", $rootScope.interstitial.link);


      }
      
  };

  img.src = url;

  // make sure the load event fires for cached images too
if ( img.complete || img.complete === undefined ) {
    img.src = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";
    img.src = src;
}

}




var last_time_ad_shown = 0;
var run_ad = function(){
    var now = (+(new Date()).getTime());
    if((now - last_time_ad_shown) > (0010*60*1000)){
        last_time_ad_shown = now;


         if($rootScope.device && $rootScope.device.has_pro_feature){
         return;
         }


        $rootScope.show_ad = false;

        FeemBridge.show_ad();



        var parameters = {
            os: $rootScope.device.os,
            ssid: $rootScope.device.ssid
        }

        $http.post(airsend_config.api_endpoint+"/interstitials", parameters, {headers: {'Content-Type': 'text/plain'}})
        .success(function (data, status) {


            if(data.img && data.link){
                convertImgToDataURLviaCanvas(data.img, function(base64){
                    $rootScope.interstitial = { img: base64, link: data.link };
                   
                    if (typeof(Storage) !== "undefined") {
                        console.info(JSON.stringify($rootScope.interstitial));

                        window.localStorage.setItem("interstitial_img", $rootScope.interstitial.img) ;
                        window.localStorage.setItem("interstitial_link", $rootScope.interstitial.link) ;




                    }
                });
            }
            else{
                $rootScope.interstitial = angular.extend($rootScope.interstitial,$rootScope.default_interstitial );
                if (typeof(Storage) !== "undefined") {
                    window.localStorage.setItem("interstitial_img", $rootScope.interstitial.img) ;
                    window.localStorage.setItem("interstitial_link", $rootScope.interstitial.link) ;


                }
            }
        })
         .error(function(data, status) {
             //$rootScope.interstitial = $rootScope.default_interstitial;
            $rootScope.interstitial = angular.extend($rootScope.interstitial,$rootScope.default_interstitial );
             if (typeof(Storage) !== "undefined") {
                 window.localStorage.setItem("interstitial_img", $rootScope.interstitial.img) ;
                 window.localStorage.setItem("interstitial_link", $rootScope.interstitial.link) ;


             }
         });






    }

}

var mark_chat_as_sent_counter = 0;

$rootScope.$on("mark_chat_as_sent", function(evt, parameters) {

//    if(mark_chat_as_sent_counter < 1){
//     mark_chat_as_sent_counter = mark_chat_as_sent_counter + 1;
//        return;
//    }
         run_ad();
  });

  $rootScope.$on("new_chat", function(evt, parameters) {
         run_ad();
});


var speed_timeout = 0;
$rootScope.speed_stats = {};

  $rootScope.$on("update_bytes_transferred", function (evt, parameters) {

              if(!$rootScope.speed_stats.last_time_bytes_transferred){
                  $rootScope.speed_stats.last_time_bytes_transferred = (new Date().getTime());
                  $rootScope.speed_stats.last_bytes_transferred = (+parameters.bytes_transferred);
              }
              else{
                  var timediff = (new Date().getTime()) - $rootScope.speed_stats.last_time_bytes_transferred;

                  $rootScope.speed_stats.last_file = parameters.filepath;
                  $rootScope.speed_stats.last_time_bytes_transferred = (new Date().getTime());

                  if(timediff > 0){

                      var number_of_files = (+parameters.other_files.number_of_files);
                      var all_bytes_transferred = (+parameters.other_files.bytes_transferred) + (+parameters.bytes_transferred);
                      var all_size_of_files = (+parameters.other_files.size_of_files);

                      var file_percentage = 100.0 * (+parameters.bytes_transferred) / (+parameters.total_bytes);
                      var all_percentage = 100.0 * (+all_bytes_transferred) / (+all_size_of_files);

                      $rootScope.speed_stats.percentage = file_percentage;
                      $rootScope.speed_stats.all_percentage = all_percentage;

                      var bytes_diff = (+parameters.bytes_transferred - $rootScope.speed_stats.last_bytes_transferred);
                      $rootScope.speed_stats.last_bytes_transferred = (+parameters.bytes_transferred);

                      var speed = 1000*bytes_diff/timediff;

                      if(speed <= 0){
                          $rootScope.speed_stats.speed_unit = "B/s";
                          $rootScope.speed_stats.speed = "0";
                      }

                      else if(speed < 1000){
                          $rootScope.speed_stats.speed_unit = "B/s";
                          $rootScope.speed_stats.speed =  $filter('number')(speed, 2);
                      }
                      else if(speed < 1000000){
                          $rootScope.speed_stats.speed_unit = "KB/s";
                          $rootScope.speed_stats.speed = $filter('number')(speed/1000, 2);
                      }
                      else if(speed < 1000000000){
                          $rootScope.speed_stats.speed_unit = "MB/s";
                          $rootScope.speed_stats.speed = $filter('number')(speed/1000000, 2);
                      }

                      if( (!$rootScope.speed_stats.peer) || (parameters.device != $rootScope.speed_stats.peer.id)){
                          $rootScope.speed_stats.peer = FeemPeers.peerid_to_peer(parameters.device);

                      }








$rootScope.$evalAsync(function(){


});

                  }

                  $timeout.cancel(speed_timeout);


                  speed_timeout = $timeout(function(){
                  $rootScope.$evalAsync(function(){
                      $rootScope.speed_stats.speed_unit = "";
                      $rootScope.speed_stats.speed = "";

                  });
                  },10000)
              }
  });


}]);
