airsend_app
.value('template_text',
       '<div  style=" font-size: 15px;word-break:break-all;word-wrap: break-word;text-align: left; overflow:auto; font-weight: normal;" class="primary-text-color" >\
       <div style="" ng-bind-html="chat.data | linky"></div>\
       <\div>'
       )


.directive('manyFiles', ['manyFilesChatItemBehavior', function(manyFilesChatItemBehavior) {
                         return {
                         link: manyFilesChatItemBehavior,
                         template: '<div ng-click="show_multiple_files_options();" class="" style=" cursor:pointer; position:relative; border: 1px solid #cdcdcd; width: 100%!important; min-width:100%;  margin-top: 5px; margin-bottom: 5px; ">\
                                                              <table style="background-color: white; width: 100%!important; min-width:100%; table-layout:fixed; " cellspacing=0 borderspacing=0>\
                                                              <tr>\
                         <td  width="50px"  style=" border-right: 1px solid #cdcdcd; border-bottom: 1px solid #cdcdcd; text-align: center;"><img style="cursor:pointer" width="40px" src="images/icons/{{chat.type}}.png"></img></td>\
                                                              <td  style="font-size: 15px; font-weight: normal;border-bottom: 1px solid #cdcdcd;" class="primary-text-color">\
                                                                <div style="width: 100%; height: 100%;">\
                                                                <div style="position: relative; padding: 5px;">{{"_files" | translate}} : <b>{{chat.info.number_of_files | number}}</b><br><b>{{chat.info.bytes_transferred | bytes}} / {{chat.info.size_of_files | bytes}}</b> </div>\
                                                                                         <span style="color: red;font-size: 12px"> {{chat.error_message}} </span>\
                                                                </div>\
                                                                <div style="-webkit-transform:translateZ(0); -webkit-backface-visibility: hidden; position: absolute; left: 0%;  top: 0%; bottom: 0px; width: {{100 * chat.info.bytes_transferred / chat.info.size_of_files }}%; opacity: 0.3; z-index: 5; background-color: {{chat.info.bytes_transferred == chat.info.size_of_files?\'green\':\'blue\' }};   ">  </div>\
                                                              </td>\
                                                              </tr>\
                                                              <tr>\
                                                              <td colspan=2>\
<div style=" word-break:break-all;word-wrap: break-word; padding:5px;  ">\
                         <div> {{chat.info.minfilename}}  </div>  <div> ... </div> <div> {{chat.info.maxfilename}}  </div>\
                         </div>\                                                              </td>\
                                                              </tr>\
                                                                                       </table>\
                                                              </div>\
                                                              ',
                         template_old: '<div ng-click="show_multiple_files_options();" style="display:inline-block;cursor:pointer; position:relative; border: 1px solid #cdcdcd; width: 100%!important; min-width:100%;margin-top: 5px; margin-bottom: 5px;font-size: 15px; font-weight: normal;">\
                         <table style="width: 100%!important; min-width:100%; background-color:white; table-layout:fixed; display:blocked;" cellspacing=0 borderspacing=0>\
                         <tr>\
                         <td  width="50px"  style=" border-right: 1px solid #cdcdcd; border-bottom: 1px solid #cdcdcd; text-align: center;"><img style="cursor:pointer" width="40px" src="images/icons/{{chat.type}}.png"></img></td>\
                         <td  style="display:block; border-bottom: 1px solid #cdcdcd;">\
                         <div style="position: relative; width: 100%!important;min-width:100%;">\
                         <div style="position: relative; padding: 5px;">{{"_files" | translate}} : <b>{{chat.info.number_of_files | number}}</b><br><b>{{chat.info.bytes_transferred | bytes}} / {{chat.info.size_of_files | bytes}}</b> </div>\
                         <span style="color: red;font-size: 12px"> {{chat.error_message}} </span>\
                         <div style="-webkit-transform:translateZ(0); -webkit-backface-visibility: hidden; position: absolute; left: 0%;  top: 0%; bottom: 0px; width: {{100 * chat.info.bytes_transferred / chat.info.size_of_files }}%; opacity: 0.3; z-index: 5; background-color: {{chat.info.bytes_transferred == chat.info.size_of_files?\'green\':\'blue\' }};   ">  </div>\
                         </div>\
                         </td>\
                         </tr>\
                         <tr>\
                         <td colspan=2 style="min-height: 100px;font-size: 15px; font-weight: normal; " class="secondary-text-color">\
                         <div style="display:block; word-break:break-all;word-wrap: break-word; padding:5px; width: 100%; min-width: 100%;">\
                         <div> {{chat.info.minfilename}}  </div>  <div> ... </div> <div> {{chat.info.maxfilename}}  </div>\
                         </div>\
                         </td>\
                         </tr>\
                         </table>\
                         </div>\
                         '
                         };

                         }])
.factory('manyFilesChatItemBehavior', ['FeemBridge', 'iosActionSheet', 'FeemDevice', 'FeemUtils', 'airsend_config', '$timeout', '$window', '$translate', function(FeemBridge, iosActionSheet, FeemDevice, FeemUtils, airsend_config, $timeout, $window, $translate) {

                                       var link_ = function(scope, element, attributes) {

                                       var update_chat_info = function() {


                                       FeemBridge.request("/chat_info", {
                                                          "id": scope.chat.id
                                                          }, function(response) {
                                                          scope.$evalAsync(function() {
                                                                           scope.chat = angular.extend(scope.chat, response)
                                                                           });


                                                          });
                                       };

                                       scope.show_multiple_files_options = function() {

                                       var options = [];
                                       options.push({
                                                    text: $translate.instant("_options"),
                                                    label: true
                                                    });

                                       if (scope.chat.type == "download") {
                                       options.push({
                                                    id: "download",
                                                    text: $translate.instant("_download"),
                                                    bold: true
                                                    });

                                       }
                                       if (scope.chat.type == "upload") {
                                       options.push({
                                                    id: "resend",
                                                    text: $translate.instant("_resend"),
                                                    bold: true
                                                    });

                                       }

                                       options.push({
                                                    id: "show_files",
                                                    text: $translate.instant("_show_in_folder"),
                                                    bold: true
                                                    });



                                       iosActionSheet(options).then(function(data) {

                                                                    if (data.button.id == "resend") {
                                                                    FeemBridge.request("/resend", {
                                                                                       "id": scope.chat.id
                                                                                       }, function(response) {

                                                                                       });
                                                                    } else if (data.button.id == "show_files") {
                                                                    var folders = [];
                                                                    FeemBridge.request("/open_folder_for_chat", {
                                                                                       "id": scope.chat.id,
                                                                                       "type": scope.chat.type
                                                                                       }, function(response) {

                                                                                       });

                                                                    } else if (data.button.id == "download") {

                                                                    FeemBridge.request("/download_files", {
                                                                                       "download_id": scope.chat.id
                                                                                       }, function(response) {

                                                                                       });
                                                                    }


                                                                    }, function() {
                                                                    scope.output = 'rejected';
                                                                    })
                                       }




                                       scope.$on("download_completed", function(evt, parameters) {

                                                 var fileid = parameters.file_id;
                                                 var chatid = parameters.chat_id;

                                                 //get the latest chat id with the required file;

                                                 if (scope.chat.id != chatid) {
                                                 return;
                                                 }

                                                 scope.chat.error_message = "";
                                                 //scope.chat.info.bytes_transferred =  (+ parameters.bytes_transferred);

                                                 update_chat_info();

                                                 });

                                       scope.$on("download_error", function(evt, parameters) {

                                                 var chatid = parameters.chat_id;

                                                 //get the latest chat id with the required file;
                                                 if (scope.chat.id == chatid) {
                                                 scope.$evalAsync(function() {

                                                                  scope.chat.error_message = parameters.error;

                                                                  });
                                                 }


                                                 });



                                       };

                                       return function(scope, element, attributes) {

                                       $translate.onReady().then(function() {
                                                                 link_(scope, element, attributes);
                                                                 });

                                       };


                                       }])
.factory('singleChatItemBehavior', ['FeemBridge', 'iosActionSheet', 'FeemDevice', 'FeemUtils', 'airsend_config', '$timeout', '$window', '$translate', function(FeemBridge, iosActionSheet, FeemDevice, FeemUtils, airsend_config, $timeout, $window, $translate) {

                                    var link_ = function(scope, element, attributes) {



                                    var update_file_info = function() {

                                    FeemBridge.request("/info_file", {
                                                       id: scope.file.id,
                                                       type: scope.chat.type
                                                       }, function(response) {
                                                       scope.$evalAsync(function() {

                                                                        scope.file = angular.extend(scope.file, response);
                                                                        });

                                                       });

                                    }




                                    scope.$on("download_completed", function(evt, parameters) {


                                              var fileid = parameters.file_id;
                                              var chatid = parameters.chat_id;

                                              //get the latest chat id with the required file;
                                              if (parameters.file_id && scope.file.id != fileid) {
                                              return;
                                              }


                                              if (chatid && scope.chat.id != chatid) {

                                              return;
                                              }

                                              scope.file.error_message = "";


                                              scope.file.bytes_transferred = scope.file.filesize;


                                              update_file_info();
                                              //update_thumbnail();


                                              });

                                    scope.$on("download_error", function(evt, parameters) {

                                              var fileid = parameters.file_id;
                                              var chatid = parameters.chat_id;

                                              //get the latest chat id with the required file;
                                              if (scope.file.id == fileid) {
                                              scope.$evalAsync(function() {

                                                               scope.file.error_message = parameters.error;

                                                               });
                                              }


                                              });


                                    scope.show_options = function() {

                                    var options = [];
                                    options.push({
                                                 text: $translate.instant("_options"),
                                                 label: true
                                                 });


                                    if (scope.file.type == "download" && (scope.file.bytes_transferred != scope.file.filesize)) {
                                    options.push({
                                                 id: "download",
                                                 text: $translate.instant("_download"),
                                                 bold: true
                                                 });

                                        options.push({
                                                     id: "stop_download",
                                                     text: $translate.instant("_stop"),
                                                     bold: true
                                                     });
                                    }

                                    if (scope.file.type == "upload" && (scope.file.bytes_transferred != scope.file.filesize)) {

                                        options.push({
                                                     id: "stop_upload",
                                                     text: $translate.instant("_stop"),
                                                     bold: true
                                                     });
                                    }


                                    if ((scope.file.type == "download") && (scope.file.bytes_transferred == scope.file.filesize)) {
                                    options.push({
                                                 id: "open_download",
                                                 text: $translate.instant("_open"),
                                                 bold: true
                                                 });
                                    options.push({
                                                 id: "show_download",
                                                 text: $translate.instant("_show_in_folder"),
                                                 bold: true
                                                 });

                                    }

                                    if (scope.file.type == "upload") {
                                    options.push({
                                                 id: "resend",
                                                 text: $translate.instant("_resend"),
                                                 bold: true
                                                 });
                                    options.push({
                                                 id: "open_file",
                                                 text: $translate.instant("_open"),
                                                 bold: true
                                                 });
                                    options.push({
                                                 id: "show_upload",
                                                 text: $translate.instant("_show_in_folder"),
                                                 bold: true
                                                 });
                                    }




                                    iosActionSheet(options).then(function(data) {
                                                                 if (data.button.id == "show_download") {
                                                                 FeemBridge.request("/open_folder_for_chat", {
                                                                                    "id": scope.chat.id,
                                                                                    "type": scope.chat.type
                                                                                    }, function(response) {

                                                                                    });
                                                                 //
                                                                 } else if (data.button.id == "show_upload") {
                                                                 FeemBridge.request("/open_folder_for_chat", {
                                                                                    "id": scope.chat.id,
                                                                                    "type": scope.chat.type
                                                                                    }, function(response) {

                                                                                    });
                                                                 }else if (data.button.id == "stop_download") {
                                                                     FeemBridge.request("/stop_download", {
                                                                                        "id": scope.chat.id,
                                                                                        "type": scope.chat.type
                                                                                        }, function(response) {

                                                                                        });
                                                                     } else if (data.button.id == "stop_upload") {
                                                                     FeemBridge.request("/stop_upload", {
                                                                                        "id": scope.chat.id,
                                                                                        "type": scope.chat.type
                                                                                        }, function(response) {

                                                                                        });
                                                                     } else if (data.button.id == "open_file") {
                                                                 FeemBridge.request("/open_file", {
                                                                                    file: scope.file.filepath
                                                                                    }, function(response) {

                                                                                    });
                                                                 } else if (data.button.id == "open_download") {
                                                                 FeemBridge.request("/open_downloaded_file", {
                                                                                    id: scope.file.id
                                                                                    }, function(response) {

                                                                                    });
                                                                 } else if (data.button.id == "resend") {
                                                                 FeemBridge.request("/resend", {
                                                                                    id: scope.chat.id
                                                                                    }, function(response) {

                                                                                    });
                                                                 } else if (data.button.id == "download") {
                                                                 scope.file.error_message = "";
                                                                 FeemBridge.request("/download_file", {
                                                                                    "file_id": scope.file.id,
                                                                                    "download_id": scope.chat.id
                                                                                    }, function(response) {

                                                                                    });
                                                                 }


                                                                 }, function() {
                                                                 scope.output = 'rejected';
                                                                 })
                                    }



                                    }

                                    return function(scope, element, attributes) {

                                    $translate.onReady().then(function() {
                                                              link_(scope, element, attributes);
                                                              });

                                    };


                                    }])
.directive('photoFile', [function() {
                         return {
                         restrict: 'A',
                         replace: true,
                         scope: false,
                         template: '<div ng-click="show_options();" class="" style="width: 100%; cursor:pointer; position:relative; margin-top: 5px; margin-bottom: 5px;">\
                         <table style="width: 100%;"  cellspacing=0 borderspacing=0><tr><td>\
                         <img  class="shadow" style="width:100%;"  src = "{{file.thumbnail}}">\
                         <div style="position:absolute; font-size: 12px; top:0px; height: 50px; left: 0px; right: 0px; background-color: rgb(0,0,0); background-color: rgba(0,0,0,0.5); color: white; display: table-cell; text-align: center; vertical-align: middle; padding: 10px;"  ng-if="file.bytes_transferred < file.filesize"> {{file.bytes_transferred | number}} / {{file.filesize | number}}</div>\
                         <span style="color: red;font-size: 12px">{{file.error_message}}</span>\
                         </td></tr></table>\
                         </div>'
                         };
                         }])

.directive('genericFile', [function() {
                           return {
                           restrict: 'A',
                           replace: true,
                           scope: false,
                           template: '<div ng-click="show_options();" class="" style="display:inline-block; cursor:pointer; position:relative; border: 1px solid #cdcdcd; width: 100%!important; min-width:100%;  margin-top: 5px; margin-bottom: 5px; ">\
                           <table style="background-color: white; width: 100%!important; min-width:100%; table-layout:fixed; " cellspacing=0 borderspacing=0>\
                           <tbody>\
                           <tr>\
                           <td width="50px"  style="border-right: 1px solid #cdcdcd;  text-align: center;"><img style="cursor:pointer" width="40px" src="images/icons/{{file.type}}.png"></img></td>\
                           <td  style="font-size: 15px; font-weight: normal; position: relative;" class="primary-text-color">\
                                                      <div style="-webkit-transform:translateZ(0); -webkit-backface-visibility: hidden; position: absolute; left: 0%;  top: 0%; bottom: 0px; width: {{100 * file.bytes_transferred/ file.filesize }}%; opacity: 0.3; z-index: 5; background-color: {{file.bytes_transferred == file.filesize?\'green\':\'blue\' }};   ">\
                                                      </div>\
                                                      <span style="color: red;font-size: 12px"> {{file.error_message}}</span>\
                                                      <div  class="secondary-text-color" style="margin-bottom: 5px; padding-bottom: 5px; border-bottom: 1px solid #cdcdcd;" ng-if="(file.bytes_transferred > 0) && (file.bytes_transferred != file.filesize)">{{file.bytes_transferred | bytes}} / <b>{{file.filesize | bytes}}</b></div>\
                                                      <div class="primary-text-color" style="display:block;font-size: 15px; font-weight: normal; word-break:break-all;word-wrap: break-word; padding:5px;">\
 {{file.filename}} </div>\
                                                      </td>\
                           </tr>\
                                                    </table>\
                           </div>\
                           '
                           };
                           }])
.directive('loadingFile', [function() {
                           return {
                           restrict: 'A',
                           replace: true,
                           scope: false,
                           template: '<div  class="" style="cursor:pointer; position:relative; border: 1px solid #cdcdcd; border-radius: 5px; width: 100%;  margin-top: 5px; margin-bottom: 5px;">\
                           <table style="table-layout : fixed; width: 100%;">\
                           <tbody>\
                           <tr>\
                           <td height="50px" width="50px"  style="border-right: 1px solid #cdcdcd; text-align: center;">*</td>\
                           <td  style=" position:relative;  font-size: 15px; font-weight: normal;  overflow:hidden; " class="secondary-text-color">\
                           <div style="z-index: 10; text-overflow: ellipsis;white-space:nowrap; overflow:hidden; padding: 10px;">\
                           loading file...\
                           </div>\
                           </td>\
                           </tr>\
                           </tbody>\
                           </table>\
                           </div>\
                           '
                           };
                           }])

.directive('singleFile', ['singleChatItemBehavior', function(singleChatItemBehavior) {
                          return {
                          restrict: 'A',
                          replace: true,
                          scope: false,
                          template: '<div style="position:relative;  clear:both;  width: 100%;"><div ng-if="file.has_thumbnail" photo-file></div><div ng-if="!file.has_thumbnail" generic-file></div></div>',
                          link: singleChatItemBehavior
                          };
                          }])
.directive('fewFiles', function() {
           return {
           template: '<div style="width: 100%; ">\
           <div ng-repeat="file in chat.files  track by $index"  single-file> </div>\
           </div>\
           '
           };

           })


.value('template_upload',
       '<div style="width: 100%; ">\
       <div ng-if="chat.info.number_of_files <= 10" few-files></div>\
       <div ng-if="chat.info.number_of_files > 10" many-files></div>\
       </div>\
       ')
.value('template_download',
       '<div style="width: 100%;">\
       <div ng-if="chat.info.number_of_files <= 10" few-files></div>\
       <div ng-if="chat.info.number_of_files > 10" many-files></div>\
       </div>\
       ')
.factory('chatItemBehavior', ['FeemUtils', '$filter', '$rootScope', 'FeemBridge', 'iosActionSheet', '$timeout', function(FeemUtils, $filter, $rootScope, FeemBridge, iosActionSheet, $timeout) {

                              var link = function(scope, element, attributes) {



                              var update_chat_info = function() {

                              FeemBridge.request("/chat_info", {
                                                 "id": scope.id
                                                 }, function(response) {
                                                 scope.chat = response;
                                                 });
                              };



                              }

                              return link;


                              }])
.directive('chatItem', ['$interval', 'FeemUtils', 'FeemPeers', 'FeemBridge', '$rootScope', 'template_text', 'template_download', 'template_upload', 'chatItemBehavior', function($interval, FeemUtils, FeemPeers, FeemBridge, $rootScope, template_text, template_download, template_upload, chatItemBehavior) {

                        var template = function($element, $attributes) {
                        if ($attributes.type == "download") {
                        return template_download;
                        }

                        if ($attributes.type == "upload") {
                        return template_upload;
                        }

                        return template_text;
                        }


                        return {
                        restrict: 'A',
                        replace: true,
                        scope: false,
                        template: template,
                        link: chatItemBehavior
                        }
                        }])

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
                                          if ($rootScope.selected_peer != data.peer_id) {
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
.directive('chat', ['FeemBridge', '$timeout', '$window', '$rootScope', 'FeemPeers', 'FeemUtils', '$filter', 'airsend_config', 'iosActionSheet', 'FeemDevice', '$anchorScroll', '$translate', function(FeemBridge, $timeout, $window, $rootScope, FeemPeers, FeemUtils, $filter, airsend_config, iosActionSheet, FeemDevice, $anchorScroll, $translate) {
                    var template_ = '\
                    <div style="position:relative; width: 100%; height: 100%;">\
                        <div feedback-for-peer></div>\
<div style="position: fixed; right: 0px; left: {{small_screen?\'0\':\'355\'}}px; bottom: 0px;z-index:5; background-color: #f5f5f5;height: 70px;">\
                        <table style="height: 100%; width: 100%;">\
                            <tr>\
                                <td width="75px">\
                                <center>\
                                <div ng-click="show_filepicker_options();" class="button accent-color" style="z-index:5;">\
                                <img src="images/icons/paperclip.png" width="50px" style="position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);-webkit-transform: translate(-50%, -50%);">\
                                </div>\
                                </center>\
                                </td>\
                                <td><textarea ng-model="current_chat_message"  ng-enter="send_chat_message();" style="padding: 5px; width: 100%;height: 100%;resize: none;font-size: 16px;border: 1px solid #cdcdcd; border-color: rgba(0,0,0,.15);background-color: white;" placeholder="chat" type="text"></textarea></td>\
                                <td width="75px" ng-if="current_chat_message.length >0 ">\
                                <center >\
                                <div ng-click="send_chat_message();" class="button accent-color" style="z-index:5;">\
                                <img src="images/icons/arrowrighta.png" width="50px" style="position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);-webkit-transform: translate(-50%, -50%);">\
                                </div>\
                                </center>\
                                </td>\
                            </tr>\
                        </table>\
</div>\
                        <div ng-if="chats.length==0 && !loading"  class="chatspace2" >\
                            <div style="position: absolute;top: 50%;transform: translateY(-50%); -webkit-transform: translateY(-50%); left:0px; right: 0px; text-align: center;">\
                                <h1>Chat or Send Files Below</h1>\
                                <img src="images/icons/arrowdowna.png" width="40px" class="animated slideInDown"></img>\
                            </div>\
                        </div>\
                         <div ng-if="chats.length==0 && loading"  class="chatspace2" >\
                            <div style="position: absolute;top: 50%;transform: translateY(-50%); -webkit-transform: translateY(-50%); left:0px; right: 0px; text-align: center;">\
                                <h1>loading...</h1>\
                            </div>\
                         </div>\
                        <table  ng-if="chats.length>0" border="0px" bordercolor="#333" class="dark-primary-color1 devicesection" style="table-layout:fixed; border-collapse: collapse;  border-bottom: 1px solid black; height:50px; position: absolute; top: 0px; left: 0px; width: 100%;"><tr>\
                            <td style="border-right: 1px solid #ccc; "><center><span style="font-size:16px">Chats </span><sup ng-if="false"><small><a href>?</small></a></sup></center></td>\
                        </tr></table>\
                        <div id="chats" ng-if="chats.length>0"  class="chatspace2 overthrow" style="background-color:#eceff1;">\
                            <div id="chatcontents" style="width: 100%; max-width: 600px; margin: 0px auto;">\
                                <div ng-repeat="chat in chats track by chat.id">\
                                    <div id="{{chat.id}}" style=" width: 80%;  display:block;clear: both; {{chat.peer.id  == device.id ? \'float:right;\':\' float:left;\' }};">\
                                        <a name="chat_anchor_{{chat.id}}"></a>\
                                        <div ng-if="chat.type==\'text\'" style=" margin: 5px; border: 0px; padding: 10px; max-width: 100%; border: 1px solid #eceff1; clear: both; border-radius: 10px; {{chat.peer.id  == device.id ? \'background-color: #cfd8dc;float:right;\':\' background-color: #ffffff;float:left;\' }}; ">\
                                           <div style="overflow:auto"><span style="font-size: 12px" class="secondary-text-color"> {{chat.date_created | date:"HH:mm"}} </span>\
                                                                                          <img ng-if="chat.sent==1" width="10px" src="images/icons/checkmark_chat.png"></img> </div>\
                                           <div ng-if="chat.type==\'text\'" type="text"  chat-item ></div>\
                                        </div>\
                                        <div ng-if="chat.type!=\'text\'" style=" margin: 5px; border: 0px; padding: 10px; width: 100%; border: 1px solid #eceff1; clear: both; border-radius: 10px; {{chat.peer.id  == device.id ? \'background-color: #cfd8dc;float:right;\':\' background-color: #ffffff;float:left;\' }}; ">\
                                             <div style="overflow:auto"><span style="font-size: 12px" class="secondary-text-color"> {{chat.date_created | date:"HH:mm"}} </span>\
                                             <img ng-if="chat.sent==1" width="10px" src="images/icons/checkmark_chat.png"></img> </div>\
                                                <div ng-if="chat.type==\'upload\'"  type="upload" chat-item   index={{$index}}></div>\
                                                <div ng-if="chat.type==\'download\'"  type="download" chat-item  index={{$index}}></div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>\
                    </div>\
                    ';

    var link_ = function($scope){

        $scope.current_chat_message = "";
        $scope.chats = [];
        $scope.loading = true;

        FeemDevice.update($scope);


        $scope.temp_mark_chat_as_sent = [];

        $scope.small_screen = $rootScope.small_screen;
        $scope.switch_page = $rootScope.switch_page;



        $scope.more_options = function(){
            var options = [];


            options.push({ id: "chats", text: $translate.instant("_chats"), bold: true });
            options.push({ id: "notifications", text: $translate.instant("_notifications"), bold: true });
            options.push({ id: "pc_control", text: $translate.instant("_remote_control"), bold: true });
            options.push({ id: "automatic_backups", text: $translate.instant("_automatic_backups"), bold: true });


            iosActionSheet(options).then(function (d) {

                                         }, function () {
                                         //rejected
                                         });




        }

        var update_chats = function(_new){

        $scope.$evalAsync(function(){
            $scope.selected_peer = FeemPeers.peerid_to_peer(_new);
        });



        //console.log(  (new Date).getTime() + " chats to be obtained obtained");

        FeemBridge.request("/get_chats_for_peer", { peer: _new, start: 0 }, function (reply) {


                           var chats = [];

                           angular.forEach(reply.chats, function(chat, key) {


                                           var _peer = FeemPeers.peerid_to_peer(chat.sender);

                                           chat.peer = _peer;


                                           chats.unshift(chat);
                                           });

                                $scope.$evalAsync(function(){
                                    $scope.chats = chats;
                                    $scope.loading = false;

                                });
                           });
        }


        if($rootScope.selected_peer){
            update_chats($rootScope.selected_peer);
        }

        $scope.$on('chat_peer_changed', function (event, peer_id) {
                   //console.log('chat peer changed '+ peer_id);
                   update_chats(peer_id);
                   });




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

        var _peer = FeemPeers.peerid_to_peer($rootScope.selected_peer);

        var chat = {
        id: chatId,
        sender: $rootScope.device.id,
        receiver: $rootScope.selected_peer,
        type: "text",
        text: msg,
        data: msg,
        peer: _peer
        }


        //$scope.chats.push(chat);

        //$scope.push_chat(chat);

        $scope.current_chat_message="";


        FeemBridge.request("/create_chat", chat, function(response){


                           });





        if($window.scroll_down_timer){
        $timeout.cancel($window.scroll_down_timer);
        }

        $window.scroll_down_timer = $timeout(function(){

                                             var scroller = jQuery('#chats');
                                             if($rootScope.device.os == "android"){
                                                //scroller = scroller.overflowAndroid();
                                             }


                                                scroller.animate({scrollTop:scroller[0].scrollHeight}, 1000);
         },500);
         }






        $scope.show_file_picker = function(){
        FeemBridge.show_file_picker({to: $rootScope.selected_peer});

        //              FeemBridge.request("/show_file_picker", {to: $rootScope.selected_peer}, function(response){

        //              });
        }

                    $scope.show_filepicker_options = function () {
                    var options = [];

                    var os = FeemDevice.get().os;
                    var desktop_os = ["windows", "linux", "mac"];
                    var is_desktop = desktop_os.indexOf(os) != -1;

                    if(is_desktop){
                    options.push({ id: "files", text: $translate.instant("_send_files"), bold: true });
                    options.push({ id: "folder", text: $translate.instant("_send_folder"), bold: true });
                    }
                    else if(os == "ios"){
                    options.push({ id: "photos", text: $translate.instant("_send_camera_photos"), bold: true });
                    options.push({ id: "videos", text: $translate.instant("_send_camera_videos"), bold: true });
                    options.push({ id: "files", text: $translate.instant("_send_files"), bold: true });
                    }

                    else if(os == "android"){

                    FeemBridge.open_file_browser({ to: $rootScope.selected_peer});
                    return;
                    options.push({ id: "files", text: $translate.instant("_send_files"), bold: true });
                    options.push({ id: "apps", text: $translate.instant("_send_apps"), bold: true });
                    options.push({ id: "explorer", text: "Explorer (beta)", bold: true });


                    }
                    else if (os == "winrt"){

                    options.push({ id: "files", text: $translate.instant("_send_files"), bold: true });

                    options.push({ id: "folder", text: $translate.instant("_send_folder"), bold: true });

                    }





                    iosActionSheet(options).then(function (d) {
                                                if(d.button.id == "explorer"){
                                                    FeemBridge.open_file_browser({ to: $rootScope.selected_peer});
                                                    return;
                                                }
                                                 FeemBridge.show_file_picker({ to: $rootScope.selected_peer , type: d.button.id});

                                                 }, function () {
                                                 //rejected
                                                 });



                    };


                    $scope.$on('chat_peer_changed', function (event, peer_id) {
                               update_chats(peer_id);
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
                                   });
                                   return false;
                                   }
                                   });
                   });




        $scope.$on('new_chat', function(event, data){

                   if(data.info.sender == $rootScope.selected_peer || data.info.receiver == $rootScope.selected_peer){
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
                $scope.chats[chat_index].error_message = "";

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
                });

            }


        });



        var firstTime = true;
        $scope.$watchCollection('chats', function (newValue, oldValue) {

                                if ( firstTime || (JSON.stringify(newValue) != JSON.stringify(oldValue)))
                                {

                                    firstTime = false;
                                console.log("new chat value " + JSON.stringify(newValue));

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
        };

                    return {
                    restrict: 'A',
                    replace: true,
                    template: template_,
                    scope: {},
                    link: function(ssscope){

                       $translate.onReady().then(function(){
                            link_(ssscope);
                       });

                    }

                    }
                    }]);
