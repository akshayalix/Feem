airsend_app
.directive('panelTransferStatus', ['$filter', '$interval', '$rootScope', 'theme', function($filter, $interval, $rootScope, theme){
  var template_ = '\
       <div style="color: white;background-color: {{theme.dark_primary_color}}; height: 100%; width: 100%; position: relative; padding-left: 00px;">\
<table style=" width: 100%; table-layout:fixed;">\
    <tr>\
        <td style=" text-align:right;">\
                <span style="font-weight: bold; font-size: 20px;"><count-up time=3000 steps = 100 decimals=3 ng-model="speed_stats.all_percentage"></count-up>% </span>\
        </td>\
<td style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap; font-size: 12px; text-align:center; ">\
{{speed_stats.last_file | basename}}\
</td>\
        <td style=" text-align:left;">\
                <span style="font-weight: bold; font-size: 20px;">{{speed_stats.speed}} <small>{{speed_stats.speed_unit}}</small></span>\
        </td>\
    </tr>\
</table>\
</div>\
  ';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {


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
