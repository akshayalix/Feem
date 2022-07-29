airsend_app
.filter('fixlastmessage', function() {
  return function(input) {
    input = input || '';
    var out = input;
    if(input.indexOf('_received_') == 0){
        out = "100% - " + input.substr('_received_'.length);
    }
    else if(input.indexOf('_download_complete_') == 0){
        out = "100% - " + input.substr('_download_complete_'.length);
    }


    return out;
  };
})

.directive('peerItem', ['FeemPeers', '$interval', '$filter', 'theme', '$state', '$rootScope', 'FeemBridge', function(FeemPeers, $interval, $filter, theme, $state, $rootScope, FeemBridge){

    var template_ = '\
    <div style="height:100px; width: 100%; border-bottom: 1px solid #e6e6e6; cursor: pointer; {{ppeer.selected?\'border-right: 5px solid #ccc; background-color: #ddd;\':\'\'}}" ng-click="peer_clicked();">\
       <table highlighter="ppeer.ip" style="position: relative; height: 80px; width: 95%; table-layout-fixed; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); ">\
            <tr>\
                <td style="width: 100px; position: relative;">\
                    <peer-thumbnail size="70" src="{{ppeer.avatar | trusted}}" text="{{ppeer.alias}}" sysinfo="{{ppeer.sys_info}}" ip="{{ppeer.ip}}"></peer-thumbnail>\
                    </td>\
                <td>\
                    <table style="width:100%; table-layout:fixed; position: relative;">\
                        <tr>\
                            <td  style="color: #707070;"><h4 style="margin: 0px; padding-bottom: 3px; margin-bottom: 5px;overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100%;"> {{ppeer.alias}}</h4></td>\
                            <td style="width: 40px;color: #707070; text-align:right;"><span ng-if="ppeer.unread>0" class="badge">{{ ppeer.unread }}</span> </td>\
                        </tr>\
                        <tr>\
                            <td colspan="2"  style="font-size: 14px; width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; " highlighter="ppeer.last_message">\
                               {{   (ppeer.last_message|fixlastmessage| translate) || ppeer.ip}}\
                            </td>\
                        </tr>\
                        <tr>\
                            <td colspan="2" style="font-size: 12px; width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; text-align:left;">\
                                <span ng-if="ppeer.date_last_message > 0" style="color: #999; " am-time-ago="ppeer.date_last_message"> </span><span ng-if="ppeer.date_last_message > 0"> - </span> <span  style="{{ppeer.ip == \'\'? \'color:#909090;\': (\'color:\'+ theme.accent_color)}}">{{ppeer.ip == \'\'?("LANG_DISCONNECTED" | translate): ("LANG_CONNECTED" | translate)  }}</span>\
                            </td>\
                        </tr>\
                        <tr ng-if="ppeer.ip == \'\'">\
                            <td colspan="2" style="font-size: 12px; width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; text-align:left;">\
                                <span class="text-danger" translate>LANG_CONNECT_TO_THE_SAME_WIFI</span>\
                            </td>\
                        </tr>\
                    </table>\
                </td>\
            </tr>\
        </table>\
    </div>';

    var link_ = function($scope, element, attrs) {

    }


    return {
        restrict: 'EA',
        replace: true,
        scope: {
           ppeer: "="
        },
        link: function ($scope) {

            $scope.theme = theme.default;

            $scope.peer_clicked = function(){
                $rootScope.chat_peer = $scope.ppeer;
                $rootScope.$broadcast('chat_peer_changed');

                $state.go('/chat', {"id": $scope.ppeer.id});

                $scope.ppeer.unread = 0;

                FeemBridge.request("/clear_unread", {id: $scope.ppeer.id}, function(response){

                });

            }

            $scope.$on('chat_peer_changed', function(){

                if($rootScope.chat_peer.id == $scope.ppeer.id){
                    $scope.ppeer.selected = true;
                }
                else{
                    $scope.ppeer.selected = false;
                }
            });






        },
        template: template_
    }

}])
