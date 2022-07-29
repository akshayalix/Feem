airsend_app.directive('hotspot2',  ['FeemBridge', '$timeout', 'toaster', '$translate', 'FeemDevice', 'iosActionSheet', function(FeemBridge, $timeout, toaster, $translate, FeemDevice, iosActionSheet){

var template_ = '<div style="cursor:pointer; width: 100%; height: 100%;">\
<div  style="position:relative; width: 100%; height: 100%; ">\
<table ng-click="wifi_direct_clicked();" style="width: 100%; height: 100%;table-layout:fixed; margin: 0px; " cellspacing=0 cellborder=0>\
<tr>\
<td style="font-size: 15px;">\
<img  ng-if="!device.hotspot_is_running" height="20px" style="padding: 0px; margin: 0px; align:center; vertical-align: middle; text-align:center;" src="images/icons/off.png">\
<img ng-if="device.hotspot_is_running" height="20px" style="padding: 0px; align:center; vertical-align: middle; text-align:center;" src="images/icons/on.png">\
<br>\
<span ng-if="!processing && !device.hotspot_is_running" translate>LANG_TURN_ON_WIFI_DIRECT</span>\
<span ng-if="processing" translate>LANG_PROCESSING</span>\
<span ng-if="!processing && device.hotspot_is_running" style="overflow:auto;" translate>LANG_WIFI_DIRECT_IS_ON</span>\
</td>\
</tr>\
</table>\
</div>\
</div>';

var link_ = function(scope){

    scope.processing = false;
    //scope.device= FeemDevice.get();
    //alert(JSON.stringify(scope.device));
    scope.device = FeemDevice.get();

    scope.$on('device_updated_2', function (event, data) {
        $timeout(function(){
            scope.device = data;
        },100);


    });
    scope.start_hotspot = function () {
            scope.processing = true;
            FeemBridge.request("/start_hotspot", {}, function (response) {

            });
        }

        scope.stop_hotspot = function () {

            scope.processing = true;
            FeemBridge.request("/stop_hotspot", {}, function (response) {
                scope.processing = false;
                // console.log(response);
                //$scope.hotspot_activated = response.activated;

            });
        };

        scope.show_hotspot_password = function () {
            $timeout(function () {
                var password = scope.device.hotspot_password;
                var ssid = scope.device.hotspot_ssid;

                 toaster.pop({
                                          type: "info",
                                          title: $translate.instant("_hotspot") + ": " + ssid,
                                          body:$translate.instant("_password") + ": " + password,
                                          timeout: -1
                                      });

            }, 0);
        };


        scope.$on("hotspot_created", function(evt, parameters){

                 $timeout(function(){

                      //alert(scope.device.hotspot_is_running + " "+ scope.device.hotspot_ssid);
                      scope.device.hotspot_is_running = true;
                      scope.device.hotspot_ssid = parameters.ssid;
                      scope.device.hotspot_password = parameters.password;
                      scope.processing = false;


                      toaster.pop({
                          type: "info",
                          title: $translate.instant("_hotspot") + ": " + parameters.ssid ,
                          body:$translate.instant("_password") + ": " + parameters.password,
                          timeout: -1
                      });

                  },0);

                });

        scope.$on("hotspot_stopped", function (evt, parameters) {
                    $timeout(function () {
                        scope.device.hotspot_is_running = false;
                        scope.device.hotspot_ssid = "";
                        scope.device.hotspot_password = "";
                      scope.processing = false;

                        toaster.pop({
                            type: "error",
                            title: "HotSpot Stopped",
                            body: parameters.reason,
                            timeout: -1
                        });
                    }, 0);

                });

    scope.wifi_direct_clicked = function(){

        if(!scope.device.hotspot_is_running){
            scope.start_hotspot();
        }
        else{
            scope.show_hotspot_options();
        }

    }

    scope.activate_wifi_direct = function(){

    }

    scope.show_hotspot_options = function(){

     var options = [];
        options.push({ text: scope.device.hotspot_ssid, label: true });

     options.push({ id: "stop_hotspot", text: $translate.instant("_stop_hotspot"), bold: true });
     options.push({ id: "show_hotspot_password", text: $translate.instant("_show_hotspot_password"), bold: true });



        iosActionSheet(options).then(function (data) {

                            if(data.button.id == "show_hotspot_password"){
                                   scope.show_hotspot_password();
                                return;
                            }


                            else if(data.button.id == "stop_hotspot"){
                                scope.stop_hotspot();
                            }

         });



    }



}

return {
    restrict: 'A',
     replace: true,
     scope: {},
    template: template_,
    link: function($scope){
        link_($scope);
    }



}


}]);

airsend_app
.directive('feemPeers', ['$state', 'theme', '$timeout', 'FeemBridge', 'FeemDevice', '$translate', 'amMoment', function($state, theme, $timeout, FeemBridge, FeemDevice, $translate, amMoment){
    var template_ = '<div>\
<table style="table-layout: fixed; height: 100%; width: 100%;">\
    <tr>\
        <td style="height: 130px"><div style="height: 100%;" panel-home-header></div></td>\
    </tr>\
    <tr>\
        <td style="position:relative; height: 60px; background-color: {{theme.dark_primary_color}}; padding-left: 5px; padding-right: 5px;">\
            <table style="height: 50px; width: 98%; color: #f2f2f2; position: absolute;top: 50%;transform: translateY(-50%);-webkit-transform: translateY(-50%);">\
                <tr>\
                    <td ng-click="toggle_menu();" style="cursor: pointer; text-align: center; width: 60px;">\
                      <img src="images/icons/menu.png" style="height: 40px;">\
                    </td>\
                    <td style="cursor: pointer; text-align: center;" ng-if="device.has_hotspot_feature"><div hotspot2></div></td>\
                </tr>\
            </table>\
                <div ng-if="show_menu" style="z-index: 30; padding: 20px; position: absolute; top: 60px; left: 0px; right: 0px;  color: #f2f2f2; background-color: {{theme.dark_primary_color}};">\
<div class="list-group ">\
  <a href class="list-group-item active" translate>LANG_MENU</a>\
  <button type="button"  ng-if="device.os==\'ios\'" ng-click="open_file_browser(\'\');" class="list-group-item" translate>LANG_FILE_BROWSER</button>\
  <button type="button"  ng-if="device.os==\'ios\'" ng-click="open_audio_player(\'\');" class="list-group-item" translate>LANG_AUDIO_PLAYER</button>\
  <a ng-click="toggle_menu();" ui-sref="/feemprosettings" class="list-group-item" translate>LANG_FEEM_PRO</a>\
  <a ng-click="toggle_menu();" ui-sref="/devicesettings" class="list-group-item" translate>LANG_DEVICE_SETTINGS</a>\
  <a ng-click="toggle_menu();" ui-sref="/webmode" class="list-group-item" translate>LANG_WEB_MODE</a>\
  <a ng-click="toggle_menu();" ng-if="device.os == \'winrt\'" ui-sref="/foldersettings" class="list-group-item" translate>LANG_FOLDER_SETTINGS</a>\
  <a ng-click="toggle_menu();"  ui-sref="/aboutfeem" class="list-group-item" translate>LANG_ABOUT_FEEM</a>\
  <a ng-click="toggle_menu();" href="{{ \'LANG_FAQ_URL\' | translate}}" class="list-group-item" translate>LANG_ONLINE_HELP</a>\
</div>\
<div  style="display: none; cursor: pointer;">\
    <span style="text-decoration: underline" ng-click="change_lang(\'en\')">English</span>\
    <span style="text-decoration: underline" ng-click="change_lang(\'fr\')">Français</span>\
</div>\
        </td>\
    </tr>\
    <tr style="background-color:#fafafa; position: relative;">\
        <td valign="top" style="overflow-y: auto; overflow-x:hidden; position: relative; " ><div style="position:absolute; left: 0px; right: 0px; bottom: 0px; top: 0px; " peer-list></div></td>\
    </tr>\
</table>\
</div>';

    var template_1 = "";

    return {
        restrict: 'A',
        replace: true,
        scope: {},
        template: template_,
        link: function($scope){

            console.log("language is " + $translate.use());

            $scope.device = {};

            $scope.open_file_browser = function(){

               FeemBridge.open_file_browser({to: $scope.selected_peer_id});
            }
                         
            $scope.open_audio_player = function(){
                         
                FeemBridge.open_audio_player({});
            }
                         

            $scope.theme = theme.default;
            $scope.show_menu = false;
            var unshow_menu = 0;
            $scope.toggle_menu = function(){
                $scope.show_menu = !$scope.show_menu;
                $timeout.cancel(unshow_menu);

                unshow_menu = $timeout(function(){
                    $scope.show_menu = false;
                }, 5000);
            }

            $scope.device = FeemDevice.get();

            $scope.change_lang = function(lang){
                $translate.use(lang);
                amMoment.changeLocale(lang);
                $scope.show_menu = false;

            }

            $scope.$on('device_updated_2', function (event, data) {
                $timeout(function(){
                    $scope.device = data;
                },0);

            });
        }
        }

}])
