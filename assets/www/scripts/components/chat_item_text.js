airsend_app
.filter('nl2br', function() {
  return function(input) {
    input = input || '';
    var out = "";
    out = "*<br>"+ input;
    return out;
  };
})
.directive('chatItemText', ['FeemPeers', '$rootScope', '$compile', 'FeemBridge', 'FeemOptionsBox', '$timeout', 'toaster', '$translate', function(FeemPeers, $rootScope, $compile, FeemBridge, FeemOptionsBox, $timeout, toaster, $translate){

    var template_ = '<div  style="padding: 10px; background-color: white; border: 1px solid #eee; border-radius: 10px; display: inline-block;">\
<div style="white-space: pre-wrap; text-align: initial;" ng-bind-html="chat.data | linky"></div>\
<div ng-click="copy_text($event);" style="cursor: pointer; color: #ccc;font-size: 12px;" translate>LANG_COPY</div>\
</div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: false,
        link: function ($scope) {

            $scope.chat.show_options = false;

            $scope.copy_text = function(){

                FeemBridge.request("/copy_to_clipboard", {
                    "text": $scope.chat.data
                     }, function(response) {

                            $timeout(function(){
                             toaster.pop({
                                                                     type: "success",
                                                                     title: $translate.instant('LANG_TEXT_COPIED_TO_CLIPBOARD'),
                                                                     body: $scope.chat.data,
                                                                     timeout: -1
                                                     });
                            }, 0);

                });
            };


        },
        template: template_
    }

}])
