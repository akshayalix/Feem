airsend_app
.directive('feemHelp', ['FeemDevice', function(FeemDevice){

    var template_ = '<div>\
<table style="table-layout: fixed; height: 100%; width: 100%;">\
    <tr>\
        <td style="height: 130px">\
            <div panel-generic-header title="Feem Help"></div>\
        </td>\
    </tr>\
    <tr style="">\
        <td valign="top" style="overflow: auto; position: relative;" >\
            <div style="position:absolute; left: 0px; right: 0px; bottom: 0px; top: 0px;">\
                <iframe style="width: 100%; height: 100%;" src="http://feem.io/in_app_faq.html"></iframe>\
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

            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = angular.extend($scope.device, data);

            });


        },
        template: template_
    }

}])
