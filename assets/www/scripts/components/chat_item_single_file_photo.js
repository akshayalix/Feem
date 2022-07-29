airsend_app

.directive('chatItemSingleFilePhoto', ['FeemPeers', '$rootScope', '$compile', 'FeemBridge', function(FeemPeers, $rootScope, $compile, FeemBridge){

    var template_ = '<div style="width: 150px; max-width: 80%; display:inline-block;">\
<img style="margin-bottom: 5px;" class="img-responsive img-thumbnail" ng-src="{{file.thumbnail}}"></img>\
<div class="progress">\
  <div class="progress-bar {{file.percentage == 100 ? \'progress-bar-success\':\'\'}}" role="progressbar" aria-valuenow="{{file.percentage}}" aria-valuemin="0" aria-valuemax="100" style="width: {{file.percentage}}%">\
    <span class="sr-only">% Complete</span>\
  </div>\
</div>\
</div>';



    return {
        restrict: 'EA',
        replace: true,
        scope: false,
        link: function ($scope) {





        },
        template: template_
    }

}])
