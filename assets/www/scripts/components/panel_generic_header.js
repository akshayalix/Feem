airsend_app
.directive('panelGenericHeader', ['$state', 'theme', function($state, theme){
  var template_ = '\
       <div style="color: white; background-color: {{theme.primary_color}};  width: 100%; height: 100%;">\
       <table style="position: relative; width: 95%; table-layout-fixed; height:100%; ">\
            <tr class="hidden-xs">\
                <td ng-click="goHome();" class="visible-xs" style="width: 100px; text-align: center; cursor:pointer;" ><img style="width:90px;" src="images/icons/arrowback.png"></td>\
                <td style="padding: 10px; text-align: center;"><h3 translate>{{title}}</h3></td>\
            </tr>\
            <tr class="visible-xs" style="">\
                <td ng-click="goHome();" style="height: 60px; width: 40px; text-align: center; cursor:pointer;" ><img style="width:40px;" src="images/icons/arrowleftc.png"></td>\
                <td style="font-size: 20px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;" translate>{{title}}</td>\
               </tr>\
        </table>\
</div>\
  ';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {
        title: "@"

        },
      link: function ($scope) {

          $scope.theme = theme.default;


            $scope.goHome = function(){
                 $state.go("/peers");
            }

      }
      }

}])
