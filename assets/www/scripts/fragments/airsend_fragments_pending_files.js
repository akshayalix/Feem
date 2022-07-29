airsend_app

.directive('pendingFilesAndPeers', ['$rootScope', 'FeemBridge', 'toaster', function($rootScope, FeemBridge, toaster){

var _pending_files = '<div style="position:relative; width: 100%; height: 100%;">\
                                  <table border="0px" cellspacing="0px" width="100%" height="100%" >\
                                      <tr><td height="30px" style="padding: 5px; background-color: #333333; color: white;"><span>{{"_files" | translate}} : ({{pending_files.length}})</span></td></tr>\
                                      <tr>\
                                          <td style="position:relative;   border: 1px solid #eee;">\
                                              <div style="position:absolute; padding: 10px;top: 0px; left: 0px; right: 0px; height:100%;overflow:auto;">\
                                                  <div ng-repeat="pending_file in pending_files" style="position:relative; border: 1px solid #cdcdcd; border-radius: 5px; width: 100%; margin-top: 5px; ">\
                                                        <table style="width:100%">\
                                                          <tr>\
                                                          <td  width="50px" style="border-right: 1px solid #cdcdcd; text-align: center;"><img width="40px" src="images/icons/upload.png"></img></td>\
                                                          <td  colspan=1  style="font-size: 16px; font-weight: normal; word-break:break-all;word-wrap: break-word; " class="secondary-text-color"> <div>{{pending_file.path | basename}} </div>  </td>\
                                                           </tr>\
                                                        </table>\
                                                   </div>\
                                              </div>\
                                          </td>\
                                      </tr>\
                                  </table>\
                              </div>';

var _pending_peers = '<div style="position:relative; width: 100%; height: 100%;">\
                                  <table border="0px" cellspacing="0px" width="100%" height="100%" >\
                                      <tr><td height="30px" style="padding: 5px; background-color: #333333; color: white;"><span> {{"_receivers" | translate}}: ({{selected_peers.length}})</span></td></tr>\
                                      <tr><td style="position:relative;">\
                                      <div style="position:absolute;top: 0px; left: 0px; right: 0px; height:100%;overflow:auto;">\
                                                  <table devices-empty ng-if="all_peer_ids.length == 0"> </table>\
                                                  <table devices ng-if="all_peer_ids.length > 0"> </table>\
                                      </div>\
                                      </td></tr>\
                                      <tr><td height="50px;" style="background-color: #333;">\
                                                     <table style="width:100%; height: 100%;">\
                                                       <tr><td ng-click="cancel();" style="background-color: red; color:white;width:50%;"><center>{{"_cancel" | translate}}</center></td><td ng-click="send();"  style="background-color: {{selected_peers.length==0?\'#aeaeae\': \'#2196F3\'}};color: white;width: 50%;"><center>{{"_send" | translate}}</center></td></tr>\
                                                  </table>\
                                      </td></tr>\
                                  </table>\
                              </div>';
    var template_old = '\
<div style="position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: #f5f5f5">\
    <div style="position: absolute; left: 0px; width: 50%; top:0px; bottom: 0px;">' + _pending_files + '</div>\
    <div style="border-left: 1px solid #000;-webkit-box-shadow: -5px 0px 5px -3px #616161;box-shadow: -5px 0px 5px -3px #616161;position: absolute; right: 0px; width: 50%; top:0px; bottom: 0px;">'+ _pending_peers +'</div>\
</div>\
    ';

     var template_ = '\
    <div style="position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: #f5f5f5">\
        <div style="position: absolute; left: 0px; right: 0px; top:0px; bottom: 50%;">' + _pending_files + '</div>\
        <div style="border-top: 1px solid #000;-webkit-box-shadow: -5px 0px 5px -3px #616161;box-shadow: -5px 0px 5px -3px #616161;position: absolute; left: 0px; right: 0px; top: 50%; bottom: 0px;">'+ _pending_peers +'</div>\
    </div>\
        ';
    return {
        restrict: 'A',
        replace: true,
        scope: false,
        link: function(scope, element, attrs) {


        },
        template: template_
    }
}])


.directive('pendingFilesToSend', ['$rootScope','FeemPeers', 'FeemBridge', 'toaster', '$translate', function($rootScope, FeemPeers, FeemBridge, toaster, $translate){
  var template_ = '\
     <div style="position:absolute;left:0px; right:0px; top: 0px; bottom: 0px;">\
        <table width="100%" height="100%" pending-files-and-peers>\
        </table>\
    </div>\
  ';

    var link_ = function($scope, element, attrs){

        $scope.pending_files = [];
        $scope.selected_peers = [];



        //FeemPeers.update_peers($scope);


        $scope.$on('new_chat', function(event, chat){
            //FeemPeers.update_peers($scope);


         });

        $scope.$on('peers_updated', function(event, data){
            //console.log("peers_updated");
           // FeemPeers.update_peers($scope);

         });


        $scope.update_files = function(){
            FeemBridge.request("/get_pending_files", {}, function(data){
                   if(data.files && data.files.length > 0){
                       $scope.pending_files= data.files;
                       $rootScope.page = 'pending_files';
                   }
            });
        }

        $scope.update_files();

        $scope.$on('pending_files_updated', function(event, data){

$scope.update_selections();
            //FeemPeers.update_peers($scope);
            $scope.update_files();




         });

        $scope.cancel = function(){
            $scope.pending_files = [];
            $scope.selected_peers = [];


            FeemBridge.request("/clear_pending_files", {}, function(reply){

            });
            $rootScope.page = '';
        }


            $scope.send = function(){
                if($scope.selected_peers.length == 0){
                    toaster.pop({
                                    type: "error",
                                    title: $translate.instant('_oops'),
                                    body: $translate.instant('_select_a_receiver'),
                                    timeout: 3000
                                });
                    return;
                }
                var peers = {
                    "selected_peers": $scope.selected_peers
                }

                FeemBridge.request("/upload_pending_files", peers, function(reply){

                });

                $rootScope.page = '';
                $rootScope.$broadcast('peer_clicked', $scope.selected_peers[0]);
                $scope.selected_peers = [];


            }


        $scope.update_selections = function(){
            angular.forEach($scope.data_peers , function(peer){

                var index = $scope.selected_peers.indexOf(peer.id) ;

                if(index == -1){
                    peer.selected = false;
                }else{

                    peer.selected = true;
                }

            });

        }

                   $scope.$on('peer_clicked', function(event, peer_id){
                       if($rootScope.page != 'pending_files'){
                           return;
                       }


                       var index = $scope.selected_peers.indexOf(peer_id) ;

                       if(index == -1){
                           $scope.selected_peers.push(peer_id);
                       }else{

                           $scope.selected_peers.splice(index, 1);
                       }


                       $scope.update_selections();

                   });


   };

  return {
      restrict: 'A',
      replace: true,
       scope: {},
     link: function($scope, element, attrs) {

         $translate.onReady().then(function(){
             link_($scope, element, attrs);
         });

     },
      template: template_
  }
}])

