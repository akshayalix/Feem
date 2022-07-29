airsend_app

.directive('feemStore', ['FeemDevice', '$state', '$rootScope', 'FeemBridge', function(FeemDevice, $state, $rootScope, FeemBridge){
                    

                         var template_ = '\
                         <div>\
                            <table style="table-layout: fixed; height: 100%; width: 100%;">\
                                <tr>\
                                    <td style="height: 130px">\
                                        <div panel-generic-header title="Feem iOS Store"></div>\
                                    </td>\
                                </tr>\
                                <tr style="">\
                                    <td valign="top" style="overflow: auto; position: relative;" >\
                                        <div style="position:absolute; left: 0px; right: 0px; bottom: 0px; top: 0px;">\
                                            <div style="position: relative;" class="row">\
                                                <div ng-if="products.length == 0" class="col-md-12">loading the Feem Store ... You need to be connected to the Internet.</div>\
                                                <div ng-if="products.length > 0" class="col-md-12">\
                                                    <p style="margin-bottom: 5px; padding-bottom: 5px; border-bottom: 1px solid #eee;">You can restore your old purchases by clicking <a href ng-click="restore_purchases_async()">here</a></p>\
                                                    <form ng-submit="submit();">\
                                                    <button type="submit" class="btn btn-success">Buy {{selected_product.price}}</button>\
                         <br><br>\
                                                         <div class="list-group">\
                                                            <a href class="list-group-item {{product.id == selected_product.id?\'active\':\'\'}}" ng-repeat = "product in products" ng-click="select_product(product)">\
                                                                <h4 class="list-group-item-heading">{{product.title}} <span class="badge">{{product.price}}</span></h4>\
                                                                <p class="list-group-item-text">{{product.description}}</p>\
                                                                </a>\
                                                         </div>\
                                                    <button type="submit" class="btn btn-success">Buy {{selected_product.price}}</button>\
                                                    </form>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </td>\
                                </tr>\
                            </table>\
                         </div>';
                         
                         return {
                         restrict: 'EA',
                         replace: true,
                         scope: {
                         
                         },
                         link: function ($scope) {
                         
                         $scope.form = {};
                         $scope.selected_product = {};
                         $scope.products = [];
                         
                         
                         $scope.update_products = function() {
                            FeemBridge.request('/request_products_async', {}, function(data) {});
                         }
                         
                         $scope.restore_purchases_async = function() {
                         FeemBridge.request('/restore_purchases_async', {}, function() {
                                            $state.go("/peers");
                                            
                                            });
                         return;
                         }
                         
                         $scope.submit = function(product) {
                         
                         
                         
                         FeemBridge.request('/buy_product_async', {
                                            id: $scope.selected_product.id
                                            }, function() {
                                            toaster.pop({
                                                        type: "info",
                                                        title: "Form submitted.",
                                                        body: "Transaction in progress.",
                                                        timeout: 10000
                                                        });
                                            $state.go("/peers");
                                            
                                            });
                         
                         
                         
                         }
                         
                         $scope.select_product = function(product) {
                         $scope.selected_product = product;
                         }
                         
                         $scope.$on("products_updated", function(event, data) {
                                    $scope.$evalAsync(function() {
                                                      $scope.products = data.products;
                                                      $scope.selected_product = data.products[0];
                                                      
                                                      });
                                    
                                    });
                         
                         $scope.update_products();
                         
                         
                         },
                         template: template_
                         }
                         
                         }])



.directive('proAccountInfo', ['FeemBridge', function(FeemBridge){
    var template_ = '\
    <div class="setting">\
        <ul class="list-group">\
            <li class="list-group-item"><h2>{{"_account" | translate}}: <small>{{device.account.email}}</small></h2></li>\
            <li class="list-group-item"><h2>{{"_license" | translate}}: <small>{{device.account.license_name | translate}}</small></h2></li>\
            <li class="list-group-item" ng-if="device.account.date_license_expires>0"><h2>{{"_expires" | translate}}: <small>{{device.account.date_license_expires | date:"yyyy-MM-dd"}}</small></h2></li>\
            <li class="list-group-item"><h2><a ng-click="logout();" href>{{"_logout" | translate}}</a></h2></li>\
            <li ng-if="device.account.license_name==\'free\'" class="list-group-item"><h2><a href ng-click="get_feem_pro();" >{{"_get_feem_pro" | translate}}</a></h2></li>\
        </ul>\
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

.directive('proAccountAskCode', ['$http', 'airsend_config', 'toaster', 'FeemBridge', '$rootScope', function($http, airsend_config, toaster, FeemBridge, $rootScope){
    var template_ = '<div>\
<div class="alert alert-success" role="alert">An email has been sent to your account.</div>\
<form novalidate ng-submit="submit();">\
<fieldset ng-disabled="is_processing">\
  <div class="form-group  {{form.errors.email.length>0?\'has-error\':\'\'}}">\
    <label for="email">{{\'_email\' | translate}}</label>\
    <input type="email" readonly required ng-model="form.email" class="form-control"  placeholder="jane.doe@example.com">\
      <ul class="text-danger"><li  ng-repeat="error in form.errors.email" class="">{{error}}</li></ul>\
  </div>\
  <div class="form-group  {{form.errors.access_code.length>0?\'has-error\':\'\'}}">\
    <label for="accesscode">{{\'_access_code\' | translate}}</label>\
<span  id="helpBlock" class="help-block">{{\'_access_code_instructions\' | translate }}</span>\
    <input type="text"  required ng-model="form.access_code" class="form-control" placeholder-attr="xyz123">\
      <ul highlighter="form.errors.access_code" class="text-danger"><li  ng-repeat="error in form.errors.access_code" class="">{{error}}</li></ul>\
  </div>\
  <div class="form-group">\
  <button ng-if="!is_processing" type="submit" class="btn btn-default">{{\'_verify\' | translate}}</button>\
<img ng-if="is_processing" style="height: 50px;" src="images/loading.gif" alt="loading...">\
  </div>\
</fieldset>\
</form>\
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


//                toaster.pop({
//                                type: "info",
//                                title: "Email Verified",
//                                body: "Recovering Account Information...",
//                                timeout: 3000
//                            });


                var params2 = {"email": $scope.form.email, "access_token": data.access_token};


                $http.post(airsend_config.api_endpoint+"/account_summary", params2, {headers: {'Content-Type': 'text/plain'}})
                .success(function(data, status) {
                    $scope.is_processing = false;

//                            toaster.pop({
//                                    type: "success",
//                                    title: "Email Verified",
//                                    body: "Account Information Retrieved",
//                                    timeout: 3000
//                                });



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

                 $scope.form.errors.email = ['no internet'];


//                 toaster.pop({
//                                 type: "error",
//                                 title: "no_internet",
//                                 body: "You are probably disconnected from the Internet",
//                                 timeout: 3000
//                             });
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

.directive('proAccountAskEmail', ['$http', 'airsend_config',  '$translate', function($http, airsend_config, $translate){
    var template_ = '<div>\
    <div ng-if="!device.account.license_name" class="setting" style="cursor:pointer;  padding: 10px;" ng-click="get_feem_pro();">\
        <p class="lead" translate>LANG_UNLOCK_MORE_FEATURES</p>\
        <button style="margin-bottom: 10px; background-color: {{theme.primary_color}};" class="btn btn-primary" href ng-click="get_feem_pro();" translate>LANG_GET_FEEM_PRO</button> \
    </div>\
<div style="height: 1px; margin-top: 10px; margin-bottom: 10px; background-color: #eee;"></div>\
<form novalidate ng-submit="submit();" style="padding:10px;">\
  <div class="form-group  {{form.errors.email.length>0?\'has-error\':\'\'}}">\
    <div><p class="lead" translate>LANG_HAVE_YOU_ALREADY_PURCHASED_FEEM_PRO</p></div>\
    <p class="help-block">{{\'_enter_your_email_instructions\' | translate}}</p>\
    <label for="email">{{\'_email\' | translate}}</label>\
    <input type="email" required ng-model="form.email" class="form-control" id="email" placeholder="jane.doe@example.com">\
  </div>\
  <div class="form-group">\
    <button ng-if="!is_processing" type="submit" class="btn btn-default">{{\'_verify_email\' | translate}}</button>\
    <img ng-if="is_processing" style="height: 50px;" src="images/loading.gif" alt="loading...">\
     <ul highlighter="form.errors.email" class="text-danger"><li  ng-repeat="error in form.errors.email" class="">{{error}}</li></ul>\
  </div>\
</form>\
</div>';

    var link_ = function($scope){
        $scope.form.email = "";
        $scope.is_processing = false;


        $scope.submit = function(){

            var params = {"email": $scope.form.email};
            $scope.form.errors = {};
            $scope.is_processing = true;
            $http.post(airsend_config.api_endpoint+"/access_code", params, {headers: {'Content-Type': 'text/plain'}})
            .success(function(data, status) {
                $scope.is_processing = false;

//                toaster.pop({
//                                type: "success",
//                                title: "email sent",
//                                body: "check the code we sent to your email",
//                                timeout: 3000
//                            });
                      $scope.form.step = 2;

                    })
             .error(function(data, status) {
                 $scope.is_processing = false;

                 if(status == 422){
                    $scope.form.errors = data.errors;
                     return;
                 }
                 $scope.form.errors.email = ['no internet'];
                 //alert("no internet");
//                 toaster.pop({
//                                 type: "error",
//                                 title: $translate.instant("_no_internet"),
//                                 body: $translate.instant("_you_are_disconnected"),
//                                 timeout: 3000
//                             });
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
.directive('account2', ['FeemDevice', 'FeemBridge', '$rootScope', '$state', 'theme', function(FeemDevice, FeemBridge, $rootScope, $state, theme){
    var template_ = '<div>\
<div ng-if="form.step == 1 && !device.account.email" pro-account-ask-email></div>\
<div ng-if="form.step == 2  && !device.account.email" pro-account-ask-code></div>\
<div ng-if="device.account.email" pro-account-info></div>\
</div>';

    var link_ = function($scope){

        $scope.theme = theme.default;

        $scope.form = {};
        $scope.form.step = 1;

        if(!$scope.account){
            $scope.account = {};
        }

        $scope.get_feem_pro = function(){
            if($scope.device.os == "ios"){
                $state.go("/feemstore");
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


        $scope.device = FeemDevice.get();

        $scope.$on('device_updated_2', function (event, data) {
            $scope.device = angular.extend($scope.device, data);
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



.directive('accountIos', ['FeemDevice' , 'FeemBridge', '$rootScope', '$state', function(FeemDevice, FeemBridge, $rootScope, $state){
                          var template_ = '<div>\
                          <div ng-if="!device.account.license_name" class="setting" ng-click="get_feem_pro();">Unlock More Features. <br><a href ng-click="get_feem_pro();">Visit the Feem Store for iOS.</a>  </div>\
                          <div ng-if="device.account.license_name" account-info-ios></div>\
                          </div>\
                          ';
                          
                          var link_ = function($scope){
                              $scope.get_feem_pro = function(){
                                  $state.go('/feemstore');
                                  return;
                              }
                              
                              $scope.restore_purchases_async = function(){
                                  FeemBridge.request('/restore_purchases_async', {}, function(){
                                                     $state.go('/peers');;
                                                     
                                                     });
                                  return;
                              }
                              
                              $scope.device = FeemDevice.get();

                              $scope.$on('device_updated_2', function (event, data) {
                                  $scope.device = angular.extend($scope.device, data);

                              });

                          
                          }
                          return {
                          template: template_,
                          link: link_
                          }
                          
                          }])


.directive('feemProSettings', ['$state', 'theme', '$rootScope', 'FeemDevice', '$timeout', function($state, theme, $rootScope, FeemDevice, $timeout){



    var template_ = '\
    <div>\
        <table style="table-layout: fixed; height: 100%; width: 100%; position: absolute;">\
            <tr>\
                <td class="hidden-xs" style="height: 130px">\
                    <div panel-generic-header title="LANG_FEEM_PRO"></div>\
                </td>\
                <td class="visible-xs" style="height: 60px">\
                    <div panel-generic-header title="LANG_FEEM_PRO"></div>\
                </td>\
            </tr>\
            <tr style="">\
                <td valign="top" style="position: relative; background-color: white;" >\
                        <div style="position: relative;">\
                             <div style="padding: 10px; background-color: white; ">\
                                 <div ng-if="device.os != \'ios\'" account2></div>\
                                 <div ng-if="device.os == \'ios\'" account-ios></div>\
                            </div>\
                        </div>\
                </td>\
            </tr>\
        </table>\
    </div>';
    
 

    return {
        restrict: 'A',
        replace: true,
        template: template_,
        scope: {},
        link: function($scope){
            $scope.theme = theme.default;


            $scope.device = FeemDevice.get();

            $scope.$on('device_updated_2', function (event, data) {

                $timeout(function(){
                        $scope.device =  data;

                },0);



            });



        }
        }

}])
