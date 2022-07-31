airsend_app
.directive('widgetDownloading', ['$filter', '$interval', '$rootScope', 'theme', function($filter, $interval, $rootScope, theme){
  var template_ = '\
       <div ng-show="speed_stats.speed" style="">\
       <div style="height: 60px; width: 60px; border-radius: 50%;  position: relative; background-color:white; color: #777;">\
<round-progress max="100" current="speed_stats.percentage" color="{{theme.accent_color}}" bgcolor="#eaeaea" radius="30" stroke="5" semi="false" rounded="true" clockwise="true" responsive="false" duration="3000" animation="easeInOutQuart" animation-delay="0"></round-progress>\
<table style="position: absolute;  width: 40px;  table-layout: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); text-align: center;">\
                <tr>\
                    <td style="font-size: 12px;">{{speed_stats.speed}} {{speed_stats.speed_unit}}</td>\
                </tr>\
            </table>\
       </div>\
</div>\
  ';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {
        filename: "@",
        current: "@"

        },
      link: function ($scope) {

          $scope.theme = theme.default;
          $scope.speed_stats = $rootScope.speed_stats;

          $rootScope.$watch('speed_stats', function(n){
              $scope.speed_stats = n;
          });


      }
      }

}])
