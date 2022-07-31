airsend_app
.directive('osIcon', function(FeemPeers){

    var template_ = '\
    <div>\
        <div style="position: relative; height:{{size}}px; width: {{size}}px; border-radius: 50%;   border: 2px solid {{border}}; background-color: white;" ><img style="height:{{size/2}}px; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); position: absolute;" ng-src="{{device_logo}}"></div>\
    </div>';

    return {
        restrict: 'EA',
        replace: true,
        scope: {
            size: "@",
            sysinfo: "@",
            border: "@",
            state: "@"
        },
        link: function ($scope) {

            var update_device_logo = function(){
                var device_logo = "";
                var sys_info = $scope.sysinfo.toLowerCase();


                  if(sys_info.indexOf("mac") > -1){
                    device_logo = "images/devices/laptop-mac.png";
                  }
                  if(sys_info.indexOf("imac") > -1){
                  device_logo = "images/devices/desktop-mac.png";
                }

                if(sys_info.indexOf("android") > -1){
                  device_logo = "images/devices/android.png";
                }
                if(sys_info.indexOf("windows") > -1){
                  device_logo = "images/devices/windows.png";
                }
                if(sys_info.indexOf("ipad") > -1){
                  device_logo = "images/devices/tablet-ipad.png";
                }
                if(sys_info.indexOf("iphone") > -1){
                  device_logo = "images/devices/cellphone-iphone.png";
                }
                if(sys_info.indexOf("linux") > -1){
                  device_logo = "images/devices/linux.png"
                }
                if(sys_info.indexOf("ubuntu") > -1){
                  device_logo = "images/devices/linux.png"
                }
                if(sys_info.indexOf("fedora") > -1){
                  device_logo = "images/devices/linux.png"
                }


                $scope.device_logo = device_logo;
            };

            update_device_logo();

            $scope.$watch('sysinfo', function(){
                    update_device_logo();
            });

            $scope.$watch('state', function(){
                    update_device_logo();
            });





        },
        template: template_
    }

})
