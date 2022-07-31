airsend_app
.directive('peerThumbnail', ['theme', '$compile', function(theme, $compile){

    var template_ = '\
<div style="position: relative;">\
    <div ng-if="src.length == 0 && text.length > 0" >\
        <div id="avatar">\
            <ng-letter-avatar  height="{{size}}" width="{{size}}" style="position: relative; margin: 5px;" charCount="2" avatarborder="false" avatarcustomborder="0px"  shape="round" data="{{text}}"></ng-letter-avatar>\
        </div>\
        <div os-icon size="{{size/2}}"  border="{{ip==\'\' ? \'#d5d5d5\': theme.accent_color}}" state="{{ip==\'\' ? \'off\': \'on\'}}" sysinfo="{{sysinfo}}"  style="position:absolute; bottom: 2px; left: {{size/2+size/4}}px;">\
        </div>\
    </div>\
    <div ng-if="src.length>0" style="position:relative; height:{{size}}px; width: {{size}}px; background-image: url({{src}}); background-size: cover; background-position: center center; background-repeat: no-repeat; border-radius: 50%; " >\
        <div os-icon size="{{size/2}}" border="{{ip==\'\' ? \'#d5d5d5\': theme.accent_color}}" sysinfo="{{sysinfo}}" style="position:absolute; bottom: 0px; left: {{size/2+size/4}}px;">\
        </div>\
    </div>\
    <div ng-if="src.length==0 && text.length == 0" style="position:relative; height:{{size}}px; width: {{size}}px; background-image: url("images/defaultavatar.png""); background-size: cover; background-position: center center; background-repeat: no-repeat; border-radius: 50%; " >\
        <div os-icon size="{{size/2}}" border="{{ip==\'\' ? \'#d5d5d5\': theme.accent_color}}" sysinfo="{{sysinfo}}" style="position:absolute; bottom: 0px; left: {{size/2+size/4}}px;">\
        </div>\
    </div>\
</div>';

    return {
        restrict: 'EA',
        replace: true,
        scope: {
              src: '@',
              size: '@',
              text: '@',
              sysinfo: '@',
              ip: '@'

        },
        template: template_,
        link: function($scope, $elt){
            $scope.theme = theme.default;


        }
    }

}])
