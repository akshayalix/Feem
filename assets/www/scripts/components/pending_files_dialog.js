airsend_app
.directive('pendingFilePeerItem', ['FeemPeers', '$interval', '$filter', 'theme', function(FeemPeers, $interval, $filter, theme){

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
        link: function ($scope) {

            $scope.theme = theme.default;

        },
        template: template_
    }

}])

.directive('pendingFilesDialog', ['FeemPeers', 'FeemBridge', function(FeemPeers, FeemBridge){

    var template_ = '\
    <div>\
<div id="myModal" class="modal fade">\
  <div class="modal-dialog">\
    <div class="modal-content">\
      <div class="modal-header">\
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>\
        <h4 class="modal-title">\
            <table style="cursor: pointer;" ng-click="toggle_multiple_receivers();">\
                <tr>\
                    <td style="position:relative; padding: 0px; margin: 0px; width: 40px; height: 40px; ">\
                        <img style="position: absolute;height:20px; padding: 0px; margin: 0px; top: 50%; left: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%);" ng-src="images/icons/{{send_to_multiple_receivers?\'on\':\'off\'}}.png">\
                    </td>\
                    <td>\
                        Send To Multiple Receivers\
                    </td>\
                    <td ng-if="send_to_multiple_receivers">\
                        <p><span class="badge">{{selected_peers.length}}</span></p>\
                    </td>\
                </tr>\
            </table>\
         </h4>\
      </div>\
      <div class="modal-body">\
        <table style="position:relative;" cellspacing="0px" width="100%"  >\
          <tr  ng-repeat = "idpeer in peers.all_peer_ids"  pending-file-peer-item   ppeer="peers.data_peers[idpeer]" selected = "{{is_selected(idpeer)}}" ng-click="peer_clicked(idpeer);" > \
          </tr>\
        </table>\
      </div>\
      <div class="modal-footer" ng-if="send_to_multiple_receivers">\
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>\
        <button type="button" class="btn btn-primary" ng-click="send();" ng-disabled="selected_peers.length == 0">Send</button>\
      </div>\
    </div><!-- /.modal-content -->\
  </div><!-- /.modal-dialog -->\
</div><!-- /.modal -->\
    </div>';




    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function ($scope) {

            $scope.send_to_multiple_receivers = false;

            $scope.toggle_multiple_receivers = function(){
                $scope.send_to_multiple_receivers = !$scope.send_to_multiple_receivers;
            }

            $scope.selected_peers = [];


           $scope.$on('peers_updated_2', function(event, data){
                $scope.peers = FeemPeers.get();
            });

            $scope.peers = FeemPeers.get();



            $scope.$on('new_chat', function(event, chat){
                //FeemPeers.update_peers($scope);


             });

            var show = function(){
                  $('#myModal').on('show.bs.modal', function () {
                                    $('.modal .modal-body').css('overflow-y', 'auto');
                                    $('.modal .modal-body').css('max-height', $(window).height() * 0.5);
                                });

                                $('#myModal').modal();
            }


            $scope.$on('pending_files_updated', function(event, data){

                show();

             });

            $scope.is_selected = function(peerid){
                return ($scope.selected_peers.indexOf(peerid)  >= 0);
            }

            $scope.update_selections = function(){
                angular.forEach($scope.peers.data_peers , function(peer){

                    var index = $scope.selected_peers.indexOf(peer.id) ;

                    if(index == -1){
                        peer.selected = false;
                    }else{

                        peer.selected = true;
                    }

                });

            }

//            $scope.peer_clicked =  function(peer_id){



//                           var index = $scope.selected_peers.indexOf(peer_id) ;

//                           if(index == -1){
//                               $scope.selected_peers.push(peer_id);
//                           }else{

//                               $scope.selected_peers.splice(index, 1);
//                           }


//                           $scope.update_selections();

//                       };

            $scope.peer_clicked =  function(peer_id){
                    if ($scope.send_to_multiple_receivers){
                        var index = $scope.selected_peers.indexOf(peer_id) ;

                        if(index == -1){
                            $scope.selected_peers.push(peer_id);
                        }else{

                            $scope.selected_peers.splice(index, 1);
                        }


                        $scope.update_selections();

                    }
                    else{
                        $scope.selected_peers = [peer_id];
                        $scope.send();
                    }


                       };

            $scope.send = function(){
                if($scope.selected_peers.length == 0){
//                    toaster.pop({
//                                    type: "error",
//                                    title: $translate.instant('_oops'),
//                                    body: $translate.instant('_select_a_receiver'),
//                                    timeout: 3000
//                                });
//                    return;
                }
                var peers = {
                    "selected_peers": $scope.selected_peers
                }

                FeemBridge.request("/upload_pending_files", peers, function(reply){

                });


                $scope.selected_peers = [];

                $('#myModal').modal('hide');




            }

           console.log("get_pending_files");

            FeemBridge.request("/get_pending_files", {}, function(reply){

                if(reply.status == "success"){
                    if(reply.files.length > 0){
                        show();
                    }
                }

            });



        },
        template: template_
    }

}])
