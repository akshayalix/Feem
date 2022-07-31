airsend_app
.directive('store', ['FeemBridge', '$http', 'airsend_config', 'FeemDevice', '$rootScope', 'toaster', function(FeemBridge,$http, airsend_config, FeemDevice, $rootScope, toaster){
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
                    <h1>Feem Store</h1>\
                    <h2></h2>\
                  </td>\
                </tr>\
              </table>\
            </div>\
        </div>\
       </div>\
     <div style="overflow: auto;position: absolute;left: 0px;top: 130px;right:0px; bottom: 0px;">\
        <table style="table-layout:fixed;"  class="setting">\
            <tr>\
                <td style="word-wrap:break-word; ">\
                    <div ng-if="products.length == 0"> loading the Feem Store ... You need to be connected to the Internet. </div>\
                    <div ng-if="products.length > 0">\
                     <p style="margin-bottom: 5px; padding-bottom: 5px; border-bottom: 1px solid #eee;">You can restore your purchases by clicking <a href ng-click="restore_purchases_async()">here</a></p>\
                     <form ng-submit="submit();">\
                     <h2>Please select a product</h2>\
                     <div ng-click="select_product(product);" ng-repeat = "product in products" style="padding: 10px; border: 1px solid {{product.id == selected_product.id?\'blue\':\'#eee\'}}">\
                     <strong> {{product.price}}<br>{{product.title}} <a ng-if="product.id != selected_product.id" href ng-click="select_product(product)">\Select </a> </strong><br>{{product.description}}\
                     </div>\
                     <br>\
                     <br>\
                     <input type="submit" value="Buy {{selected_product.price}}" />\
                     </form>\
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
      scope: true,
      link: function ($scope) {

         $scope.form = {};
                     $scope.selected_product = {};
                     $scope.products = [];
                     

                     $scope.update_products = function(){
                     
                     FeemBridge.request('/request_products_async', {}, function(data){
                        });
                     }
                     
                     $scope.restore_purchases_async = function(){
                     FeemBridge.request('/restore_purchases_async', {}, function(){
                                        $rootScope.page = '';
                                        
                                        });
                     return;
                     }
                     
                     $scope.submit = function(product){
                     
                   
                     
                     FeemBridge.request('/buy_product_async', {id: $scope.selected_product.id}, function(){
                                        toaster.pop({
                                                    type: "info",
                                                    title: "Form submitted.",
                                                    body: "Transaction in progress.",
                                                    timeout: 3000
                                                    });
                        $rootScope.page = "";
                    });
                     
                     
                     
                     }
                     
                     $scope.select_product = function(product){
                        $scope.selected_product = product;
                     }
                     
                     $scope.$on("products_updated", function(event, data){
                                $scope.$evalAsync(function(){
                                                  $scope.products = data.products;
                                                  $scope.selected_product = data.products[0];
   
                                                  });
                                
                     });

                     $scope.update_products();
       
       

      }
      }

}])
