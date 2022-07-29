airsend_app
.directive('folderSettings', ['$state', 'theme', 'FeemBridge', 'FeemDevice', '$timeout', function($state, theme, FeemBridge, FeemDevice, $timeout){
    var template_ = '\
<div>\
<table style="table-layout: fixed; height: 100%; width: 100%;">\
    <tr>\
        <td class="hidden-xs" style="height: 130px">\
            <div panel-generic-header title="Folder Settings"></div>\
        </td>\
        <td class="visible-xs" style="height: 60px">\
            <div panel-generic-header title="Folder Settings"></div>\
        </td>\
    </tr>\
    <tr style="">\
        <td valign="top" style="overflow: auto; position: relative;" >\
            <div style="position:absolute; left: 0px; right: 0px; bottom: 0px; top: 0px;">\
                <div style="position: relative;">\
                     <div style="padding: 30px; background-color: white; ">\
                        <p>On Modern Windows apps like Feem, you need to explicitly grant us access to folders on your device.</p>\
                        <p>Click on the <strong>Add Folder</strong> button below to grant us access to more folders.</p>\
                        <div class="list-group">\
                            <button type="button" class="list-group-item active" ng-click="add_accepted_folder();">Add Folder</button>\
                            <button ng-repeat="folder in device.folders" type="button" class="list-group-item" >\
                                <h4 class="list-group-item-heading">{{folder.name}}</h4>\
                                <p class="list-group-item-text">{{folder.path}}</p>\
                            </button>\
                        </div>\
                     </div>\
                </div>\
            </div>\
        </td>\
    </tr>\
</table>\
</div>';

    return {
        restrict: 'A',
        replace: true,
        template: template_,
        scope: {},
        link: function($scope){
            $scope.theme = theme.default;
            $scope.add_accepted_folder = function () {
                FeemBridge.request("/add_accepted_folder", {}, function (reply) {

                });
            }
             $scope.device = FeemDevice.get();

             $scope.$on('device_updated_2', function (event, data) {
                 $timeout(function () {
                     $scope.device = data;
                 }, 50);
            });

        }
        }

}])
