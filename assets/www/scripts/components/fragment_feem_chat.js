airsend_app
.directive('feemChat', ['FeemDevice', '$state', '$stateParams', 'FeemPeers', '$rootScope', '$compile', 'FeemBridge', 'theme', '$timeout', function(FeemDevice, $state, $stateParams, FeemPeers, $rootScope, $compile, FeemBridge, theme, $timeout){

    var template_ = '<div style="position: relative; top: 0px; bottom:0px; left: 0px; right: 0px;">\
<table style="table-layout: fixed; position:relative; height:100%; width: 100%;  ">\
    <tr class="hidden-xs">\
        <td style="height: 130px">\
           <div style="color: white; background-color: {{theme.primary_color}}; height: 130px; width: 100%;">\
               <table style="position: relative; height: 80px; width: 95%; table-layout: fixed; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); ">\
                    <tr>\
                        <td ng-click="goHome();" class="visible-xs" style="width: 100px; text-align: center; cursor:pointer;" ><img style="width:90px;" src="images/icons/arrowback.png"></td>\
                        <td style="width: 100px;" id="peerthumbnail"><peer-thumbnail size="70" src="{{ppeer.avatar | trusted}}" text="{{ppeer.alias}}" sysinfo="{{ppeer.sys_info}}" ip="{{ppeer.ip}}"></peer-thumbnail></td>\
                         <td ng-if="ppeer.ip!=\'\'"><h3>{{ppeer.alias}}</h3></td>\
                         <td ng-if="ppeer.ip==\'\'"><h3>{{ppeer.alias}} <small style="color:yellow;" translate>LANG_DISCONNECTED</small></h3></td>\
                    </tr>\
                </table>\
            </div>\
        </td>\
    </tr>\
    <tr class="visible-xs">\
            <td style="height: 60px">\
               <div style="color: white; background-color: {{theme.primary_color}}; height: 60px; width: 100%;">\
                   <table style="position: relative; height: 45px; width: 100%; table-layout: fixed; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); ">\
                        <tr>\
                            <td ng-click="goHome();" class="visible-xs" style="width: 45px; text-align: center; cursor:pointer;" ><img style="width:40px;" src="images/icons/arrowleftc.png"></td>\
                            <td style="width: 50px;" id="peerthumbnail"><peer-thumbnail size="50" src="{{ppeer.avatar | trusted}}" text="{{ppeer.alias}}" sysinfo="{{ppeer.sys_info}}" ip="{{ppeer.ip}}"></peer-thumbnail></td>\
                             <td ng-if="ppeer.ip==\'\'"><div style="padding-left: 20px; padding-right: 15px;"><div style="font-size: 20px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">{{ppeer.alias}}</div><div style="color:yellow; font-size: 12px;" translate>LANG_DISCONNECTED</div></div></td>\
                             <td ng-if="ppeer.ip!=\'\'"><div style="padding-left: 20px; padding-right: 15px;"><div style="font-size: 20px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">{{ppeer.alias}}</div></div></td>\
                        </tr>\
                    </table>\
                </div>\
            </td>\
        </tr>\
    <tr style="position:relative;">\
        <td id="chats" valign="top" style="overflow-y: auto; overflow-x: hidden; position: relative;" >\
            <div style="position:absolute; left: 0px; right: 0px; bottom: 0px; top: 0px;">\
                <div chat-list></div>\
            </div>\
        </td>\
    </tr>\
    <tr ng-if="ppeer.ip==\'\'">\
        <td style="height: 90px; background-color: #f0f0f0;  padding: 5px; position: relative;">\
            <div class="alert alert-danger" role="alert" style="position: absolute;left: 5px;right: 5px;top: 50%;transform: translateY(-50%);-webkit-transform: translateY(-50%);padding: 10px;">\
                <strong translate>LANG_DISCONNECTED</strong> <strong>&#x1f622;</strong> <br> <span translate>LANG_CONNECT_BOTH_DEVICES_TO_THE_SAME_WIFI_NETWORK</span>\
        </div>\
        </td>\
    </tr>\
    <tr>\
        <td style="height: 60px; background-color: #f0f0f0;  padding-left: 5px; padding-right: 5px;">\
                        <table style="height: 100%; width: 100%;">\
                            <tr>\
                                <td><textarea placeholder="{{\'LANG_CHAT\' | translate}}" ng-model="current_chat_message"  ng-enter="send_chat_message();"  style="padding: 5px; width: 100%;height: 100%;resize: none;font-size: 16px;border: 1px solid #cdcdcd; border-color: rgba(0,0,0,.15);background-color: white;" spellcheck="true" type="text"></textarea></td>\
                                <td width="75px" ng-if="current_chat_message.length > 0">\
                                <center >\
                                    <div ng-click="send_chat_message();" class="button accent-color" style="z-index:5;">\
                                    <img src="images/icons/arrowrighta2.png" width="50px">\
                                    </div>\
                                </center>\
                                </td>\
</tr>\
                        </table>\
        </td>\
    </tr>\
    <tr>\
        <td style="height: 60px; background-color: {{theme.dark_primary_color}};  padding-left: 5px; padding-right: 5px; position: relative;">\
            <table style="height: 50px; width: 95%;color: #f2f2f2; position: absolute;top: 50%;transform: translateY(-50%);-webkit-transform: translateY(-50%);">\
                <tr>\
                    <td ng-click="toggle_menu();" style="cursor: pointer; text-align: center; width: 60px;">\
                      <img src="images/icons/menu.png" style="height: 40px;">\
                    </td>\
                    <td ng-click="show_file_picker(\'file\')" style="cursor: pointer; text-align: center;"><img src="images/icons/send_file.png" style="height: 20px;"> <span translate>LANG_SEND_FILE<span></td>\
                </tr>\
            </table>\
                <div ng-if="show_menu" style="z-index: 30; padding: 20px; position: absolute; bottom: 60px; left: 0px; right: 0px;  color: #f2f2f2; background-color: {{theme.dark_primary_color}};">\
<div class="list-group " style="cursor:pointer;">\
  <a href class="list-group-item active">\
    MENU\
  </a>\
  <a ng-if="device.os==\'mac\' || device.os==\'linux\' || device.os==\'windows\'" ng-click="show_file_picker(\'folder\')" href class="list-group-item" translate>LANG_SEND_FOLDER</a>\
  <a ng-click="erase_chats()" class="list-group-item" translate>LANG_ERASE_CHAT</a>\
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

            var unshow_menu = 0;
            $scope.toggle_menu = function(){
                $scope.show_menu = !$scope.show_menu;
                $timeout.cancel(unshow_menu);

                unshow_menu = $timeout(function(){
                    $scope.show_menu = false;
                }, 5000);
            }

            $scope.current_chat_message = "";

            $scope.show_file_picker = function(ttype){
                 $scope.show_menu = false;
                $timeout(function(){
                           FeemBridge.show_file_picker({ to: $rootScope.chat_peer.id , type: ttype});
                }, 0);

            }




            $scope.erase_chats = function(){

                 $scope.show_menu = false;

                $timeout(function(){
                    if(confirm("Do you want to erase this chat?")){
                        FeemBridge.request('/erase_chats_for_peer', {peer: $rootScope.chat_peer.id}, function(){
                                $rootScope.$broadcast('chat_peer_changed');
                        });
                    };
                }, 0);


            }




            $scope.goHome = function(){
                 $state.go("/peers");
            }

          var update_peer = function(){
              $scope.ppeer = $rootScope.chat_peer;

              if( !( $scope.ppeer &&  ($scope.ppeer.id == $stateParams.id))){

                      $scope.$evalAsync(function(){

                          $scope.ppeer = FeemPeers.peerid_to_peer($stateParams.id);
                          console.log("ppeer = " + $scope.ppeer);
                          $rootScope.chat_peer = $scope.ppeer;
                          $rootScope.$broadcast('chat_peer_changed');

                      });

              }
          }




            $scope.$on('peers_updated_2', function(event, data){
                    $scope.$evalAsync(function(){
                        $scope.ppeer = FeemPeers.peerid_to_peer($stateParams.id);
                        $rootScope.chat_peer = $scope.ppeer;

                        if( !( $scope.ppeer &&  ($scope.ppeer.id == $stateParams.id))){
                            $rootScope.$broadcast('chat_peer_changed');
                        }

                    });


             });



//            $scope.$watch("ppeer", function(p){
//                if(!p){
//                    return;
//                }


//                    var html = '<peer-thumbnail size="70" src="{{ppeer.avatar | trusted}}" text="{{ppeer.alias}}" sysinfo="{{ppeer.sys_info}}" ip="{{ppeer.ip}}"></peer-thumbnail>';
//                    var newAvatar = $compile(html)($scope);


//                    var avatarDiv = angular.element(document.getElementById('peerthumbnail'));
//                    avatarDiv.children().replaceWith(newAvatar);




//            });

            $scope.send_chat_message = function(){

            function generateUUID() {
            var d = new Date().getTime();
            var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
                                                                      var r = (d + Math.random()*16)%16 | 0;
                                                                      d = Math.floor(d/16);
                                                                      return (c=='x' ? r : (r&0x3|0x8)).toString(16);
                                                                      });
            return uuid;
            };

            var msg = $scope.current_chat_message;

            //var _createdon = Date.now();
            var chatId = generateUUID();

            var _peer = $scope.ppeer;

            var chat = {
            id: chatId,
            sender: FeemDevice.get().id,
            receiver: _peer.id,
            type: "text",
            text: msg,
            data: msg,
            peer: _peer
            }


            $scope.current_chat_message="";


            FeemBridge.request("/create_chat", chat, function(response){


                               });





//            if($window.scroll_down_timer){
//            $timeout.cancel($window.scroll_down_timer);
//            }

//            $window.scroll_down_timer = $timeout(function(){

//                                                 var scroller = jQuery('#chats');
//                                                 if($rootScope.device.os == "android"){
//                                                    //scroller = scroller.overflowAndroid();
//                                                 }


//                                                    scroller.animate({scrollTop:scroller[0].scrollHeight}, 1000);
//             },500);
             }



            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = angular.extend($scope.device, data);

            });

            $timeout(function(){
                        update_peer();
                        $scope.device = FeemDevice.get();
            }, 0);





        },
        template: template_
    }

}])
