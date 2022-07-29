airsend_app

.directive('filemenu_old', function(){

    var template_ = '\
<div  style="width: 100%;">\
<table style="width: 100%;">\
    <tr>\
        <td colspan=2 style="height: 60px; background-color: #3f3f3f; padding-left: 5px; padding-right: 5px; position: relative;">\
            <table style="position: absolute; height: 60px; width: 90%; color: #f2f2f2; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%);">\
                <tr>\
                    <td ng-if="file.type==\'download\' && file.bytes_transferred == file.filesize" ng-click="open_downloaded_file(file.id);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>open file</a> </td>\
                    <td ng-if="file.type==\'download\' && file.bytes_transferred != file.filesize" ng-click="download_file(file.id, chat.id);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>download</a> </td>\
                    <td ng-if="file.type==\'upload\' && file.bytes_transferred == file.filesize" ng-click="open_file(file.filepath);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>open file</a> </td>\
                    <td ng-if="file.bytes_transferred == file.filesize" ng-click="show_in_folder(chat.id, chat.type);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>show in folder</a> </td>\
                    <td ng-if="chat.sent!=1 || (file.type==\'upload\')" ng-click="resend_chat();" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>resend</a> </td>\
                </tr>\
            </table>\
        </td>\
    </tr>\
</table>\
</div>\
';

    return {
        scope: false,
        template: template_,
        link: function($scope){

        }
    }
})


.directive('chatItemSingleFile', ['FeemPeers', '$rootScope', '$compile', 'FeemBridge', '$timeout', 'FeemOptionsBox', '$translate', function(FeemPeers, $rootScope, $compile, FeemBridge, $timeout, FeemOptionsBox, $translate){


    var template_ = '<div ng-click="show_options($event);" style="cursor:pointer; margin-bottom: 10px;">\
            <div highlighter="file.error_message" ng-if="file.error_message" style="color: red; font-size: 12px; ">{{file.error_message}}</div>\
            <div ng-if="file.status && file.status==\'paused\'" style="color: red; font-size: 12px; " translate>LANG_PAUSED</div>\
<div ng-if="file.has_thumbnail" chat-item-single-file-photo></div>\
<div ng-if="!file.has_thumbnail" chat-item-single-file-generic></div>\
</div>';

    return {
        restrict: 'EA',
        replace: true,
        scope: false,
        link: function ($scope) {


            $scope.file.show_options = false


            var stop_show;
            $scope.show_options = function(event){
                $scope.file.show_options = true;

                var options = [];

                if($scope.file.type=="upload"){
                    options.push({
                                    "text": $translate.instant('LANG_OPEN_FILE'),
                                     callback: function(){
                                        $scope.open_file($scope.file.filepath);
                                     }
                                 });
                }

                if($scope.file.type=="download" && $scope.file.bytes_transferred == $scope.file.filesize){
                    options.push({
                                     "text": $translate.instant('LANG_OPEN_FILE'),
                                    callback: function () {
                                        $scope.open_downloaded_file($scope.file.id);
                                     }
                                 });
                }

                if($scope.file.type=="upload" && $scope.file.status && $scope.file.status!='paused' && $scope.file.bytes_transferred != $scope.file.filesize){
                    options.push({
                                     "text": $translate.instant('LANG_PAUSE'),
                                    callback: function () {
                                        $scope.pause_upload();
                                     }
                                 });
                }

                if($scope.file.type=="upload" && !$scope.file.status && $scope.file.bytes_transferred != $scope.file.filesize){
                    options.push({
                                     "text": $translate.instant('LANG_PAUSE'),
                                    callback: function () {
                                        $scope.pause_upload();
                                     }
                                 });
                }


//                if($scope.file.type=="upload" && $scope.file.status && $scope.file.status=='paused' && $scope.file.bytes_transferred != $scope.file.filesize){
//                    options.push({
//                                     "text": $translate.instant('LANG_RESUME'),
//                                    callback: function () {
//                                        $scope.resume_upload();
//                                     }
//                                 });
//                }

                if($scope.file.type=="download" && (+$scope.file.bytes_transferred) != (+$scope.file.filesize)){
                    options.push({
                                    "text": $translate.instant('LANG_DOWNLOAD'),
                                     callback: function(){
                                        $scope.download_file($scope.file.id, $scope.chat.id);
                                     }
                                 });
                }

                if(($scope.file.type=='upload') || ($scope.file.type=="download" && $scope.file.bytes_transferred == $scope.file.filesize)){
                    options.push({
                                    "text": $translate.instant('LANG_SHOW_IN_FOLDER'),
                                     callback: function(){
                                        $scope.show_in_folder($scope.chat.id, $scope.chat.type);
                                     }
                                 });
                }

                if( ($scope.chat.sent !=1)  || ($scope.file.type=='upload')){
                    options.push({
                                    "text": $translate.instant('LANG_RESEND'),
                                     callback: function(){
                                        if($scope.file.status=='paused'){
                                            $scope.resume_upload();
                                        }
                                        else{
                                            $scope.resend_chat();
                                        }


                                     }
                                 });
                }

                FeemOptionsBox.context_menu(event,options);

                $timeout.cancel(stop_show);
                stop_show = $timeout(function(){
                    $scope.file.show_options = false
                }, 5000);

            }

            $scope.resend_chat = function(){
                $timeout(function(){
                    $scope.file.show_options = false;
                },0);
                FeemBridge.request("/resend", {
                                   "id": $scope.chat.id
                                   }, function(response) {
                                        if(response.status == "error"){
                                            $scope.chat.error_message = response.error_message;
                                        }

                                   });
            }



            $scope.open_downloaded_file = function (file_id) {
                FeemBridge.request("/open_downloaded_file", {
                                   id: file_id
                                   }, function(response) {

                                   });
            };

            $scope.pause_upload = function () {
                FeemBridge.request("/pause_file_upload", {
                                       id: $scope.file.id,
                                       chat_id: $scope.chat.id
                                   }, function(response) {

                                       $scope.file.status = "paused";

                                   });
            };

            $scope.resume_upload = function () {
                FeemBridge.request("/resume_file_upload", {
                                       id: $scope.file.id,
                                       chat_id: $scope.chat.id
                                   }, function(response) {
                                       $scope.file.status = "";
                                   });
            };

            $scope.download_file = function(file_id, chat_id){
                $scope.file.error_message = "";
                FeemBridge.request("/download_file", {
                                   "file_id": file_id,
                                   "download_id": chat_id
                                   }, function(response) {
                                       if(response.status == "error"){
                                           $scope.chat.error_message = response.error_message;
                                       }
                                   });
            };



            $scope.open_file = function (filepath) {
                FeemBridge.request("/open_file", {
                                   file: filepath
                                   }, function(response) {

                                   });
            };


            $scope.show_in_folder = function(chat_id, chat_type){
                FeemBridge.request("/open_folder_for_chat", {
                                   "id": chat_id,
                                   "type": chat_type
                                   }, function(response) {

                                   });
            };


            var update_file_info = function() {

            FeemBridge.request("/info_file", {
                               id: $scope.file.id,
                               type: $scope.chat.type
                               }, function(response) {
                               $scope.$evalAsync(function() {

                                                $scope.file = angular.extend($scope.file, response);
                                                });

                               });

            }

            $scope.$on("download_error", function(evt, parameters) {

                      var fileid = parameters.file_id;
                      var chatid = parameters.chat_id;

                      //get the latest chat id with the required file;
                      if ($scope.file.id == fileid) {
                      $scope.$evalAsync(function() {

                                       $scope.file.error_message = parameters.error;

                                       });
                      }


                      });




            $scope.$on("download_completed", function(evt, parameters) {


                      var fileid = parameters.file_id;
                      var chatid = parameters.chat_id;

                      //get the latest chat id with the required file;
                      if (parameters.file_id && $scope.file.id != fileid) {
                      return;
                      }


                      if (chatid && $scope.chat.id != chatid) {

                      return;
                      }

                      $scope.file.error_message = "";


                      $scope.file.bytes_transferred = $scope.file.filesize;
                        $scope.file.percentage = 100;

                      update_file_info();
                      //update_thumbnail();


                      });




        },
        template: template_
    }

}])
