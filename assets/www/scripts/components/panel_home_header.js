airsend_app
.directive('panelHomeHeader', ['FeemBridge', '$http', 'airsend_config', 'FeemDevice', '$rootScope', '$interval', 'theme', function(FeemBridge,$http, airsend_config, FeemDevice, $rootScope, $interval, theme){
  var template_ = '\
       <div style="background-color: {{theme.primary_color}}; height: 100%; color: {{theme.text_color}};">\
       <table style="position: relative; height: 80px; width: 95%; table-layout-fixed; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); ">\
            <tr>\
                <td style="width: 100px;"><peer-thumbnail size="70" sysinfo = "{{device.sys_info}}" src="{{ device.avatar | trusted}}" text="{{device.alias}}"></peer-thumbnail></td>\
                <td>\
                    <table style="width: 100%">\
                        <tr>\
                            <td ><h3><small style="color:white;" translate>LANG_I_AM</small> {{device.alias}}</h3></td>\
                        </tr>\
                        <tr>\
                            <td style="color: {{theme.light_primary_color}}"><div wifi-status></div></td>\
                        </tr>\
                    </table>\
                </td>\
            </tr>\
        </table>\
</div>\
  ';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {},
      link: function ($scope) {

          $scope.theme = theme.default;

          $scope.device = FeemDevice.get();

          $scope.$on('device_updated_2', function (event, data) {
              $scope.device = data;

          });




      }
      }

}])
