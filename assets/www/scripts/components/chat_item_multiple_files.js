airsend_app

.directive('chatItemMultipleFiles', ['FeemPeers', '$rootScope', '$compile', 'FeemBridge', '$timeout', 'FeemOptionsBox','$translate', function(FeemPeers, $rootScope, $compile, FeemBridge, $timeout, FeemOptionsBox, $translate){

    var template_ = '<div  ng-click="show_options();" style="cursor:pointer">\
            <div ng-if="chat.status && chat.status==\'paused\'" style="color: red; font-size: 12px; " translate>LANG_PAUSED</div>\
<div style="padding: 10px; background-color: white; border: 1px solid #eee; border-radius: 10px; display: inline-block; text-align: left; ">\
<table>\
    <tr>\
        <td rowspan="2" style="position:relative; width: 75px;">\
            <img style="width: 40px; position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); " src="images/fileicons/unknown.png">\
        </td>\
        <td style="word-break: break-all;" highlighter="chat.info.currentfilename">{{chat.info.currentfilename || chat.info.minfilename}}...</td>\
    </tr>\
    <tr>\
        <td style="color: #aaa;"><count-up time=3000 steps = 100 decimals=3 ng-model="chat.percentage"></count-up>% / {{chat.info.size_of_files | bytes}}</td>\
    </tr>\
    <tr ng-if="chat.show_options">\
        <td colspan=2 style="height: 60px; background-color: #3f3f3f; padding-left: 5px; padding-right: 5px; position: relative;">\
            <table style="position: absolute; height: 60px; width: 90%; color: #f2f2f2; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%);">\
                <tr>\
                    <td ng-if="file.type==\'download\' && file.bytes_transferred == file.filesize" ng-click="open_downloaded_file(file.id);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>open file</a> </td>\
                    <td ng-if="file.type==\'upload\' && file.bytes_transferred == file.filesize" ng-click="open_file(file.filepath);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>open file</a> </td>\
                    <td ng-click="show_in_folder(chat.id, chat.type);" style="cursor: pointer; text-align: center; width: 60px;"> <a href style="color:#f2f2f2; "><img src="images/icons/folder.png" style="height: 25px;"><br>show in folder</a> </td>\
                </tr>\
            </table>\
        </td>\
    </tr>\
</table>\
</div>\
<div class="progress" style="">\
  <div class="progress-bar {{chat.percentage == 100 ? \'progress-bar-success\':\'\'}}" role="progressbar" aria-valuenow="{{chat.percentage}}" aria-valuemin="0" aria-valuemax="100" style="width: {{chat.percentage}}%">\
    <span class="sr-only">% Complete</span>\
  </div>\
</div>\
</div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: false,
        link: function ($scope) {

            $scope.show_options = function(){

                var options = [];


                if($scope.chat.type=="upload" && $scope.chat.status && $scope.chat.status!='paused' && $scope.chat.percentage < 100){
                    options.push({
                                     "text": $translate.instant('LANG_PAUSE'),
                                    callback: function () {
                                        $scope.pause_upload();
                                     }
                                 });
                }

                if($scope.chat.type=="upload" && !$scope.chat.status && $scope.chat.percentage < 100){
                    options.push({
                                     "text": $translate.instant('LANG_PAUSE'),
                                    callback: function () {
                                        $scope.pause_upload();
                                     }
                                 });
                }


                if($scope.chat.type=="upload" && $scope.chat.status && $scope.chat.status=='paused' && $scope.chat.percentage < 100){
                    options.push({
                                     "text": $translate.instant('LANG_RESUME'),
                                    callback: function () {
                                        $scope.resume_upload();
                                     }
                                 });
                }

                if($scope.chat.type=="upload"){
                    options.push({
                                    "text": $translate.instant('LANG_RESEND'),
                                     callback: function(){
                                         FeemBridge.request("/resend", {
                                                            "id": $scope.chat.id
                                                            }, function(response) {
                                                                $scope.chat.status = "";
                                                            });
                                     }
                                 });
                }



                options.push({
                                "text": $translate.instant('LANG_SHOW_IN_FOLDER'),
                                 callback: function(){
                                    $scope.show_in_folder($scope.chat.id, $scope.chat.type);
                                 }
                             });


                FeemOptionsBox.context_menu(event,options);
            }

            $scope.pause_upload = function () {
                FeemBridge.request("/pause_upload", {
                                       id: $scope.chat.id
                                   }, function(response) {

                                       $scope.chat.status = "paused";

                                   });
            };

            $scope.resume_upload = function () {
                FeemBridge.request("/resume_upload", {
                                       id: $scope.chat.id,
                                   }, function(response) {

                                       $scope.chat.status = "";

                                   });
            };


            $scope.show_in_folder = function(chat_id, chat_type){
                FeemBridge.request("/open_folder_for_chat", {
                                   "id": chat_id,
                                   "type": chat_type
                                   }, function(response) {

                                   });
            };

            $scope.$on("download_completed", function(evt, parameters) {

                      var fileid = parameters.file_id;
                      var chatid = parameters.chat_id;

                      //get the latest chat id with the required file;

                      if ($scope.chat.id != chatid) {
                      return;
                      }

                      $scope.chat.error_message = "";
                      $scope.chat.percentage = 100;
                      //scope.chat.info.bytes_transferred =  (+ parameters.bytes_transferred);

                      update_chat_info();

                      });

            $scope.$on("download_error", function(evt, parameters) {

                      var chatid = parameters.chat_id;

                      //get the latest chat id with the required file;
                      if ($scope.chat.id == chatid) {
                      $scope.$evalAsync(function() {

                                       $scope.chat.error_message = parameters.error;

                                       });
                      }


                      });





        },
        template: template_
    }

}])
