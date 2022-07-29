airsend_app
.directive('webMode', ['FeemDevice', '$state', '$rootScope', 'theme', 'FeemBridge', '$timeout', 'toaster', '$translate', function(FeemDevice, $state, $rootScope, theme, FeemBridge, $timeout, toaster, $translate){

    var template_ = '<div style="position: relative;">\
<table style="table-layout: fixed; height: 100%; width: 100%; position: absolute;">\
    <tr>\
        <td class="hidden-xs" style="height: 130px">\
            <div panel-generic-header title="LANG_WEB_MODE"></div>\
        </td>\
        <td class="visible-xs" style="height: 60px">\
            <div panel-generic-header title="LANG_WEB_MODE"></div>\
        </td>\
    </tr>\
    <tr style="">\
        <td valign="top" style="position: relative; background-color: white;" >\
                <div  ng-click="toggle_run_web_mode();" style="cursor:pointer; line-height: 60px; text-align: center; color: white; background-color: {{theme.dark_primary_color}};">\
                    <p style="cursor:pointer;">\
                      <img style="height: 30px;" ng-src="images/icons/{{device.run_web_mode?\'on\':\'off\'}}.png"> {{ (device.run_web_mode?\'LANG_TURN_OFF_WEB_MODE\':\'LANG_TURN_ON_WEB_MODE\')  | translate}}\
                    </p>\
                </div>\
                <div ng-if="device.run_web_mode" style="padding: 10px; background-color: white; position: absolute; left: 0px; right: 0px; top: 60px; bottom: 0px; overflow: auto; ">\
                <button style="margin-top: 5px; margin-bottom: 10px; background-color: {{theme.primary_color}}" class="btn btn-primary" type="button" data-toggle="collapse" data-target="#aboutwebmode" aria-expanded="false" aria-controls="aboutwebmode" translate>LANG_ABOUT_FEEM_WEBSHARE_TITLE</button>\
                <div class="collapse" id="aboutwebmode" style="">\
                      <div class="panel panel-default">\
                          <div class="panel-body">\
                                <p translate>LANG_ABOUT_FEEM_WEBSHARE_BODY1</p>\
                                <p translate>LANG_ABOUT_FEEM_WEBSHARE_BODY2</p>\
                                <p style="font-weight: bold;" translate>LANG_ABOUT_FEEM_WEBSHARE_BODY3</p>\
                                <p translate>LANG_ABOUT_FEEM_WEBSHARE_BODY4</p>\
                          </div>\
                    </div>\
                </div>\
                      <div class="panel panel-default">\
                      <div class="panel-heading">\
                        <h3 class="panel-title" translate>LANG_WEB_MODE_URLS</h3>\
                      </div>\
                      <div ng-if="local_ips.length > 0" class="panel-body">\
                        <div  class="list-group">\
                          <li ng-repeat="ip in local_ips" class="list-group-item">http://{{ip}}:{{device.webshare_port}}</li>\
                        </div>\
                      </div>\
                      <div ng-if="local_ips.length == 0" class="panel-body">\
                       <div class="alert alert-danger alert-dismissible" role="alert">\
                          <strong translate>LANG_NO_IP_ADDRESSES</strong>  {{\'LANG_NO_IP_ADDRESSES_TIP\' | translate}}\
                        </div>\
                      </div>\
                    </div>\
                    <div class="panel panel-default">\
                      <div class="panel-heading">\
                        <h3 class="panel-title" translate>LANG_WEB_MODE_PASSWORD</h3>\
                      </div>\
                      <div class="panel-body">\
                        <form>\
                          <div class="form-group">\
                            <h2 style="margin: 0px;"  class="text-muted">{{device.webshare_password}}</h2>\
                            <input ng-if="password_is_editing" ng-enter="change_password()" ng-model="device.webshare_password" type="" class="form-control"></input>\
                          </div>\
                          <button ng-click="change_password();" type="button" class="btn {{password_is_editing?\'btn-danger\':\'btn-default\'}}">{{password_is_editing?\'LANG_CONFIRM\':\'LANG_CHANGE\' | translate}}</button>\
                          <p class="text-danger" ng-if="show_pro.webshare_password">{{"LANG_YOU_NEED_A_FEEM_PRO_LICENSE_WEBSHARE_PASSWORD" | translate}}.</p>\
                        </form>\
                      </div>\
                    </div>\
                    <div class="panel panel-default">\
                      <div class="panel-heading">\
                        <h3 class="panel-title" translate>LANG_SHARED_FILES</h3>\
                      </div>\
                      <div class="panel-body">\
                        <button ng-click="add_shared_files();" type="button" class="btn btn-default" translate>LANG_ADD_SHARED_FILES</button>\
                        <ul class="list-group" style="margin-top: 20px;">\
                            <li ng-repeat="file in shared_files" href class="list-group-item">\
                                <div class="media">\
                                    <div class="media-body" ng-if="file.type==\'file\'">\
                                        <h4 class="media-heading" style="overflow-wrap: break-word; word-break: break-all;">{{file.name}}</h4>\
                                        </p>\
                                    </div>\
                                    <div class="media-right" ng-if="file.type==\'file\'" ng-click="remove_shared_file(file);">\
                                            <img style="height: 35px;" ng-src="images/icons/trash.png">\
                                    </div>\
                                </div>\
                            </li>\
                        </ul>\
                      </div>\
                    </div>\
                </div>\
        </td>\
    </tr>\
</table>\
</div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function ($scope) {

            $scope.theme = theme.default;
            $scope.panel = "device";



            $scope.switch_panel = function(panel){
                $scope.panel = panel;
            }

            $scope.show_pro = {};
            $scope.stop_show_pro = {};

            console.log(JSON.stringify($scope.show_pro));


            $scope.update_show_pro = function(type){
                $scope.show_pro[type] = true;
                console.log(JSON.stringify($scope.show_pro));
                if($scope.stop_show_pro[type]){
                    $timeout.cancel($scope.stop_show_pro[type]);
                }

                $scope.stop_show_pro[type] = $timeout(function(){
                    $scope.show_pro[type] = false;
                    console.log(JSON.stringify($scope.show_pro));

                }, 3000);
            }

            $scope.local_ips = [];

            $scope.refresh_local_ips = function(){
                FeemBridge.request("/local_ips", {}, function(reply){
                    var ips = [];

                    //remove all ipv6 addresses.
                    angular.forEach(reply.local_ips, function(ip){
                        if(ip.indexOf(":") == -1){
                            ips.push(ip);
                        }
                    });

                    $scope.local_ips = ips;
                });
            };

            $scope.refresh_local_ips();

            $scope.toggle_run_web_mode = function(){
                FeemBridge.request("/toggle_run_web_mode", {}, function(reply){

                });
            };

            $scope.about = function(){
                toaster.pop({
                                type: "info",
                                title: $translate.instant('LANG_ABOUT_FEEM_WEBSHARE_TITLE'),
                                body: $translate.instant('LANG_ABOUT_FEEM_WEBSHARE_BODY'),
                                timeout: -1
                });
            };

            $scope.password_is_editing = false;

            $scope.change_password = function(){

                if($scope.device.has_pro_feature){
                    if($scope.password_is_editing){
                      if($scope.device.webshare_password.length > 1){

                        var settings = {};
                        settings.webshare_password = $scope.device.webshare_password;

                        FeemBridge.request("/new_settings", settings, function(reply){
                            alert(JSON.stringify(reply));
                          if(reply.status == "success"){

                          }
                        });
                      }

                    }
                    $scope.password_is_editing = !$scope.password_is_editing;
                }
                else{
                    $scope.update_show_pro('webshare_password');
                }

                //

            }

            $scope.add_shared_files = function(){
                //alert($scope.device.has_pro_license);

                if($scope.shared_files && $scope.shared_files.length >= 3 && !$scope.device.has_pro_feature){


                    toaster.pop({
                                    type: "error",
                                    title: $translate.instant('LANG_OUCH_YOU_NEED_FEEM_PRO'),
                                    //body: "Free users cannot add more than 3 files in web share mode",
                                    body: $translate.instant('LANG_FREE_USERS_LIMITED_WEBSHARE_MODE'),
                                    timeout: -1
                    });

                    return;
                }

                FeemBridge.add_shared_files();
            }

            $scope.remove_shared_file = function(file){
                //alert(file.id);
                var shared_files = [];
                angular.forEach($scope.shared_files, function(ffile){
                    if (ffile.id != file.id){
                        shared_files.push(ffile);
                    }
                });

                $scope.shared_files = shared_files;
                FeemBridge.request("/remove_shared_file", {"id": file.id}, function(reply){

                });
            }

            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $timeout(function(){
                    $scope.device = angular.extend($scope.device, data);
                    $scope.refresh_local_ips();

                },100);

            });

             $scope.$on('shared_files_updated', function (event, data) {


                               $scope.refresh_shared_files();



             });

            $scope.shared_files = [];
            $scope.refresh_shared_files = function(){

                FeemBridge.request("/shared_files", {}, function(reply){
                   $timeout(function(){
                    $scope.shared_files = reply.files;


                    },0);
                });
            }

            $scope.refresh_shared_files();



        },
        template: template_
    }

}])
