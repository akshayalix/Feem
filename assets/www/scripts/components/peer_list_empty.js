airsend_app
.directive('peerListEmpty', ['FeemDevice', '$timeout', '$translate', function(FeemDevice, $timeout, $translate){

    var template_ = '\
    <div>\
        <table cellspacing="0px" style="width: 100%; max-height: 100%; min-height: 400px;">\
           <tr>\
             <td class="divider-color">\
               <center>\
                <img  class="shadow" style="margin-top:10px;" width=200px" src="images/waiting.jpg">\
                <h1 style="  font-weight: normal;font-size: 36px;    word-break: break-word; overflow-wrap: break-word; word-wrap: break-word;" class="primary-text-color">{{"_waiting_for_other_devices" | translate}}<br></h1>\
               </center>\
<div style="line-height: 20px; font-size: 14px; width: 90%; padding-left: 5%; ">\
<p translate>LANG_WITH_FEEM_YOU_CAN_SHARE_AN_UNLIMITED_NUMBER_OF_FILES</p>\
<p translate>LANG_FOLLOW_THE_INSTRUCTIONS_BELOW</p>\
<p>&nbsp;</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;" >{{\'LANG_NO_PEERS_INSTRUCTION1\' | translate}} <small><a href="http:www.feem.io">www.feem.io</a></small></p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;" translate>LANG_NO_PEERS_INSTRUCTION2</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;" ng-if="!device.ssid" translate>LANG_NO_PEERS_INSTRUCTION3A</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;"  ng-if="device.ssid" translate>LANG_NO_PEERS_INSTRUCTION3B</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px; font-weight: bold; text-decoration: underline;" ng-if="device.ssid">{{device.ssid}}</p>\
<p style="border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;" translate>LANG_NO_PEERS_INSTRUCTION4</p>\
<p style="border-bottom: 1px solid #cdcdcd; border-top: 1px solid #cdcdcd; padding-top: 10px; padding-bottom: 10px;" translate>LANG_NO_PEERS_INSTRUCTION5</p>\
</div>\
               <br>\
                <br>\
             </td>\
           </tr>\
         </table>\
    </div>';

    var link_ = function($scope){
          $scope.device = FeemDevice.get();

                    $scope.$on('device_updated_2', function (event, data) {
                        $scope.device = data;

          });

    };



    return {
        restrict: 'EA',
        replace: true,
        scope: {},
        link: function ($scope) {

            $translate('LANG_WITH_FEEM_YOU_CAN_SHARE_AN_UNLIMITED_NUMBER_OF_FILES').then(function(t1){
                link_($scope);
            }, function(translation_id){

            });

        },
        template: template_
    }

}])
