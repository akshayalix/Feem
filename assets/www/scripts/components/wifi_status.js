airsend_app
.directive('wifiStatus', ['FeemDevice', function(FeemDevice){

    var template_ = '\
    <div>\
        <p ng-if="device.ssid.length > 0">Wi-Fi: {{device.ssid}}</p>\
        <p ng-if="device.ssid.length == 0" translate>LANG_NOT_CONNECTED_TO_WIFI</p>\
    </div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function ($scope) {

            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = data;

            });


        },
        template: template_
    }

}])
