
airsend_app
.directive('profile', ['FeemBridge', '$rootScope', '$timeout', 'iosActionSheet', 'toaster', 'FeemDevice', '$interval', '$translate', function(FeemBridge, $rootScope, $timeout, iosActionSheet, toaster, FeemDevice, $interval, $translate){
    var template_ = '\
  <div class="profile default-primary-color font-smoothing">\
        <div class="info">\
            <div class="content">\
              <table width="100%" style="overflow:hidden">\
                <tr>\
                  <td style="border-width: 0px;">\
                    <h1 style=" width:100%;overflow:hidden"> {{device.alias}} </h1>\
                    <h2> <strong>{{"_wifi" | translate}}:</strong> {{device.ssid}} </h2>\
                  </td>\
                </tr>\
              </table>\
            </div>\
        </div>\
       </div>';


    var link_ = function($scope){
        FeemDevice.update($scope);

        $scope.$on('device_updated', function (event, data) {
           FeemDevice.update($scope);

        });

        $scope.disabled = false;
        $scope.join_hotspot_text = $translate.instant("_wifi_networks");


        $scope.scan_wifi = function () {
            $timeout(function () {
                console.log("disabled == " + $scope.disabled);
                if ($scope.disabled) {
                    return;
                }

                $scope.join_hotspot_text = $translate.instant("_scanning");

                $scope.disabled = true;
                FeemBridge.request("/scan_wifi", {}, function (response) {

                });

            }, 0);


        };




        $scope.$on("join_feem_network_completed", function (evt, parameters) {
            $timeout(function () {
                $scope.join_hotspot_text = $translate.instant("_wifi_networks");
;
                $scope.disabled = false;

                if (parameters.status == "success") {
                    toaster.pop({
                        type: "info",
                        title: $translate.instant("_connected"),
                        body: $translate.instant("_wifi") + ": " + parameters.ssid,
                        timeout: 3000
                    });
                } else {
                    toaster.pop({
                        type: "error",
                        title: $translate.instant("_connection_error"),
                        body: $translate.instant("_wifi") + ": "  + parameters.ssid,
                        timeout: 3000
                    });
                }

            }, 0);

        });





        $scope.$on("update_networks", function (evt, parameters) {
            $timeout(function () {
                $scope.join_hotspot_text = $translate.instant("_wifi_networks");
                $scope.disabled = false;

                var options = [];
                options.push({ text: $translate.instant("_wifi_networks"), label: true });



                if($scope.device.hotspot_is_running){
                    options.push({ id: "stop_hotspot", text: $translate.instant("_stop_hotspot"), bold: true });
                    options.push({ id: "show_hotspot_password", text: $translate.instant("_show_hotspot_password"), bold: true });

                }else{
                    options.push({ id: "start_hotspot", text: $translate.instant("_create_hotspot"), bold: true });

                }



                angular.forEach(parameters.networks, function (network) {
                    var ssid = $translate.instant("_join") + ": " + network.ssid;
                    if(network.ssid == $scope.device.ssid){
                        ssid = $translate.instant("_connected") + ": "  + $scope.device.ssid;
                    }

                    options.push({ id: network.bssid, text: ssid, bold: false });
                });

                iosActionSheet(options).then(function (data) {

                    if(data.button.id == "show_hotspot_password"){
                           $scope.show_hotspot_password();
                        return;
                    }

                    else if(data.button.id == "start_hotspot"){

                        $scope.start_hotspot();
                    }
                    else if(data.button.id == "stop_hotspot"){
                        $scope.stop_hotspot();
                    }
                    else{
                        $scope.join_hotspot_text = $translate.instant("_connecting");

                        FeemBridge.request("/join_feem_network", { bssid: data.button.id }, function (response) {

                        });

                        return;
                    }


                });

            }, 0);


        });
    }

    return {
      restrict: 'A',
      replace: true,
      scope: {},
      template: template_,
      link: function ($scope) {
            $translate.onReady().then(function(){
                link_($scope);
            });



        }
      }
}])

.directive('peer', ['$rootScope', '$filter', '$timeout', '$translate', function($rootScope, $filter, $timeout, $translate){
  var template_ = '\
    <tr ng-click="peer_clicked(ppeer.id);" style="cursor: pointer; background-color:{{ppeer.selected ? \'#BBDEFB\': \'inherit\'}};">\
      <td width="75px" style="border-bottom-width: 1px;border-bottom-style: solid; border-bottom-color: #cdcdcd; padding-left: 10px; position: relative;"><peer-thumbnail width="50px;" height="50px;" src="{{ppeer.avatar}}" text="{{ppeer.alias}}"></peer-thumbnail> <img style="vertical-align: middle; position: absolute; right: 2px; top: 4px;" ng-if="ppeer.ip != \'\'" width="10px" src="images/icons/checkmark_chat.png"></img> </td>\
      <td style="border-bottom-width: 1px;border-bottom-style: solid; border-bottom-color: #cdcdcd;" >\
     <div style="height: 25px;  ">\
        <img style="display: inline-block; vertical-align:middle; height: 16px " src="{{device_logo}}"></img>   <span style="overflow:hidden;font-size: 16px; vertical-align: middle; font-weight: {{ppeer.unread > 0 ? \'bold\': \'normal\' }}"  class="primary-text-color">{{ ppeer.alias }}   </span> <span style="font-weight: bold" ng-if="ppeer.unread>0">({{ ppeer.unread }})</span></div>\
      <div>  <span style="font-size: 15px; width: 200px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; display: inline-block; " class="secondary-text-color">{{ppeer.last_message || ppeer.ip || ("_offline" | translate)}}</span></div>\
    </td>\
    </tr>\
  ';


  var link_ = function($scope, element, attrs) {

      var device_logo = "";
      var sys_info = $scope.ppeer.sys_info.toLowerCase();


        if(sys_info.indexOf("mac") > -1){
          device_logo = "images/devices/laptop-mac.png"
        }
        if(sys_info.indexOf("imac") > -1){
        device_logo = "images/devices/desktop-mac.png"
      }

      if(sys_info.indexOf("android") > -1){
        device_logo = "images/devices/android.png"
      }
      if(sys_info.indexOf("windows") > -1){
        device_logo = "images/devices/windows.png"
      }
      if(sys_info.indexOf("ipad") > -1){
        device_logo = "images/devices/tablet-ipad.png"
      }
      if(sys_info.indexOf("iphone") > -1){
        device_logo = "images/devices/cellphone-iphone.png"
      }
      if(sys_info.indexOf("linux") > -1){
        device_logo = "images/devices/linux.png"
      }
      if(sys_info.indexOf("ubuntu") > -1){
        device_logo = "images/devices/linux.png"
      }
      if(sys_info.indexOf("fedora") > -1){
        device_logo = "images/devices/linux.png"
      }


      $scope.device_logo = device_logo;

      $scope.selected = false;

      $scope.peer_clicked = function(peerid){
          $rootScope.$broadcast('peer_clicked', peerid);

      };


      $scope.$on("update_bytes_transferred", function(evt, parameters){

        if($scope.ppeer.id == parameters.device){
            var percentage = 100.0 * (+parameters.bytes_transferred) / (+parameters.total_bytes);
            percentage = $filter('number')(percentage, 2);
            var filename = $filter('basename')(parameters.filepath);

             $scope.$evalAsync(function(){
             $scope.ppeer.last_message = (percentage + "% - " + filename);
             });

        }

   }
   );


   };

  return {
      restrict: 'A',
      replace: true,
      scope: {
            ppeer: "=",
            smallscreen: '@'
      },
     link: function($scope){

         var update_translations = function(){
             if($scope.ppeer.last_message && $scope.ppeer.last_message == "_sent_some_files"){

                 $scope.ppeer.last_message = $translate.instant("_sent_some_files");
             }

             if($scope.ppeer.last_message && $scope.ppeer.last_message == "Sent some files"){
                 $scope.ppeer.last_message = $translate.instant("_sent_some_files");
             }

             if($scope.ppeer.last_message && $scope.ppeer.last_message == "_new_files"){
                 $scope.ppeer.last_message = $translate.instant("_new_files");
             }

             if($scope.ppeer.last_message && $scope.ppeer.last_message == "New Files"){
                 $scope.ppeer.last_message = $translate.instant("_new_files");
             }

         }

         $translate.onReady().then(function(){
             update_translations();
             link_($scope);

             $scope.$watch("ppeer", function(){
                update_translations();
             });
         });
     },
      template: template_
  }
}])


.directive('devicesEmpty', function(FeemDevice){
    var template_ = '\
        <table cellspacing="0px" style="width: 100%; max-height: 100%; min-height: 400px;">\
           <tr>\
             <td class="divider-color">\
               <center>\
                <img  class="shadow" style="margin-top:10px;" width=200px" src="images/waiting.jpg">\
                <h1 style="  font-weight: normal;font-size: 36px;" class="primary-text-color">{{"_waiting_for_other_devices" | translate}}<br></h1>\
               </center>\
<div style="line-height: 20px; font-size: 14px; width: 90%; padding-left: 5%; ">\
<p >With Feem, you can quickly share an unlimited number of pictures and other files between your devices.</p>\
<p>Follow the instructions below to get started: </p>\
<p>&nbsp;</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;">1. You need to install Feem v4 on all of your devices. Go to your other devices and download Feem v4 here: <a href="http://www.feem.io/?ref=app">www.feem.io</a></p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;">2. Launch Feem v4 on all of your devices.</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;">3. Turn on your Wi-Fi, and ensure all of your devices are connected to the same Wi-Fi network. <span ng-if="!device.ssid" style="color: red"><br><strong>You are not connected to Wi-Fi. Turn on your Wi-Fi.</strong></span><span ng-if="device.ssid">Your Wi-Fi network is: <strong><u>{{device.ssid}}</u></strong>.</span></p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;">4. Your devices should automatically detect each other. You now have the new super power of unlimited file transfers between your devices.</p>\
<p style="border-bottom: 1px solid #cdcdcd; border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;">5. Still not working? Send us an email: <b>info@feeperfect.com</b></p>\
</div>\
               <br>\
                <br>\
             </td>\
           </tr>\
         </table>\
    ';
    return {
      restrict: 'A',
      replace: true,
      template: template_,
        link: function(scope){
            scope.$on('device_updated', function (event, data) {

                      FeemDevice.update(scope);

            });

        }
      }
})
.directive('devices', ['FeemBridge', function(FeemBridge){
    var template_ = '\
        <table style="position:relative;" cellspacing="0px" width="100%"  >\
          <tr ng-repeat = "idpeer in all_peer_ids"  peer   ppeer="data_peers[idpeer]" smallscreen="{{small_screen}}" > \
          </tr>\
        </table>\
    ';

    return {
      restrict: 'A',
      replace: true,
      template: template_,
      link: function($scope){
      }
      }
}])


.directive('hotspot',  ['FeemBridge', '$timeout', 'toaster', '$translate', 'FeemDevice', 'iosActionSheet', function(FeemBridge, $timeout, toaster, $translate, FeemDevice, iosActionSheet){

var template_ = '<div style="cursor:pointer; position: absolute; top: 130px; left: 0px; right: 0px; padding-left:10px;height:50px; border-bottom: 1px solid;">\
<div  style="position:relative; width: 100%; height: 100%; ">\
<table ng-click="wifi_direct_clicked();" style="width: 100%; height: 100%;table-layout:fixed; margin: 0px; " cellspacing=0 cellborder=0>\
<tr>\
<td width="50px" align="center" >\
<img  ng-if="!device.hotspot_is_running" height="20px" style="padding: 0px; margin: 0px; align:center; vertical-align: middle; text-align:center;" src="images/icons/off.png">\
<img ng-if="device.hotspot_is_running" height="20px" style="padding: 0px; align:center; vertical-align: middle; text-align:center;" src="images/icons/on.png">\
</td>\
<td style="font-size: 15px;">\
<span ng-if="!processing && !device.hotspot_is_running">Turn On Wi-Fi Direct</span>\
<span ng-if="processing">Processing...</span>\
<span ng-if="!processing && device.hotspot_is_running" style="overflow:auto;">Wi-Fi Direct Is On</span>\
</td>\
</tr>\
</table>\
</div>\
</div>';

var link_ = function(scope){

    scope.processing = false;
    FeemDevice.update(scope);

     scope.$on('device_updated', function (event, data) {
                scope.processing = false;
               FeemDevice.update(scope);

     });

    scope.start_hotspot = function () {
            scope.processing = true;
            FeemBridge.request("/start_hotspot", {}, function (response) {

            });
        }

        scope.stop_hotspot = function () {

scope.processing = true;
                    FeemBridge.request("/stop_hotspot", {}, function (response) {
                        // console.log(response);
                        //$scope.hotspot_activated = response.activated;

                    });
        }

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
                          title: $translate.instant("_hotspot") + ": " + parameters.ssid,
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
    link: link_


}


}])

.directive('home',  ['FeemBridge', 'FeemPeers', '$rootScope', '$timeout', 'FeemDevice', function(FeemBridge, FeemPeers, $rootScope, $timeout, FeemDevice){

    var template_ = '\
    <div class="fragment">\
       <div profile> </div>\
       <div  ng-if="!device.has_hotspot_feature" style="position: absolute; top: 130px; left: 0px; right: 0px; padding-left: 15px;height:50px; border-bottom: 1px solid; line-height: 50px; " class="">{{"_contacts" | translate}}: {{all_peer_ids.length}}</div>\
       <div ng-if="device.has_hotspot_feature" hotspot></div>\
       <div style="position: absolute;top: 180px; left: 0px; right: 0px; bottom: 0px;">\
           <div style="position: relative; width: 100%; height: 100%; overflow: auto;">\
           <table devices-empty ng-if="all_peer_ids.length == 0"> </table>\
           <table devices ng-if="all_peer_ids.length > 0"> </table>\
            </div>\
       </div>\
       <div ng-click="goto_settings();" class="button accent-color" style="cursor: pointer;position: absolute; right: 10px; top: 100px;">\
         <img width="40px" src="images/icons/settings.png"></img>\
       </div>\
       <div ng-if="device.os==\'ios\' || device.os==\'android\'" ng-click="open_file_browser(\'\');" class="button accent-color" style="cursor: pointer;position: absolute; right: 10px; top: 10px;">\
         <img width="40px" src="images/icons/folder.png"></img>\
       </div>\
     </div>\
    ';
    return {
      restrict: 'A',
      replace: true,
      template: template_,
        scope: {},
        link: function($scope){
                     


                     FeemDevice.update($scope);


            //FeemPeers.update_peers($scope);

            $scope.update_selection = function(peer_id){
                 if(!peer_id){
                     return;
                 }

                 //console.log("before selection");


                angular.forEach($scope.data_peers , function(peer){

                    if(peer.id == peer_id){


                        peer.selected = true;
                        peer.unread = 0;

                        FeemBridge.request("/clear_unread", {id: peer.id}, function(response){

                        });

                    }else{

                        peer.selected = false;
                    }
                });

                 //console.log("after selection");

            };


            $scope.$on('peer_clicked', function(event, peer_id){
                if($rootScope.page == 'pending_files'){
                    return;
                }


                $scope.update_selection(peer_id);
                $rootScope.page = "peerview";
                $rootScope.selected_peer = peer_id;

                $timeout(function () {

                    $rootScope.$broadcast('chat_peer_changed', peer_id);
                },0);

            });


            $scope.$on('new_chat', function(event, chat){
               // FeemPeers.update_peers($scope);


             });





            $scope.$on('peers_updated', function(event, data){
                //console.log("peers_updated");
                //FeemPeers.update_peers($scope);

             });

            $scope.goto_settings = function(){
                $rootScope.page = "settings";
            }

            $scope.open_file_browser = function(){

               FeemBridge.open_file_browser({to: $scope.selected_peer_id});
            }
        }
      }
}]);

