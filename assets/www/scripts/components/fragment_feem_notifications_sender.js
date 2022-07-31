airsend_app

    .directive('notificationReceiverPeerItem', ['FeemPeers', '$interval', '$filter', 'theme', function(FeemPeers, $interval, $filter, theme) {

    var template_ = '\
    <div style="height:100px; width: 100%; border-bottom: 1px solid #e6e6e6; cursor: pointer; background-color: {{selected==\'true\'?\'#d4d4d4\':\'white\'}};">\
       <table style="position: relative; height: 80px; width: 95%; table-layout-fixed; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); ">\
            <tr>\
                <td style="width: 100px; position: relative;">\
                    <peer-thumbnail size="70" src="{{ppeer.avatar | trusted}}" text="{{ppeer.alias}}" sysinfo="{{ppeer.sys_info}}" ip="{{ppeer.ip}}"></peer-thumbnail>\
                    </td>\
                <td>\
                    <table style="width:100%; table-layout:fixed; position: relative;">\
                        <tr>\
                            <td  style="color: #707070;"><h4 style="margin: 0px; padding-bottom: 3px; margin-bottom: 5px;overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%;"> {{ppeer.alias}}</h4></td>\
                        </tr>\
                        <tr>\
                            <td style="font-size: 12px; width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; ">\
                               {{ppeer.sys_info}}\
                            </td>\
                        </tr>\
                        <tr>\
                            <td style="font-size: 12px; width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; text-align:left;">\
                                <span style="{{ppeer.ip == \'\'? \'color:#909090;\': (\'color:\'+ theme.accent_color)}}">{{ppeer.ip == \'\'?("_disconnected" | translate): ("_connected" | translate)  }}</span>\
                            </td>\
                        </tr>\
                        <tr ng-if="ppeer.ip == \'\'">\
                            <td style="font-size: 12px; width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; text-align:left;">\
                                <span class="text-danger">Connect to the same Wi-Fi</span>\
                            </td>\
                        </tr>\
                    </table>\
                </td>\
            </tr>\
        </table>\
    </div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: {
            ppeer: "=",
            selected: '@'
        },
        link: function($scope) {

            $scope.theme = theme.default;

            //alert($scope.selected);

        },
        template: template_
    }

}])

.directive('notificationsSender', ['FeemDevice', '$state', '$rootScope', 'FeemBridge', 'theme', 'FeemPeers', '$timeout', function(FeemDevice, $state, $rootScope, FeemBridge, theme, FeemPeers, $timeout) {

    var template_ = '<div>\
<table style="table-layout: fixed; height: 100%; width: 100%;">\
    <tr>\
        <td class="hidden-xs" style="height: 130px">\
            <div panel-generic-header title="Notifications To PC"></div>\
        </td>\
        <td class="visible-xs" style="height: 60px">\
            <div panel-generic-header title="Notifications To PC"></div>\
        </td>\
    </tr>\
    <tr style="background-color: {{theme.dark_primary_color}}; color: white; height: 60px;">\
        <td>\
           <table style="width: 100%;table-layout: fixed; ">\
               <tr>\
                    <td ng-click="switch_to_panel(\'devices\');" style="text-align:center; text-decoration: {{panel==\'devices\'?\'underline\': \'none\'}}">\
                        Devices: ({{selected_peers.length}})\
                    </td>\
                    <td ng-click="switch_to_panel(\'apps\');" style="text-align:center; text-decoration: {{panel==\'apps\'?\'underline\': \'none\'}}">\
                        Apps\
                    </td>\
                </tr>\
           </table>\
        </td>\
    </tr>\
    <tr ng-if="!device.accessibility_is_on" style="">\
        <td valign="top" style="overflow: auto; position: relative;" >\
        <div class="alert alert-danger alert-dismissible" role="alert">\
          <strong>Error!</strong> You need to turn on Feem Accessibility to send notifications from your phone to your PC .\
        </div>\
        <div style="text-align:center;">\
            <a  ng-click="turn_on_accessibility();" type="button" href>Turn On Feem Accessibility</a>\
        </div>\
       </td>\
   </tr>\
   <tr ng-if="device.accessibility_is_on && panel==\'devices\'" style="">\
        <td valign="top" style="overflow: auto; position: relative;" >\
            <table style="position:relative;" cellspacing="0px" width="100%"  >\
              <tr ng-repeat = "idpeer in peers.all_peer_ids"  notification-receiver-peer-item   ppeer="peers.data_peers[idpeer]" selected = "{{peers.data_peers[idpeer].send_notifications==1}}" ng-click="peer_clicked(idpeer);" > \
              </tr>\
            </table>\
       </td>\
   </tr>\
    <tr ng-if="device.accessibility_is_on && panel==\'apps\'" style="">\
        <td valign="top" style="overflow: auto; position: relative;" >\
            APPS\
       </td>\
   </tr>\
</table>\
</div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function($scope) {

            $scope.theme = theme.default;

            $scope.selected_peers = [];

            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function(event, data) {
                $scope.device = angular.extend($scope.device, data);

            });

            $scope.turn_on_accessibility = function() {
                FeemBridge.request("/turn_on_accessibility", {}, function(reply) {
                    if (reply.status == "success") {

                    }
                });

            }

            $scope.panel = "devices";

            $scope.switch_to_panel = function(panel) {
                $scope.panel = panel;
            }

            $scope.$on('peers_updated_2', function(event, data) {
                $timeout(function() {
                    $scope.peers = FeemPeers.get();
                    $scope.update_selections_from_db();
                }, 0);

            });

            // $scope.is_selected = function(peerid) {
            //     return ($scope.selected_peers.indexOf(peerid) >= 0);
            // }

            // $scope.update_selections = function() {


            //     angular.forEach($scope.peers.data_peers, function(peer) {

            //         var index = $scope.selected_peers.indexOf(peer.id);

            //         if (index == -1) {
            //             peer.selected = false;
            //         } else {

            //             peer.selected = true;
            //         }

            //     });

            // }

            $scope.update_selections_from_db = function() {

                $scope.selected_peers = [];

                angular.forEach($scope.peers.data_peers, function(peer) {

                    if (peer.send_notifications == 1) {
                        $scope.selected_peers.push(peer.id);
                    } else {

                    }

                });

                //$scope.update_selections();

            }

            $scope.peer_clicked = function(peer_id) {
                var index = $scope.selected_peers.indexOf(peer_id);

                if (index == -1) {
                    $scope.selected_peers.push(peer_id);
                    FeemBridge.request("/change_send_notifications", {id:peer_id, send_notifications: 1}, function(reply) {
                        if (reply.status == "success") {
                               
                        }
                    });
                } else {
                    $scope.selected_peers.splice(index, 1);
                     FeemBridge.request("/change_send_notifications", {id:peer_id, send_notifications: 0}, function(reply) {
                        if (reply.status == "success") {
                                

                        }
                    });
                }


               // $scope.update_selections();


            };

            $scope.peers = FeemPeers.get();
            $scope.update_selections_from_db();






        },
        template: template_
    }

}])