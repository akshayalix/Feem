
airsend_app

.service('FeemNews', ['$http', 'airsend_config', '$timeout', function($http, airsend_config, $timeout){

        this.news = {};
        this.news.country = "cameroon";



        this.news.category = "";
        this.news.categories = [];

        this.news.sub_category = "";
        this.news.sub_categories = [];

        var that = this;


        this.news.items = [];

    this.update = function($scope){

        if($scope.news && $scope.news.sub_categories){
            that.news.sub_categories = $scope.news.sub_categories;
        }

        if(that.news.sub_category == ""){
            if(that.news.sub_categories.length > 0){
                that.news.sub_category = this.news.sub_categories[0];
            }
        }

        //alert(that.news.sub_category);

        var params = JSON.stringify({
                                        "sub_category": that.news.sub_category,
                                        "country": that.news.country ,
                                        "category": that.news.category
                                    });


        $http.post(airsend_config.api_endpoint+"/news", params, {headers: {'Content-Type': 'text/plain'}})
        .success(function(data, status) {
                  //console.log(JSON.stringify(data));
                    that.news.categories = data.categories;
                    that.news.sub_categories = data.sub_categories;
                    that.news.items = data.listings;
                    $timeout(function(){
                        $scope.news = that.news;
                    },0);

                })
         .error(function(data, status) {
              //$scope.error = data.error_message;
         });


        //$scope.news = this.news;
    }

}])


.directive('newsItem', function(){
    var template_ = '\
                    <div style="width="100%">\
                   <div  ng-click="open_listing(news_item.href)" style="font-weight:bold; font-size: 16px; margin-top: 5px; margin-bottom: 5px;">{{news_item.title}}</div>\
                    <div  ng-click="open_listing(news_item.href)" class="shadow" style="margin-top: 10px; margin-bottom: 10px;width: 200px; height:200px; background-image: url({{news_item.img}}); background-size:contain; background-position: center center; background-repeat: no-repeat;"></div>\
                   <div ng-bind-html = "news_item.text | htmlToPlaintext | words: 30"></div>\
                    </div>\
 ';

     return {
       restrict: 'A',
       replace: true,
       template: template_,
     }

 })



.directive('newsItems', ['FeemNews', '$window', function(FeemNews, $window){
    var template_ = '\
                    <div class="fragment">\
                    <div class="profile default-primary-color">\
       <div ng-click="refresh()" class="button accent-color" style="cursor: pointer;position: absolute; right: 20px; top: 100px; z-index: 20;">\
         <img width="40px" src="images/icons/refresh.png"></img>\
       </div>\
                    <div class="info">\
                    <div class="content">\
                    <table>\
                    <tr>\
                    <td style="border-width: 0px;">\
                    <div ng-if="small_screen" ng-click=\'switch_page("home")\' class="button accent-color" style="z-index:5;position: relative;">\
                    <img src="images/icons/arrowlefta.png" width="50px" style="position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);-webkit-transform: translate(-50%, -50%);">\
                    </div>\
                    <div ng-if="!small_screen"  class="text-primary-color" style="font-size: 50px; z-index:5;">\
                    <img src="images/icons/arrowrighta.png" width="50px" />\
                    </div>\
                    </td>\
                    <td style="border-width: 0px;">\
                    <h1>{{news.category}}</h1>\
                    <h2> <select ng-model="news.sub_category" style="display:inline-block; height:28px; line-height:28px; padding: 5px; border: 1px solid #eee;">\
                        <option value="{{sub_category}}" style="font-size:16px; height: 50px;" ng-repeat= "sub_category in news.sub_categories">{{sub_category}}</option>\
                   </select>\
                    </h2>\
                    </td>\
                    </tr>\
                    </table>\
                    </div>\
                    </div>\
                    </div>\
                    <div id="news" class="chatspace" style="bottom:0px;">\
                    <div style="padding: 10px; border-bottom: 1px solid #eee;" ng-repeat="news_item in news.items track by news_item.id">\
                        <div id="{{news_item.id}}" style="width:100%;max-width: 100%;">\
                        <a name="chat_anchor_{{news_item.id}}"></a>\
                            <table cellspacing="0px" style="width:100%;border: 0px; table-layout:fixed;">\
                            <tr>\
                            <td rowspan=2 valign="top" width="75px" style="border-bottom-width: 0px;border-bottom-style: none; "><ng-letter-avatar height="50" width="50" style="margin: 5px;" charCount="2" avatarborder=true shape="round" data="{{ news_item.site }}"></ng-letter-avatar></td>\
                            <td style="border-bottom-width: 0px;border-bottom-style: none; overflow:auto"><span style="word-break:break-all;word-wrap: break-word;font-size: 16px; font-weight: normal; " class="primary-text-color">{{ news_item.site }}</span><span style="font-size: 12px" class="secondary-text-color"> {{chat.date_created | date:"HH:mm"}} </span>\
                             </td>\
                            </tr>\
                            <tr>\
                            <td valign="top">\
                            <div news-item></div>\
                            </td>\
                            </tr>\
                            </table>\
                        <\div>\
                    </div>\
                    </div>\
                    </div>\
 ';

     return {
       restrict: 'A',
       replace: true,
       template: template_,
        link: function($scope){
            FeemNews.update($scope);

            $scope.$watch("news.sub_category", function(new_value){
                   FeemNews.update($scope);
            });

            $scope.open_listing = function(href){
                $window.open(href);
            }

            $scope.refresh = function(){
                FeemNews.update($scope);

            }



        }
     }

 }])


.directive('newsCategories', function(){
   var template_ = '\
<table width="100%">\
<tr ng-repeat="category in news.categories">\
    <td ng-click="update_selection(category);" height="50px" style="padding: 10px; border-bottom: 1px solid #eee;">{{category}}</td>\
</tr>\
</table>\
';

    return {
      restrict: 'A',
      replace: true,
      template: template_,
    }

})


.directive('news',  ['FeemBridge', 'FeemPeers', '$rootScope', '$timeout', 'FeemDevice', 'FeemNews', function(FeemBridge, FeemPeers, $rootScope, $timeout, FeemDevice, FeemNews){

    var template_ = '\
    <div class="fragment">\
       <div profile> </div>\
       <div class="users" style="">\
          <table style="width:100%;   overflow: auto; " >\
           <tr>\
            <td style=" border-bottom: 1px solid;"><table width="100%"><tr>\
            <td style="padding-left:10px;height:50px;" class="devicesection divider-color current">Around Me</td>\
            <td style=" border-left: 1px solid;">Contacts</td>\
            </tr></table></td>\
            </tr>\
        <tr><td style="height: 100%; width: 100%;">\
        <table news-categories> </table>\
        </td> </tr>\
          </table>\
       </div>\
       <div ng-click="goto_settings();" class="button accent-color" style="cursor: pointer;position: absolute; right: 10px; top: 100px;">\
         <img width="40px" src="images/icons/settings.png"></img>\
       </div>\
       <div ng-if="device.os==\'ios\'" ng-click="open_file_browser(\'\');" class="button accent-color" style="cursor: pointer;position: absolute; right: 10px; top: 10px;">\
         <img width="40px" src="images/icons/folder.png"></img>\
       </div>\
     </div>\
    ';
    return {
      restrict: 'A',
      replace: true,
      template: template_,
        scope: {},
        link: function($scope){


            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {
                $scope.device = angular.extend($scope.device, data);

            });


            FeemNews.update($scope);


            $scope.update_selection = function(category_id){
                 if(!category_id){
                     return;
                 }

                 FeemNews.news.category = category_id;
                 FeemNews.news.sub_category = "all";
                 $rootScope.page = "news_items";

                 FeemNews.update($scope);




//                 console.log("before selection");


//                angular.forEach($scope.data_peers , function(peer){

//                    if(peer.id == peer_id){

//                        peer.selected = true;
//                        peer.unread = 0;

//                        FeemBridge.request("/clear_unread", {id: peer.id}, function(response){

//                        });

//                    }else{

//                        peer.selected = false;
//                    }
//                });

//                 console.log("after selection");

            };


        }
      }
}]);


