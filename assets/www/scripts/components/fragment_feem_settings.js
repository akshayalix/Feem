airsend_app
.directive('feemSettings', ['FeemDevice', '$state', '$rootScope', 'theme',  function(FeemDevice, $state, $rootScope, theme){

    var template_ = '<div>\
<table style="table-layout: fixed; height: 100%; width: 100%;">\
    <tr>\
        <td class="hidden-xs" style="height: 130px">\
            <div panel-generic-header title="LANG_SETTINGS"></div>\
        </td>\
        <td class="visible-xs" style="height: 60px">\
            <div panel-generic-header title="LANG_SETTINGS"></div>\
        </td>\
    </tr>\
    <tr style="">\
        <td valign="top" style="position: relative;" >\
            <div style="position:absolute; left: 0px; right: 0px; bottom: 0px; top: 60px; overflow: auto;">\
                <div style="position: relative; width: 100%;">\
                  <div device-settings></div>\
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
            };

            $scope.$on("settings_switch_panel", function(event, panel){
                $scope.panel = panel;
            });


        },
        template: template_
    }

}])
