airsend_app
.directive('deviceSettings', ['$state', 'theme', '$rootScope', 'FeemDevice', '$timeout', 'FeemBridge', function($state, theme, $rootScope, FeemDevice, $timeout, FeemBridge){
var template_ = '\
    <div>\
        <table style="table-layout: fixed; height: 100%; width: 100%; position: absolute;">\
            <tr>\
                <td class="hidden-xs" style="height: 130px">\
                    <div panel-generic-header title="LANG_DEVICE_SETTINGS"></div>\
                </td>\
                <td class="visible-xs" style="height: 60px">\
                    <div panel-generic-header title="LANG_DEVICE_SETTINGS"></div>\
                </td>\
            </tr>\
            <tr ng-if="device" style="">\
                <td valign="top" style="position: relative; background-color: white;" >\
                        <div style="position:relative; padding-bottom: 30px; left: 0px; right: 0px; bottom: 0px; top: 0px; background-color:white;">\
                <div style="position: relative;background-color: white;">\
                <div ng-if="!device.account.license_name"  style="cursor:pointer; padding: 10px;" ng-click="get_feem_pro();">\
                    <p class="lead" translate>LANG_UNLOCK_MORE_FEATURES</p>\
                    <button style="margin-bottom:10px; background-color: {{theme.primary_color}};" class="btn btn-primary" href ng-click="get_feem_pro();" translate>LANG_GET_FEEM_PRO</button><br>\
                    <p><a  style="color: {{theme.primary_color}};" href="javascript:void(0);" ng-click="restore_purchase();" translate>LANG_RESTORE_PURCHASE</a></p>\
                </div>\
                 <div  ng-if="!device.account.license_name" style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                 <div style="padding: 10px; background-color: white; ">\
                <form ng-if="device.os==\'windows\' || device.os==\'linux\' || device.os==\'mac\'">\
                    <div ng-click="toggle_run_on_startup();" style="cursor:pointer;">\
                        <p style="cursor:pointer;">\
                          <img style="height: 30px;" ng-src="images/icons/{{device.run_on_startup?\'on\':\'off\'}}.png"> {{\'LANG_RUN_ON_STARTUP\' | translate}}\
                        </p>\
                    </div>\
                    <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                </form>\
                <form>\
                    <div ng-click="toggle_run_web_share_on_startup();" style="cursor:pointer;">\
                        <p style="cursor:pointer;">\
                          <img style="height: 30px;" ng-src="images/icons/{{device.run_web_share_on_startup?\'on\':\'off\'}}.png"> {{\'LANG_RUN_WEB_SHARE_ON_STARTUP\' | translate}}\
                        </p>\
                      <p class="text-danger" ng-if="show_pro.web_share">{{"LANG_YOU_NEED_A_FEEM_PRO_LICENSE_WEB_SHARE" | translate}}.</p>\
                    </div>\
                    <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                </form>\
                <form ng-if="device.os==\'windows\' || device.os==\'android\' || device.os==\'winrt\'">\
                    <div ng-click="toggle_run_wifi_direct_on_startup();" style="cursor:pointer;">\
                        <p style="cursor:pointer;">\
                          <img style="height: 30px;" ng-src="images/icons/{{device.run_wifi_direct_on_startup?\'on\':\'off\'}}.png"> {{\'LANG_RUN_WIFI_DIRECT_ON_STARTUP\' | translate}}\
                        </p>\
                      <p class="text-danger" ng-if="show_pro.wifi_direct">{{"LANG_YOU_NEED_A_FEEM_PRO_LICENSE_WIFI_DIRECT" | translate}}.</p>\
                    </div>\
                    <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                </form>\
                    <form>\
                      <div highlighter="device.alias" class="form-group">\
                        <label translate>LANG_DEVICE_NAME</label>\
                        <p ng-if="!alias_is_editing" class="text-muted">{{device.alias}}</p>\
                        <input ng-if="alias_is_editing" ng-enter="change_alias()" ng-model="device.alias" type="" class="form-control"></input>\
                      </div>\
                      <button ng-click="change_alias();" type="button" class="btn {{alias_is_editing?\'btn-danger\':\'btn-default\'}}">{{alias_is_editing?\'LANG_CONFIRM\':\'LANG_CHANGE\' | translate}}</button>\
                      <p class="text-danger" ng-if="show_pro.alias">{{"LANG_YOU_NEED_A_FEEM_PRO_LICENSE_ALIAS" | translate}}.</p>\
                    </form>\
                <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                <form ng-if="device.os==\'windows\' || device.os==\'linux\' || device.os==\'mac\' || device.os==\'android\' || device.os==\'ios\' || device.os==\'winrt\'">\
                  <div class="form-group" >\
                    <label translate>LANG_DEVICE_AVATAR</label>\
                    <p ng-if="device.avatar"><img ng-click="change_avatar();" class="img-thumbnail" ng-src="{{device.avatar}}"></p>\
                    <p ng-if="!device.avatar" class="text-muted" translate>LANG_NO_AVATAR</p>\
                  </div>\
                  <button ng-click="change_avatar();" type="button" class="btn btn-default"translate>LANG_CHANGE</button>\
                  <p class="text-danger" ng-if="show_pro.avatar">{{"LANG_YOU_NEED_A_FEEM_PRO_LICENSE_AVATAR" | translate}}.</p>\
                   <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                </form>\
                <form ng-if="device.os==\'windows\' || device.os==\'linux\' || device.os==\'mac\' || device.os==\'android\'">\
                  <div class="form-group">\
                    <label translate>LANG_DOWNLOADS_FOLDER</label>\
                    <p ng-if="device.downloads_folder==\'\'" class="text-muted">{{"LANG_AUTOMATIC" | translate}}</p>\
                    <p ng-if="device.downloads_folder!=\'\'">{{device.downloads_folder}}</p>\
                  </div>\
                  <button ng-click="change_downloads_folder();" type="button" class="btn btn-default" translate>LANG_CHANGE</button>\
                  <button type="button" class="btn btn-default" ng-if="device.downloads_folder!=\'\'" style="margin-left: 10px;" href="#"  ng-click="reset_downloads_folder()" translate>LANG_RESET</button>\
                  <p class="text-danger" ng-if="show_pro.downloads_folder">{{"LANG_YOU_NEED_A_FEEM_PRO_LICENSE_DOWNLOADS" | translate}}.</p>\
                </form>\
                </div>\
               </div>\
           </div>\
                </td>\
            </tr>\
        </table>\
    </div>';
    

    



    return {
        restrict: 'A',
        replace: true,
        template: template_,
        scope: {},
        link: function($scope){
            $scope.theme = theme.default;
            $scope.show_pro = {};
            $scope.stop_show_pro = {};

             $scope.update_show_pro = function(type){
                $scope.show_pro[type] = true;
                //console.log(JSON.stringify($scope.show_pro));
                if($scope.stop_show_pro[type]){
                    $timeout.cancel($scope.stop_show_pro[type]);
                }

                $scope.stop_show_pro[type] = $timeout(function(){
                    $scope.show_pro[type] = false;
                    console.log(JSON.stringify($scope.show_pro));

                }, 3000);
            }

            // $scope.show_pro = function(type){
            //     $scope.show_pro[type] = true;
            //     if($scope.stop_show_pro[type]){
            //         $timeout.cancel($scope.stop_show_pro[type]);
            //     }

            //     $scope.stop_show_pro[type] = $timeout(function(){
            //         $scope.show_pro[type] = false;
            //     }, 3000);
            // }


            $scope.alias_is_editing = false;

            $scope.change_alias = function(){

                if($scope.device.has_pro_feature){
                    if($scope.alias_is_editing){
                      if($scope.device.alias.length > 1){

                        var settings = {};
                        settings.alias = $scope.device.alias;

                        FeemBridge.request("/new_settings", settings, function(reply){
                          if(reply.status == "success"){

                          }
                        });
                      }

                    }
                    $scope.alias_is_editing = !$scope.alias_is_editing;
                }
                else{
                    $scope.update_show_pro('alias');
                }

                //

            }


            $scope.change_avatar = function(){

                if($scope.device.has_pro_feature){
                    FeemBridge.change_avatar();
                }
                else{
                    $scope.update_show_pro('avatar');
                }


            }

            $scope.change_downloads_folder = function(){

                if($scope.device.has_pro_feature){
                    FeemBridge.change_downloads_folder();
                }
                else{
                    $scope.update_show_pro('downloads_folder');
                }

            }

            $scope.reset_downloads_folder = function(){
                FeemBridge.request("/reset_downloads_folder", {}, function(reply){

                });
            }

            $scope.toggle_run_on_startup = function(){
                FeemBridge.request("/toggle_run_on_startup", {}, function(reply){

                });
            }

            $scope.toggle_run_web_share_on_startup = function(){

                if($scope.device.has_pro_feature){
                    FeemBridge.request("/toggle_run_web_share_on_startup", {}, function(reply){

                    });
                }
                else{
                    $scope.update_show_pro('web_share');
                }


            }

            $scope.toggle_run_wifi_direct_on_startup = function(){
                if($scope.device.has_pro_feature){
                    FeemBridge.request("/toggle_run_wifi_direct_on_startup", {}, function(reply){

                    });
                }
                else{
                    $scope.update_show_pro('wifi_direct');

                }


            }
                              
             $scope.get_feem_pro = function(){
                        if($scope.device.os == "ios"){
                            $state.go("/feemstore");
                        }else{
                            window.location.href = "http://www.feem.io/feem_pro_universal/";
                        }

                    return;
             }

            $scope.restore_purchase = function(){
                $state.go("/feemprosettings");
                 return;
             };


           
            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $timeout(function(){
                    $scope.device = angular.extend($scope.device, data);
                },100);

            });


        }
        }

}])
