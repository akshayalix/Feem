airsend_app
.directive('peerview', ['FeemBridge', '$timeout', '$window', '$rootScope', 'FeemPeers', 'FeemUtils', '$filter', 'airsend_config', 'iosActionSheet', 'FeemDevice', '$anchorScroll', '$translate', function(FeemBridge, $timeout, $window, $rootScope, FeemPeers, FeemUtils, $filter, airsend_config, iosActionSheet, FeemDevice, $anchorScroll, $translate) {
                    var template_ = '\
                    <div class="fragment">\
                    <div ng-if="!small_screen" class="profile default-primary-color">\
                    <div class="info">\
       <div ng-if="false;" ng-click="more_options();" class="button accent-color" style="cursor: pointer;position: absolute; right: 10px; top: 100px; z-index: 20;">\
         <img width="40px" src="images/icons/menu.png"></img>\
       </div>\
                    <div class="content">\
                    <table width="100%">\
                    <tr>\
                    <td width="50px" style="border-width: 0px;">\
                    <div ng-if="small_screen" ng-click=\'switch_page("home")\' class="button accent-color" style="z-index:5;position: relative;">\
                    <img src="images/icons/arrowlefta.png" width="50px" style="position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);-webkit-transform: translate(-50%, -50%);">\
                    </div>\
                    <div ng-if="!small_screen"  class="text-primary-color" style="font-size: 50px; z-index:5;">\
                    <img src="images/icons/arrowrighta.png" width="50px" />\
                    </div>\
                    </td>\
                    <td style="border-width: 0px;">\
                    <h1>{{selected_peer.alias }} </h1>\
                    <h2>{{selected_peer.sys_info }} </h2>\
                    </td>\
                    </tr>\
                    </table>\
                    </div><!--content -->\
                    </div><!--info-->\
                    </div><!--profile -->\
                    <div ng-if="small_screen" class="profile default-primary-color" style="height:50px;">\
                     <div class="info">\
                        <div ng-if="false;" ng-click="more_options();" class="button accent-color" style="cursor: pointer;position: absolute; right: 10px; top: 100px; z-index: 20;">\
                             <img width="40px" src="images/icons/menu.png"></img>\
                           </div>\
                        <div class="content">\
                            <table width="100%">\
                                <tr>\
                                    <td width="50px" style="border-width: 0px;">\
                                        <div ng-click=\'switch_page("home")\' class="button accent-color" style="z-index:5;position: relative;">\
                                            <img src="images/icons/arrowlefta.png" width="30px" style="position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);-webkit-transform: translate(-50%, -50%);">\
                                        </div>\
                                        </td>\
                                        <td style="border-width: 0px;">\
                                        <p>{{selected_peer.alias }}</p>\
                                        <p>{{selected_peer.sys_info }} </p>\
                                        </td>\
                                        </tr>\
                                        </table>\
                                        </div><!--content -->\
                                        </div><!--info-->\
                                        </div><!--profile -->\
                    <div style="position: absolute; top: {{small_screen?50:130}}px; bottom: 0px; left: 0px; right: 0px;">\
                    <div ng-if="innerpage==\'chats\' || innerpage==\'\'" chat></div>\
                    <div ng-if="innerpage==\'automatic_backups\'">automatic_backups</div>\
                    <div ng-if="innerpage==\'notifications\'" notifications></div>\
                    </div>\
                    </div><!--fragment-->\
                    ';

    var link_ = function($scope){

        $scope.small_screen = $rootScope.small_screen;
        $scope.switch_page = $rootScope.switch_page;
        $scope.selected_peer = {};

        $scope.innerpage = "";

         $scope.more_options = function(){
                    var options = [];

                    options.push({ id: "chats", text: $translate.instant("_chats"), bold: true });
                    options.push({ id: "notifications", text: $translate.instant("_notifications"), bold: true });
                    options.push({ id: "automatic_backups", text: $translate.instant("_automatic_backups"), bold: true });


                    iosActionSheet(options).then(function (d) {
                                                    $scope.innerpage =  d.button.id;
                                                 }, function () {
                                                 //rejected
                                                 });


         }

        $scope.$on('chat_peer_changed', function (event, peer_id) {
              $scope.selected_peer = FeemPeers.peerid_to_peer(peer_id);
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
