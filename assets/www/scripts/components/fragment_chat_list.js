airsend_app
.directive('feedbackForPeer', ['$rootScope', '$timeout', function($rootScope, $timeout) {

                               var template_ = '\
                               <div ng-show="feedback_for_peer.length>0" class="accent" style="position:absolute; top: 0px; left: 0px; height: 40px; right: 0px; color: white;  background-color:#1976D2; z-index:10; text-align: center; vertical-align: middle;line-height: 40px;"> {{feedback_for_peer}} </div>\
                               ';
                               return {
                               restrict: 'A',
                               replace: true,
                               scope: {},
                               template: template_,
                               link: function($scope) {

                               var feedback_stop = false;

                               $scope.$on('feedback_for_peer', function(event, data) {
                                          if ($rootScope.chat_peer.id != data.peer_id) {
                                          return;
                                          }



                                          $scope.$evalAsync(function() {

                                                            $scope.feedback_for_peer = data.feedback;
                                                            });


                                          if (feedback_stop) {
                                          $timeout.cancel(feedback_stop);
                                          }

                                          feedback_stop = $timeout(function() {
                                                                   $scope.feedback_for_peer = "";

                                                                   }, 3000);


                                          });

                               }
                               }
}])
.directive('chatList', ['FeemPeers', '$rootScope', '$compile', 'FeemBridge', 'FeemDevice', 'theme', '$timeout', function(FeemPeers, $rootScope, $compile, FeemBridge, FeemDevice, theme, $timeout){

    var template_ = '<div style="position: relative; height: 100%; max-width: 500px; left: 50%; transform: translateX(-50%); -webkit-transform: translateX(-50%); padding: 10px;">\
                        <div feedback-for-peer></div>\
<div ng-repeat="chat in chats track by chat.id" id="{{chat.id}}" style="padding: 10px; width: 80%;  display:block;clear: both; {{chat.peer.id  == device.id ? \'float:right;\':\' float:left;\' }};">\
        <div style="width: 100%; clear: both; {{chat.peer.id  == device.id ? \'float:right;text-align: right;\':\' float:left;text-align: left;\' }};">\
            <span ng-if="chat.date_created > 0" style="color: #ccc; font-size: 12px; " am-time-ago="chat.date_created"></span>\
            <img  ng-if="chat.sent==1" width="10px" src="images/icons/checkmark_chat.png"></img>\
            <span ng-if="chat.sent==0" style="color: red; font-size: 12px; " translate>LANG_NOT_SENT</span>\
            <div highlighter="chat.error_message" ng-if="chat.error_message" style="color: red; font-size: 12px; ">{{chat.error_message}}</div>\
        </div>\
        <div style="clear: both; {{chat.peer.id  == device.id ? \'float:right;text-align:right;\':\' float:left;text-align: left;\' }};">\
            <div ng-if="chat.type==\'text\'"  chat-item-text ></div>\
            <div ng-if="chat.type!=\'text\' && chat.info.number_of_files < 11"  >\
                  <div ng-repeat="file in chat.files  track by $index" chat-item-single-file></div>\
            </div>\
            <div ng-if="chat.type!=\'text\' && chat.info.number_of_files > 10" chat-item-multiple-files ></div>\
        </div>\
</div>\ <!-- ng-repeat -->\
</div>';


    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function ($scope) {

            $scope.theme = theme.default;


            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = data;

            });


            $scope.temp_mark_chat_as_sent = [];


            $scope.chats = [];

            var update_chats = function(){


                if(!$rootScope.chat_peer){
                    $scope.chats = [];
                    return;
                }



            FeemBridge.request("/get_chats_for_peer", { peer: $rootScope.chat_peer.id, start: 0 }, function (reply) {


                               var chats = [];

                               angular.forEach(reply.chats, function(chat, key) {


                                               var _peer = FeemPeers.peerid_to_peer(chat.sender);


                                               chat.peer = _peer;



                                   if(chat.info){
                                       //file
                                       if(chat.info.size_of_files == 0){
                                           chat.percentage = 0;
                                       }
                                       else{
                                           chat.percentage = 100.0 * chat.info.bytes_transferred / chat.info.size_of_files;

                                       }

                                   }

                                   if(chat.files){
                                       angular.forEach(chat.files, function(file){

                                           file.percentage = 100.0 * file.bytes_transferred / file.filesize ;

                                       });


                                   }




                                               chats.unshift(chat);
                                               });

                                    $scope.$evalAsync(function(){
                                        $scope.chats = chats;
                                        $scope.loading = false;

                                    });
                               });
            };

            update_chats();

            $scope.$on('chat_peer_changed', function(){

                update_chats();

            });






            $scope.$on('new_chat', function(event, data){

                if(!$rootScope.chat_peer){
                    return;
                }

                       if(data.info.sender == $rootScope.chat_peer.id || data.info.receiver == $rootScope.chat_peer.id){
                       var chat = data.info;

                       var notfound = true;
                       angular.forEach($scope.chats, function(cchat){
                                       if(cchat.id == chat.id){
                                       notfound = false;
                                       return;
                                       }
                                       });

                       if(notfound){
                       var _peer = FeemPeers.peerid_to_peer(chat.sender);
                       chat.peer = _peer;


                       $scope.$evalAsync(function(){
                                var index = $scope.temp_mark_chat_as_sent.indexOf(chat.id);


                                                      if(index > -1){

                                                           chat.sent = 1;
                                                           $scope.temp_mark_chat_as_sent.splice(index, 1);
                                }

                                $scope.chats.push(chat);
                                });

                       }


                       }
                       });



            var firstTime = true;
            $scope.$watchCollection('chats', function (newValue, oldValue) {

                                    if ( firstTime || (JSON.stringify(newValue) != JSON.stringify(oldValue)))
                                    {

                                        firstTime = false;


                                    $timeout(function() {


                                             var scroller = jQuery('#chats');

                                        scroller.animate({scrollTop:scroller[0].scrollHeight}, 1000);
                                        console.log("scrolling");

                                             }, 500, false);

                                    }
                                    });






            $scope.$on('$destroy', function(){
                jQuery('#chats').remove();
                console.log("chat directive destroyed");
            });




            $scope.$on("update_bytes_transferred", function (evt, parameters) {



                var chat_id = parameters.chat_id;

                var chat_index = -1;
                var chat_count = -1;
                angular.forEach($scope.chats, function (chat) {
                    chat_count = chat_count + 1;
                    if (chat_id == chat.id) {
                        chat_index = chat_count;
                        return false;
                    }
                });

                if (chat_index == -1) {
                    return;
                }

                $scope.$evalAsync(function () {
                    //TODO
                    $scope.chats[chat_index].info.number_of_files = (+parameters.other_files.number_of_files);
                    $scope.chats[chat_index].info.bytes_transferred = (+parameters.other_files.bytes_transferred) + (+parameters.bytes_transferred);
                    $scope.chats[chat_index].info.size_of_files = (+parameters.other_files.size_of_files);
                    $scope.chats[chat_index].info.currentfilename = (parameters.filepath);
                    $scope.chats[chat_index].error_message = "";
                    if($scope.chats[chat_index].info.size_of_files == 0){
                        $scope.chats[chat_index].percentage = 0;
                    }
                    else{
                        $scope.chats[chat_index].percentage = 100.0 * $scope.chats[chat_index].info.bytes_transferred / $scope.chats[chat_index].info.size_of_files;

                    }



                });

                if ($scope.chats[chat_index].files && $scope.chats[chat_index].files.length > 0) {
                    var file_index = -1;
                    var file_counter = -1;
                    angular.forEach($scope.chats[chat_index].files, function (file) {
                        file_counter = file_counter + 1;
                        if (file.id == parameters.file_id) {
                            file_index = file_counter;
                            return false;
                        }
                    });

                    if (file_index == -1) {
                        return;
                    }

                    $scope.$evalAsync(function () {

                        $scope.chats[chat_index].files[file_index].bytes_transferred = parameters.bytes_transferred;
                        $scope.chats[chat_index].files[file_index].filesize = (+parameters.total_bytes);
                        $scope.chats[chat_index].files[file_index].error_message = "";
                        $scope.chats[chat_index].files[file_index].percentage = 100.0 * $scope.chats[chat_index].files[file_index].bytes_transferred / $scope.chats[chat_index].files[file_index].filesize ;



                    });

                }


            });


            $scope.$on('mark_chat_as_sent', function(event, data){


                       if($scope.temp_mark_chat_as_sent.indexOf(data.id) == -1){
                            $scope.temp_mark_chat_as_sent.push(data.id);
                       }

                       var index = $scope.temp_mark_chat_as_sent.indexOf(data.id);

                       angular.forEach($scope.chats, function(chat, key) {

                                       if(chat.id == data.id){

                                       $scope.$evalAsync(function(){
                                            $scope.chats[key].sent = 1;
                                            $scope.temp_mark_chat_as_sent.splice(index, 1);
                                           $scope.chats[key].error_message = "";

                                       });
                                       return false;
                                       }
                                       });
            });






        },
        template: template_
    }

}])
