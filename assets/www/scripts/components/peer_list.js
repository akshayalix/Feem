airsend_app
.directive('peerList', ['FeemPeers', '$timeout', function(FeemPeers, $timeout){

    var template_ = '\
    <div>\
        <table style=" position:relative; width: 100%; " cellspacing="0px"  >\
          <tr ng-if="peers.all_peer_ids.length > 0" ng-repeat = "idpeer in peers.all_peer_ids" > \
            <td><div peer-item ppeer="peers.data_peers[idpeer]"></div></td>\
          </tr>\
          <tr>\
                <td ng-if="peers.all_peer_ids.length == 0"><div peer-list-empty></div></td>\
          </tr>\
        </table>\
    </div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function ($scope) {


            $scope.$on('new_chat', function(event, chat){
                FeemPeers.update2();

            });


            $scope.$on('peers_updated_2', function(event, data){
                $timeout(function(){
                    $scope.peers = FeemPeers.get();
                },0);

             });

             $scope.peers = FeemPeers.get();









        },
        template: template_
    }

}])
