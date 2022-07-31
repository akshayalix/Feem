airsend_app
.directive('banner', ['FeemBridge', '$http', 'airsend_config', 'FeemDevice', '$rootScope', '$interval', function(FeemBridge,$http, airsend_config, FeemDevice, $rootScope, $interval){
  var template_ = '\
       <div ng-show="!device.has_pro_feature" style="background-color: black;z-index: 10;" class="">\
<a href ng-click="go_to_remove_ads();" style="z-index: 15; border: 1px solid #eee; color: #f5f5f5; text-decoration:none; font-size: 10px; position: absolute; right: 5px; top: 2px;">Remove Ads with Feem Pro</a>\
            <a  href="{{banner.link}}" style="text-decoration: none; font-size: 12px; color: white;"><div style="height: 75px;    position: absolute; width: 100%;top: 50%; transform: translateY(-50%); transform: -webkit-translateY(-50%);">\
            <div style="float:left;margin: 3px; width: 73px; height: 73px; background-image: url(\'{{banner.img}}\'); background-size: contain; background-repeat: no-repeat;background-position: center; "></div>\
            <div style=" padding: 5px;color: white;  position: absolute;left: 80px; top: 50%;transform: translateY(-50%); transform: -webkit-translateY(-50%);"><u>{{banner.price}}</u> <strong>{{banner.title}}</strong></div>\
            </div></a>\
</div>\
  ';

   // var template_ = '<div></div>';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {},
      link: function ($scope) {
         $scope.banner = {};
        $scope.banner.title = "Unlock Feem Pro. Remove ads. Help support Feem.";
        $scope.banner.price = "$10/year";
        $scope.banner.link = "http://www.feem.io";
        $scope.banner.img = "images/probadge.png";
        $scope.go_to_remove_ads = function(){
            $rootScope.page = 'settings';
        }

         $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = angular.extend($scope.device, data);

            });



        $scope.refresh_banner = function(){
            $http.post(airsend_config.api_endpoint+"/banners", {}, {headers: {'Content-Type': 'text/plain'}})
            .success(function(data, status) {
                      $scope.banner = data;
                    })
             .error(function(data, status) {
             });
        }


        $scope.refresh_banner();

        $interval(function(){
           $scope.refresh_banner();
        }, 60*60*1000);





      }
      }

}])
