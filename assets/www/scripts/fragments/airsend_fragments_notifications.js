airsend_app
.directive('notifications', ['FeemBridge', '$timeout', '$window', '$rootScope', 'FeemPeers', 'FeemUtils', '$filter', 'airsend_config', 'iosActionSheet', 'FeemDevice', '$anchorScroll', '$translate', function(FeemBridge, $timeout, $window, $rootScope, FeemPeers, FeemUtils, $filter, airsend_config, iosActionSheet, FeemDevice, $anchorScroll, $translate) {
                    var template_ = '<div style="position:relative; width: 100%; height: 100%;">\
                        <table border="0px" bordercolor="#333" class="dark-primary-color1 devicesection" style="table-layout:fixed; border-collapse: collapse;  border-bottom: 1px solid black; height:50px; position: absolute; top: 0px; left: 0px; width: 100%;"><tr>\
                            <td style="border-right: 1px solid #ccc;"><center><span style="">notifications</span><sup ng-if="true"><small><a style="text-decoration:none; margin-left: 5px;" href>?</small></a></sup></center></td>\
                        </tr></table>\
                        <div style="" class="chatspace2 overthrow">\
                            <div>\
                               <div class="setting">\
                                    <p>Automatically Send Notifications To <u>{{selected_peer.alias}}</u></p>\
                                    <p style="margin-top: 5px;"><strong>Off</strong></p>\
                               </div>\
                               <div class="setting">\
                                   <p>Automatically Receive Notifications From <u>{{selected_peer.alias}}</u></p>\
                                   <p style="margin-top: 5px;"><strong>Off</strong></p>\
                                </div>\
                            </div>\
                        </div>\
                    </div>\
                    ';

    var link_ = function($scope){
            $scope.selected_peer = FeemPeers.peerid_to_peer($rootScope.selected_peer);
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
