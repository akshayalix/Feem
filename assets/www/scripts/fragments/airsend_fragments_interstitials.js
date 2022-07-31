airsend_app
.directive('interstitials', ['FeemBridge', '$http', 'airsend_config', 'FeemDevice', '$rootScope', '$interval', '$window', function(FeemBridge,$http, airsend_config, FeemDevice, $rootScope, $interval, $window){
  var template_ = '\
       <div ng-click = "dismiss();" style="position:absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; z-index: 10;" class="">\
       <div style="position:absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: rgb(0,0,0); opacity: 0.8; z-index: 10;" class=""></div>\
<div ng-click="go_to_ad();"  style=" position:absolute; left: 5%; right: 5%; top: 5%; bottom: 5%; background-image: url(\'{{interstitial.img}}\'); background-repeat: no-repeat;background-size: contain; margin: 0 auto;  z-index: 10; padding: 20px;background-position: center; " class=""></div>\
<div ng-click="dismiss();" style="cursor: pointer; z-index: 15; border: 0px solid #eee; color: #f5f5f5; text-decoration:none; font-size: 10px; position: absolute; right: 10px; top: 10px;"><p style="white-space: nowrap;"> Close Ad <img style="vertical-align:middle;" src="images/icons/ad_close.png"/> </p></div>\
</div>\
  ';


  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {},
      link: function ($scope) {




          $scope.interstitial = $rootScope.interstitial;

          $scope.dismiss = function(){
              $rootScope.show_ad = false;
          }


          $scope.go_to_ad = function(){
             if(($rootScope.device.os == "ios") && ($scope.interstitial.link == $rootScope.default_interstitial.link)){
                $rootScope.page = 'store';
                 return;
             }

             window.location.href = $scope.interstitial.link;

          }



        $scope.go_to_remove_ads = function(){
            $rootScope.show_ad = false;
            $rootScope.page = 'settings';
        }










      }
      }

}])
