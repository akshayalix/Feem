airsend_app

.directive('chatItemSingleFileGeneric', ['FeemPeers', '$rootScope', '$compile', 'FeemBridge', '$timeout','FeemUtils', function(FeemPeers, $rootScope, $compile, FeemBridge, $timeout, FeemUtils){

    var template_ = '<div>\
    <div style="padding: 10px; background-color: white; border: 1px solid #eee; border-radius: 10px; display: inline-block; text-align: left;">\
    <table>\
        <tr>\
            <td rowspan="2" style="position:relative; width: 75px; text-align: center;">\
                <img style="width: 30px; position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); " ng-src="images/fileicons/{{file_extension}}.png">\
            </td>\
            <td style="word-break: break-all;">{{file.filename}}</td>\
        </tr>\
        <tr>\
            <td style="color: #aaa;"><count-up time=3000 steps = 100 decimals=3 ng-model="file.percentage"></count-up>% / {{file.filesize | bytes}}</td>\
        </tr>\
    </table>\
    </div>\
    <div class="progress">\
      <div class="progress-bar {{file.percentage == 100 ? \'progress-bar-success\':\'\'}}" role="progressbar" aria-valuenow="{{file.percentage}}" aria-valuemin="0" aria-valuemax="100" style="width: {{file.percentage}}%">\
        <span class="sr-only">% Complete</span>\
      </div>\
    </div>\
</div>\
';



    return {
        restrict: 'EA',
        replace: true,
        scope: false,
        link: function ($scope) {
            $scope.file_extension = FeemUtils.get_file_extension($scope.file.filename);

            if(['mp3', 'ogg'].indexOf($scope.file_extension) != -1){
                $scope.file_extension = 'audio';
            }
            else if(['mp4', 'avi', 'divx', 'flv','mkv', 'mov'].indexOf($scope.file_extension) != -1){
                $scope.file_extension = 'video';
            }
            else if(['zip', 'rar', 'gz', 'bz2'].indexOf($scope.file_extension) != -1){
                $scope.file_extension = 'compressed';
            }
            else if(['pdf'].indexOf($scope.file_extension) != -1){
                $scope.file_extension = 'pdf';
            }
            else{
                $scope.file_extension = 'unknown';
            }





        },
        template: template_
    }

}])
