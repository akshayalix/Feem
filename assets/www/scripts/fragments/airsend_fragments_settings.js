airsend_app

.directive('accountAskEmail', ['$http', 'airsend_config', 'toaster', '$translate', function($http, airsend_config, toaster, $translate){
    var template_ = '<div class="setting">\
<p>{{"_your_feem_account" | translate}} <sup><a href ng-click="show_feem_account_help();">{{"_what_is_this" | translate}}</a></sup></p>\
    <form novalidate ng-submit="submit();">\
<input required ng-model="form.email" type="email" placeholder-attr="{{\'_email\' | translate}}"><ul><li ng-repeat = "error in form.errors.email" style="color:red">{{error}}</li></ul>\
<input ng-if="!is_processing" type="submit" value="{{\'_verify_email\' | translate}}">\
<p ng-if="is_processing">{{\'_processing\' | translate}} </p>\
    </form>\
</div>';

    var link_ = function($scope){
        $scope.form.email = "";
        $scope.is_processing = false;

        $scope.show_feem_account_help = function(){

            toaster.pop({
                            type: "info",
                            title: $translate.instant("_about_feem_accounts_title"),
                            body: $translate.instant("_about_feem_accounts_description"),
                            timeout: -1
                        });

        }

        $scope.submit = function(){

            var params = {"email": $scope.form.email};
            $scope.form.errors = {};
            $scope.is_processing = true;
            $http.post(airsend_config.api_endpoint+"/access_code", params, {headers: {'Content-Type': 'text/plain'}})
            .success(function(data, status) {
                $scope.is_processing = false;


                toaster.pop({
                                type: "success",
                                title: "email sent",
                                body: "check the code we sent to your email",
                                timeout: 3000
                            });
                      $scope.form.step = 2;

                      //$scope.setup_pro(JSON.stringify(data), $scope.settings.email);
                    })
             .error(function(data, status) {
                 $scope.is_processing = false;

                 if(status == 422){
                    $scope.form.errors = data.errors;
                     return;
                 }
                 toaster.pop({
                                 type: "error",
                                 title: $translate.instant("_no_internet"),
                                 body: $translate.instant("_you_are_disconnected"),
                                 timeout: 3000
                             });
                  //$scope.error = data.error_message;
             });

        }
    }

    return {
        template: template_,
        replace: true,
        restrict: 'A',
        scope: false,
        link: function($scope){
            link_($scope);
        }
    }
}])
.directive('accountAskCode', ['$http', 'airsend_config', 'toaster', 'FeemBridge', '$rootScope', function($http, airsend_config, toaster, FeemBridge, $rootScope){
    var template_ = '<div class="setting">\
<p>{{"_access_code" | translate}}</p>\
<p  class="secondary-text-color" style="font-size: 12px">{{"_access_code_instructions" | translate}}</p>\
    <form ng-submit="submit();">\
<input readonly required ng-model="form.email" type="email" placeholder="{{\'_email\' | translate}}"><ul><li ng-repeat = "error in form.errors.email" style="color:red">{{error}}</li></ul>\
<input required ng-model="form.access_code" type="text" placeholder="{{\'_access_code\' | translate}}"><ul><li ng-repeat = "error in form.errors.access_code" style="color:red">{{error}}</li></ul>\
<input ng-if="!is_processing" type="submit" value="{{\'_verify\' | translate}}">\
<p ng-if="is_processing">{{\'_processing\' | translate}} </p>\
    </form>\
</div>';

    var link_ = function($scope){
        $scope.form.access_code = "";
        $scope.is_processing = false;

        $scope.submit = function(){
            $scope.is_processing = true;

             $scope.form.errors = {};

            var params = {"email": $scope.form.email, "access_code": $scope.form.access_code};

            $http.post(airsend_config.api_endpoint+"/access_token", params, {headers: {'Content-Type': 'text/plain'}})
            .success(function(data, status) {



                toaster.pop({
                                type: "info",
                                title: "Email Verified",
                                body: "Recovering Account Information...",
                                timeout: 3000
                            });


                var params2 = {"email": $scope.form.email, "access_token": data.access_token};




                $http.post(airsend_config.api_endpoint+"/account_summary", params2, {headers: {'Content-Type': 'text/plain'}})
                .success(function(data, status) {
                    $scope.is_processing = false;

                            toaster.pop({
                                    type: "success",
                                    title: "Email Verified",
                                    body: "Account Information Retrieved",
                                    timeout: 3000
                                });



                        $scope.account = data.account_summary;
                        $scope.account.email = params2.email;
                        $scope.account.access_token = params2.access_token;



                    FeemBridge.request("/setup_account", $scope.account, function(reply){


                    });

                    $scope.form.email = "";
                    $scope.form.access_code = "";
                                $scope.form.step = -1;
                        })
                 .error(function(data, status) {
                     $scope.is_processing = false;

                        alert(JSON.stringify(data));
                      });

                    })
             .error(function(data, status) {
                 $scope.is_processing = false;

                 if(status == 422){
                    $scope.form.errors = data.errors;
                     return;
                 }
                 toaster.pop({
                                 type: "error",
                                 title: "no_internet",
                                 body: "You are probably disconnected from the Internet",
                                 timeout: 3000
                             });
             });

        }
    }

    return {
        template: template_,
        replace: true,
        restrict: 'A',
        scope: false,
        link: function($scope){
            link_($scope);
        }
    }
}])

.directive('accountInfo', ['FeemBridge', function(FeemBridge){
    var template_ = '\
       <div class="setting"> {{"_account" | translate}}: <strong>{{device.account.email}}</strong><br>{{"_license" | translate}}: <strong>{{device.account.license_name}}</strong><br><span ng-if="device.account.date_license_expires>0">{{"_expires" | translate}}: <strong> {{device.account.date_license_expires | date:"yyyy-MM-dd"}}</strong></span>\
<div><a  ng-click="logout();" href>{{"_logout" | translate}}</a> <a style="margin-left:10px;" ng-if="device.account.license_name==\'free\'" href ng-click="get_feem_pro();" >{{"_get_feem_pro" | translate}}</a> </div>\
</div>\
';
    var link_ = function($scope){


    };

    return {
        template: template_,
        replace: true,
        restrict: 'A',
        scope: false,
        link: function($scope){
            link_($scope);
        }
    };


}])

.directive('accountInfoIos', ['FeemBridge', function(FeemBridge){
                           var template_ = '\
                           <div class="setting"> {{"_license" | translate}}: <strong>{{device.account.license_name}}</strong><br><span ng-if="device.account.date_license_expires>0">{{"_expires" | translate}}: <strong> {{device.account.date_license_expires | date:"yyyy-MM-dd"}}</strong></span>\
                           <div><a  ng-click="logout();" href>{{"_logout" | translate}}</a> | <a ng-if="device.account.license_name!=\'free\'" href ng-click="get_feem_pro();">Extend Feem Pro</a>  </div>\
                           </div>\
                           ';
                           var link_ = function($scope){
                              $scope.logout = function(){
                              
                              $scope.device.account = {};
                              FeemBridge.request('/logout', {}, function(){
                                                 });
                              }
                           
                           };
                           
                           return {
                           template: template_,
                           replace: true,
                           restrict: 'A',
                           scope: false,
                           link: function($scope){
                           link_($scope);
                           }
                           };
                           
                           
                           }])




.directive('accountIos', ['FeemDevice' , 'FeemBridge', '$rootScope', function(FeemDevice, FeemBridge, $rootScope){
    var template_ = '<div>\
<div ng-if="!device.account.license_name" class="setting" ng-click="get_feem_pro();">Unlock More Features. <br><a href ng-click="get_feem_pro();">Visit the Feem Store for iOS.</a>  </div>\
<div ng-if="device.account.license_name" account-info-ios></div>\
                          </div>\
                          ';
                          
                          var link_ = function($scope){
                              $scope.get_feem_pro = function(){
                                $rootScope.page = 'store';
                              return;
                              }
                          
                          $scope.restore_purchases_async = function(){
                          FeemBridge.request('/restore_purchases_async', {}, function(){
                                            $rootScope.page = '';
                                             
                                             });
                          return;
                          }
                          
                          FeemDevice.update($scope);
                          
                          $scope.$on('device_updated', function(event, data){
                                     FeemDevice.update($scope);
                                     
                                     });


                          }
    return {
                          template: template_,
                          link: link_
    }
                          
}])


.directive('account', ['FeemDevice', 'FeemBridge', '$rootScope',  function(FeemDevice, FeemBridge, $rootScope){
    var template_ = '<div>\
<div ng-if="!device.account.license_name" class="setting" ng-click="get_feem_pro();">Unlock More Features. <br><a href ng-click="get_feem_pro();">Get Feem Pro.</a>  </div>\
<div ng-if="form.step == 1 && !device.account.email" account-ask-email></div>\
<div ng-if="form.step == 2  && !device.account.email" account-ask-code></div>\
<div ng-if="device.account.email" account-info></div>\
</div>';

    var link_ = function($scope){

        $scope.form = {};
        $scope.form.step = 1;

        if(!$scope.account){
            $scope.account = {};
        }

        $scope.get_feem_pro = function(){
            if($rootScope.device.os == "ios"){
                $rootScope.page = 'store';
            }else{
                window.location.href = "http://www.feem.io/feem_pro_universal/";
            }

        return;
        }


        $scope.logout = function(){
            $scope.form.email = "";
            $scope.form.access_code = "";

            $scope.form.step = 1;
            $scope.device.account = {};
            FeemBridge.request('/logout', {}, function(){
            });
        }


        FeemDevice.update($scope);

        $scope.$on('device_updated', function(event, data){
            FeemDevice.update($scope);

         });


    }

    return {
        template: template_,
        replace: true,
        restrict: 'A',
        scope: {},
        link: function($scope){
            link_($scope);
        }
    }


}])
.directive('settings', ['FeemBridge', '$http', 'airsend_config', 'FeemDevice', '$rootScope', 'toaster', function(FeemBridge,$http, airsend_config, FeemDevice, $rootScope, toaster){
  var template_ = '\
       <div class="fragment">\
        <div class="profile default-primary-color">\
        <div class="info">\
            <div class="content">\
              <table>\
                <tr>\
                  <td style="border-width: 0px;">\
                    <div ng-if="small_screen" ng-click=\'switch_page("home")\' class="button accent-color" style="z-index:5;position:relative;">\
                      <img src="images/icons/arrowlefta.png" width="50px" style="position: absolute;left: 50%;top: 50%;transform: translate(-50%,-50%);-webkit-transform: translate(-50%, -50%);">\
                    </div>\
                    <div ng-if="!small_screen"  class="text-primary-color" style="z-index:5;">\
                      <img width="50px" src="images/icons/settings.png"></img>\
                    </div>\
                  </td>\
                  <td style="border-width: 0px;">\
                    <h1>{{ "_settings" | translate}}</h1>\
                    <h2></h2>\
                  </td>\
                </tr>\
              </table>\
            </div>\
        </div>\
       </div>\
     <div class="overthrow" style="overflow:  auto; padding-bottom: 100px; position: absolute;left: 0px;top: 130px;right:0px; bottom: 0px;">\
                        <div ng-if="device.os != \'ios\'" account></div>\
                        <div ng-if="device.os == \'ios\'" account-ios></div>\
       <table  class="setting">\
         <tr>\
           <td>{{"_device_alias" | translate}}: </td>\
         </tr>\
         <tr>\
           <td ng-if="!alias_is_editing"><strong>{{device.alias}}</strong></td>\
           <td ng-if="alias_is_editing"><input ng-enter="change_alias()" ng-model="device.alias" type=""></input></td>\
         </tr>\
         <tr>\
           <td ng-if="device.has_pro_feature"> <a href="#"  ng-click="change_alias()" >{{"_change" | translate}} </a> </td>\
           <td ng-if="!device.has_pro_feature" style="color: #D32F2F"> {{"_you_need_a_feem_pro_license_alias" | translate}}. </td>\
         </tr>\
       </table>\
       <table  class="setting" style="cursor:pointer;" ng-click="change_avatar()">\
         <tr>\
           <td><img src="{{device.avatar}}"></td>\
         </tr>\
         <tr>\
           <td ng-if="device.has_pro_feature"> <a href="#"   >{{"_change" | translate}} </a> </td>\
           <td ng-if="!device.has_pro_feature" style="color: #D32F2F"> {{"_you_need_a_feem_pro_license_avatar" | translate}}. </td>\
         </tr>\
       </table>\
       <table ng-if="device.os == \'windows\' || device.os == \'linux\' || device.os == \'mac\' || device.os == \'android\'" class="setting">\
         <tr>\
           <td>{{"_downloads_folder" | translate}} : </td>\
         </tr>\
         <tr>\
           <td ng-if="device.downloads_folder==\'\'"><strong>{{"_automatic" | translate}}</strong></td>\
           <td ng-if="device.downloads_folder!=\'\'"><strong>{{device.downloads_folder}}</strong></td>\
         </tr>\
         <tr>\
           <td ng-if="device.has_pro_feature"> <a href="#"  ng-click="change_downloads_folder()" >{{"_change" | translate}}</a>   <a ng-if="device.downloads_folder!=\'\'" style="margin-left: 10px;" href="#"  ng-click="reset_downloads_folder()" >Reset</a> </td>\
           <td ng-if="!device.has_pro_feature" style="color: #D32F2F"> {{"_you_need_a_feem_pro_license_downloads" | translate}}. </td>\
</tr>\
       </table>\
       <table ng-if="device.os == \'windows\' || device.os == \'mac\'" class="setting" style="cursor:pointer;" ng-click="toggle_run_on_startup();">\
         <tr>\
           <td><img style="width:30px;" src="images/icons/{{device.run_on_startup == \'1\'?\'selected2\':\'unselected\'}}.png"></td><td style="margin-left: 10px">Run On Startup</td>\
         </tr>\
       </table>\
       <table class="setting" style="cursor:pointer;" ng-click="toggle_run_web_share_on_startup();">\
         <tr>\
           <td><img style="width:30px;" src="images/icons/{{device.run_web_share_on_startup == \'1\'?\'selected2\':\'unselected\'}}.png"></td><td style="margin-left: 10px">Run WebShare On Startup</td>\
         </tr>\
       </table>\
       <table ng-if="device.os == \'windows\' || device.os == \'android\'" class="setting" style="cursor:pointer;" ng-click="toggle_run_wifi_direct_on_startup();">\
         <tr>\
           <td><img style="width:30px;" src="images/icons/{{device.run_wifi_direct_on_startup == \'1\'?\'selected2\':\'unselected\'}}.png"></td><td style="margin-left: 10px">Run WiFi Direct On Startup</td>\
         </tr>\
       </table>\
       <table  class="setting">\
         <tr>\
           <td>{{"_app_version" | translate}}: </td><td><div style="word-break:break-all;word-wrap: break-word;font-weight: normal;">{{ device.app_version }}</strong></td>\
         </tr>\
         <tr>\
           <td>{{"_latest_update" | translate}}: </td><td><div style="word-break:break-all;word-wrap: break-word;font-weight: normal; color: {{device.latest_app_version && (device.app_version == device.latest_app_version)? \'green\': \'#D32F2F\'}}; ">{{ device.latest_app_version || \'Unknown\' }}</strong></td>\
         </tr>\
       </table>\
       <table  class="setting">\
         <tr>\
           <td>Email Support: </td><td><b>info@feeperfect.com</b></td>\
         </tr>\
       </table>\
       <table  class="setting">\
         <tr>\
           <td>Made with lots of love <img height="14px" src="images/icons/heart.png"> (and sleepless nights) by <b>FeePerfect</b>, from the beautiful city of Buea, Cameroon <img height="14px" src="images/icons/cameroon.png">.</td>\
         </tr>\
       </table>\
       <table  class="setting">\
         <tr>\
           <td><b>Disclaimer:</b> No devices or Wi-Fi networks were harmed in the making of this software <img height="14px" src="images/icons/laugh.png"></td>\
         </tr>\
       </table>\
       <table  class="setting">\
         <tr>\
           <td><b>Social Responsibility:</b> If you like Feem, please consider buying Feem PRO. Feem PRO is ad free, and with 5% of the cost, you directly support the preservation of the rainforests in Cameroon and their population of endangered Mandrill Apes.</td>\
         </tr>\
       </table>\
<table ng-if="device.os==\'winrt\'" style="table-layout:fixed;"  class="setting">\
            <tr>\
                <td style="word-wrap:break-word; ">\
                    <div>\
                        <div style="padding: 10px; border-bottom: 1px solid #eee;">Folders You Can Access. <a href ng-click="add_accepted_folder();"><br>Add Folder</a></div>\
                        <div style="padding: 10px; border-bottom: 1px solid #eee;overflow-wrap: break-word; word-wrap: break-word; word-break:break-all;" ng-repeat="folder in device.folders"><strong>{{folder.name}}</strong> {{folder.path}}</div>\
                    </div>\
                </td>\
            </tr>\
        </table>\
     </div>\
   </div>\
  ';

  return {
      restrict: 'A',
      replace: true,
      template: template_,
      scope: {},
      controller: function ($scope) {

        $scope.small_screen = $rootScope.small_screen;
        $scope.switch_page = $rootScope.switch_page;

          $scope.device = {};

          $scope.settings = {};

          FeemDevice.update($scope);

          $rootScope.check_updates();

          $scope.error = "";
          $scope.code = "";
            $scope.alias_is_editing = false;


          $scope.change_downloads_folder = function(){
              FeemBridge.change_downloads_folder();
          }

          $scope.change_avatar = function(){
              FeemBridge.change_avatar();
          }

          $scope.reset_downloads_folder = function(){
              FeemBridge.request("/reset_downloads_folder", {}, function(reply){

              });
          }
                      

        $scope.change_alias = function(){
          if($scope.alias_is_editing){
            if($scope.device.alias.length > 1){

              var settings = {};
              settings.alias = $scope.device.alias;

              FeemBridge.request("/new_settings", settings, function(reply){
                if(reply.status == "success"){
                    toaster.pop({
                                    type: "success",
                                    title: "Your new name:",
                                    body: ""+ settings.alias,
                                    timeout: 3000
                                });
                }
              });
            }

          }
          $scope.alias_is_editing = !$scope.alias_is_editing;
        }



          $scope.associate_account_with_email = function(){


              $scope.error = "";
              var params = JSON.stringify({
                                              "email": $scope.settings.email,
                                              "code": $scope.settings.code ,
                                              "device_id": $scope.device.id,
                                              "sys_info": $scope.device.sys_info
                                          });

              $http.post(airsend_config.api_endpoint+"/associate_device_to_email", params, {headers: {'Content-Type': 'text/plain'}})
              .success(function(data, status) {
                        $scope.setup_pro(JSON.stringify(data), $scope.settings.email);
                      })
               .error(function(data, status) {
                    $scope.error = data.error_message;
               });


          }

          $scope.add_accepted_folder = function () {
              FeemBridge.request("/add_accepted_folder", {} , function (reply) {
                 
              });
          }

          $scope.toggle_run_on_startup = function(){
              FeemBridge.request("/toggle_run_on_startup", {} , function (reply) {
                $scope.device.run_on_startup = $scope.device.run_on_startup == '1'?'0':'1';
              });

          }

          $scope.toggle_run_web_share_on_startup = function(){
              FeemBridge.request("/toggle_run_web_share_on_startup", {} , function (reply) {
                $scope.device.run_web_share_on_startup = $scope.device.run_web_share_on_startup == '1'?'0':'1';
              });

          }

          $scope.toggle_run_wifi_direct_on_startup = function(){
              FeemBridge.request("/toggle_run_wifi_direct_on_startup", {} , function (reply) {
                $scope.device.run_wifi_direct_on_startup = $scope.device.run_wifi_direct_on_startup == '1'?'0':'1';
              });

          }


          $scope.resend_code = function(){


              $scope.error = "";
              var params = JSON.stringify({
                                              "email": $scope.settings.email,
                                              "device_id": $scope.device.id,
                                              "sys_info": $scope.device.sys_info
                                          });


              $http.post(airsend_config.api_endpoint+"/send_access_code", params, {headers: {'Content-Type': 'text/plain'}})
              .success(function(data, status) {
                        $scope.error = data.message;
                      })
               .error(function(data, status) {
                    $scope.error = data.error_message;
               });


          }


          $scope.setup_pro = function(access_token, email){
              $scope.device.has_pro_feature = true;
              $scope.email = $scope.settings.email;
              $scope.settings.code = "";


              FeemBridge.request('/setup_pro', {"access_token": access_token, "email": email}, function(){
              });

          }

          $scope.remove_pro = function(){
              $scope.device.has_pro_feature = false;
              $scope.email = "";

              FeemBridge.request('/remove_pro', {}, function(){
              });
          }

          $scope.$on('device_updated', function(event, data){
              //console.log("device_updated");
              FeemDevice.update($scope);

           });
          $scope.$on('latest_app_version', function(event, data){
                        $scope.device.latest_app_version = data.version;

                         });

         
      }
      }

}])
