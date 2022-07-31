airsend_app
.directive('aboutFeem', ['$state', 'theme', 'FeemDevice', '$rootScope', function($state, theme, FeemDevice, $rootScope){

    var template_ = '\
    <div>\
        <table style="table-layout: fixed; height: 100%; width: 100%; position: absolute;">\
            <tr>\
                <td class="hidden-xs" style="height: 130px">\
                    <div panel-generic-header title="LANG_ABOUT_FEEM"></div>\
                </td>\
                <td class="visible-xs" style="height: 60px">\
                    <div panel-generic-header title="LANG_ABOUT_FEEM"></div>\
                </td>\
            </tr>\
            <tr style="">\
                <td valign="top" style="position: relative; background-color: white;" >\
                        <div style="position:relative; left: 0px; right: 0px; bottom: 0px; top: 0px;">\
                <div style="position: relative;">\
                 <div style="padding: 10px; background-color: white; ">\
                    <table>\
                        <tr>\
                            <td><p class="text-muted" translate>LANG_CURRENT_VERSION</p></td><td><p style="margin-left: 10px;">{{ device.app_version }}</p></td>\
                        </tr>\
                        <tr>\
                            <td><p class="text-muted" translate>LANG_LATEST_VERSION</p></td><td><p style="margin-left: 10px;color: {{device.latest_app_version && (device.app_version == device.latest_app_version)? \'green\': \'#D32F2F\'}};">{{ device.latest_app_version || \'LANG_UNKNOWN\' | translate }}</p></td>\
                        </tr>\
                    </table>\
                    <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                        <img height="14px" src="images/icons/heart.png"> <img height="14px"" src="images/icons/cameroon.png">\
                        <p translate>LANG_MADE_IN_CAMEROON</p>\
                        <p class="text-muted" translate>LANG_LEGAL_DISCLAIMER</p>\
                        <p><span translate>LANG_NO_DEVICES_HARMED</span> <img height="14px" src="images/icons/laugh.png"></p>\
                        <p class="text-muted" translate>LANG_EMAIL_SUPPORT</p>\
                        <p>info@feeperfect.com</p>\
                        <p class="text-muted" translate>LANG_SOCIAL_RESPONSIBILITY</p>\
                        <p translate>LANG_SUPPORT_FEEM</p>\
                    </div>\
               </div>\
           </div>\
                </td>\
            </tr>\
        </table>\
    </div>';
    

    var template2_ = '\
            <div style="position:relative; left: 0px; right: 0px; bottom: 0px; top: 0px;">\
                <div style="position: relative;">\
                 <div style="padding: 10px; background-color: white; ">\
                    <table>\
                        <tr>\
                            <td><p class="text-muted" translate>LANG_CURRENT_VERSION</p></td><td><p style="margin-left: 10px;">{{ device.app_version }}</p></td>\
                        </tr>\
                        <tr>\
                            <td><p class="text-muted" translate>LANG_LATEST_VERSION</p></td><td><p style="margin-left: 10px;color: {{device.latest_app_version && (device.app_version == device.latest_app_version)? \'green\': \'#D32F2F\'}};">{{ device.latest_app_version || \'LANG_UNKNOWN\' | translate }}</p></td>\
                        </tr>\
                    </table>\
                    <div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
                        <img height="14px" src="images/icons/heart.png"> <img height="14px"" src="images/icons/cameroon.png">\
                        <p translate>LANG_MADE_IN_CAMEROON</p>\
                        <p class="text-muted" translate>LANG_LEGAL_DISCLAIMER</p>\
                        <p><span translate>LANG_NO_DEVICES_HARMED</span> <img height="14px" src="images/icons/laugh.png"></p>\
                        <p class="text-muted" translate>LANG_EMAIL_SUPPORT</p>\
                        <p>info@feeperfect.com</p>\
                        <p class="text-muted" translate>LANG_SOCIAL_RESPONSIBILITY</p>\
                        <p translate>LANG_SUPPORT_FEEM</p>\
                    </div>\
               </div>\
           </div>';



    return {
        restrict: 'A',
        replace: true,
        scope: {

        },
        template: template_,
        link: function($scope){
            $scope.theme = theme.default;

            

            $scope.$on('latest_app_version', function (event, data) {
                $scope.$evalAsync(function () {
                    console.log("latest app version");
                    $scope.device.latest_app_version = data.version;
                    console.log("after " + JSON.stringify($scope.device));

                });

            });

            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = angular.extend($scope.device, data);

            });

            $rootScope.check_updates_2();
        }
        }

}])
