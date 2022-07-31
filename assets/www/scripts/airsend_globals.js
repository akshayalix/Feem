//to_God_be_the_glory
airsend_app
.value('airsend_config', {
           api_endpoint: "https://airsend.feeperfect.com/api/v1",
           //api_endpoint: "http://127.0.0.1:30000/api/v1",
           thumbnail_endpoint: "http://127.0.0.1:45002/thumbnail/v1"
       }
)
.filter('fixchat', function() {
  return function(input) {
    input = input || '';
    var out = "";
    out = "*<br>"+ input;
    return out;
  };
})

.filter('trusted', ['$sce', function ($sce) {
    return function(url) {
        return $sce.trustAsResourceUrl(url);
    };
}])
.filter('basename', function() {
  return function(input) {

    input = input || '';
    var out = input.replace(/^.*[\\\/]/, '');
    return out;
  };
})
.filter('split', function() {
      return function(input, splitChar, splitIndex) {
          // do some bounds checking here to ensure it has that index
          return input.split(splitChar)[splitIndex];
      }
  })
.filter('escape1', function() {
    return function(input) {
      input = input || '';
      var out = input.replace(/ /g, '%20');
      out = out.replace(/\\/g, '/');

      return out;
    };
})

.filter('bytes', function() {
    return function(bytes, precision) {
        if (bytes == 0 || bytes === 0 || isNaN(parseFloat(bytes)) || !isFinite(bytes) || parseFloat(bytes) == 0) return '-';
        if (typeof precision === 'undefined') precision = 2;
        var units = ['bytes', 'kB', 'MB', 'GB', 'TB', 'PB'],
            number = Math.floor(Math.log(bytes) / Math.log(1000));
        return (bytes / Math.pow(1000, Math.floor(number))).toFixed(precision) +  ' ' + units[number];
    }
})

.directive('ngEnter', function () {
    return function (scope, element, attrs) {
        element.bind("keypress", function (event) {
            if(event.which === 13) {
                 event.preventDefault();
                 //var el = angular.element(element);
                 //el[0].blur();

                    scope.$eval(attrs.ngEnter);
            }
        });
    };
})
.directive('highlighter', ['$timeout', function($timeout) {
  return {
    restrict: 'A',
    scope: {
      model: '=highlighter'
    },
    link: function(scope, element) {
      scope.$watch('model', function (nv, ov) {
        if (nv !== ov) {
          // apply class
          element.addClass('highlight');

          // auto remove after some delay
          $timeout(function () {
            element.removeClass('highlight');
          }, 1000);
        }
      });
    }
  };
}])
.directive('feecountTo', ['$timeout', function ($timeout) {
    return {
        replace: false,
        scope: false,
        link: function (scope, element, attrs) {

            scope.counter = (+attrs.value);
            var max = (+attrs.max);

            var e = element[0];
            var num, refreshInterval, duration, steps, step, new_value, old_value, increment;

            var calculate = function () {
                refreshInterval = 30;
                step = 0;
                scope.timoutId = null;
                duration = 2000;

                steps = Math.ceil(duration / refreshInterval);
                increment = ((new_value - old_value) / steps);
                num = old_value;
                scope.counter = num;
            }

            var tick = function () {
                scope.timoutId = $timeout(function () {
                    num += increment;
                    scope.counter = num;

                    step++;
                    if (step >= steps) {
                        $timeout.cancel(scope.timoutId);
                        num = new_value;
                        scope.counter = num;
                        //e.textContent = new_value;
                    } else {
                        num = Math.round(num);
                        scope.counter = num;
                        //e.textContent = num;
                        tick();
                    }
                }, refreshInterval);

            }

            var start = function () {
                if (scope.timoutId) {
                    $timeout.cancel(scope.timoutId);
                }
                calculate();
                tick();
            }



            attrs.$observe('value', function (val) {
                old_value = (+new_value);
                new_value = (+val);
                if(new_value == max){
                    scope.counter = max;
                }else{
                     start();
                }

            });

            return true;

        }
    }

}])

.directive('feescroll', ['$timeout', function (timeout) {
    return{
        link: function (scope, element, attr) {

            scope.position_a = 0;
            scope.position_b = -500;

            var item_a = 0;
            var item_b = -1;

            var position_a = scope.position_a;
            var position_b = scope.position_b;

            element.bind('scroll', function () {
               var scrollTop = element[0].scrollTop;
               var scrollHeight = element[0].scrollHeight;
               var height = element[0].clientHeight;

               var position_a_length = $("#position_a").height();
               var position_b_length = $("#position_b").height();





               var bottom_threshold = Math.max(position_a + position_a_length/2 , position_b + position_b_length/2);
               var top_threshold = Math.min(position_a + position_a_length/2 , position_b + position_b_length/2);


               if(scrollTop > bottom_threshold){
                  if(position_a < position_b){
                    if( (item_b + scope.number_of_rows_per_view) < scope.photo_rows_count ){
                        position_a = position_b + position_b_length;
                        item_a = item_b + scope.number_of_rows_per_view;
                    }

                  }
                  else if(position_b < position_a){
                    if( (item_b + scope.number_of_rows_per_view) < scope.photo_rows_count ){
                          position_b = position_a + position_a_length;
                          item_b = item_a + scope.number_of_rows_per_view;
                    }

                  }

                  //position_b = position_a + position_a_length;
               }

               if(scrollTop < top_threshold){
                  if(position_a > position_b){
                    if( (item_b - scope.number_of_rows_per_view) >=0 ){
                      position_a = position_b - position_a_length;
                      item_a = item_b - scope.number_of_rows_per_view;
                      if(item_a == 0){
                        position_a = 0;
                      }
                    }
                  }
                  else if(position_b > position_a){
                      if( (item_a - scope.number_of_rows_per_view) >=0 ){

                        position_b = position_a - position_b_length;
                        item_b = item_a - scope.number_of_rows_per_view;
                      }
                  }

                  //position_b = position_a + position_a_length;
               }

               if(scope.position_a != position_a){
                  scope.position_a = 0+position_a;
                  scope.$emit('load_data', {"position": "a", "from": position_a, "item": item_a});
               }

               if(scope.position_b != position_b){
                scope.position_b = 0+position_b;
                  scope.$emit('load_data', {"position": "b", "from": position_b, "item": item_b});

               }


              jQuery("#selectedcount").text(scrollTop + ";"+ scrollHeight + ";;"+ item_a + ";;;" + item_b + ";;"+ position_a+ ";;;"+ position_b+ ";;;"+ bottom_threshold);

            });

          }
        }
}])

.directive('listItemA', function(){
  var template_ = '\
    <tr>\
      <td width="75px" style="border-bottom-width: 1px;border-bottom-style: solid;"><img style="margin: 5px;" class="thumbnail" ng-src="{{thumbnail}}"/></td>\
      <td style="border-bottom-width: 1px;border-bottom-style: solid;"><span style="overflow:hidden;font-size: 16px;" class="primary-text-color">{{ title }}</span>\
      <br><span style="font-size: 15px;" class="secondary-text-color">{{ description }}</span></td>\
    </tr>\
  ';
  return {
      restrict: 'A',
      replace: true,
      scope: {
            title: '@',
            description: '@',
            thumbnail: '@',
            smallscreen: '@'

      },
      template: template_
  }
})


.directive('listItemB', function(){
  var template_ = '\
    <tr>\
      <td width="75px" style="border-bottom-width: 1px;border-bottom-style: solid;"><ng-letter-avatar height="50" width="50" style="margin: 5px;" charCount="2" avatarborder=true shape="round" data="{{title}}"></ng-letter-avatar> </td>\
      <td style="border-bottom-width: 1px;border-bottom-style: solid;"><span style="overflow:hidden;font-size: 16px;" class="primary-text-color">{{ title }}</span>\
      <br><span style="font-size: 15px;" class="secondary-text-color">{{ description1 }}</span>\
      <br><span style="font-size: 15px;" class="secondary-text-color">{{ description2 }}</span></td>\
    </tr>\
  ';
  return {
      restrict: 'A',
      replace: true,
      scope: {
            title: '@',
            description1: '@',
            description2: '@',
            thumbnail: '@',
            smallscreen: '@'

      },
      template: template_
  }
})



.factory('FeemUtils', function(){

    var FeemUtils = {};

  FeemUtils.get_file_extension = function(filename){

  var ext = filename.slice((filename.lastIndexOf(".") - 1 >>> 0) + 2);
    ext = ext.toLowerCase();
  return ext;
  };

  FeemUtils.newer_version_found = function (installed, required) {

      if (!installed) {
          return false;
      }

      if (!required) {
          return false;
      }

      console.log(installed + " vs " + required);


       if(installed == undefined){
        return false;
       }
           var a = installed.split('.');
           var b = required.split('.');

       if(a.length != b.length){
           return false;
       }

           for (var i = 0; i < a.length; ++i) {
               a[i] = Number(a[i]);
           }
           for (var i = 0; i < b.length; ++i) {
               b[i] = Number(b[i]);
           }
           if (a.length == 2) {
               a[2] = 0;
           }

           if (a[0] > b[0]) return false;
           if (a[0] < b[0]) return true;

           if (a[1] > b[1]) return false;
           if (a[1] < b[1]) return true;

           if (a[2] > b[2]) return false;
           if (a[2] < b[2]) return true;


           return false;
       }


    return FeemUtils;




})

.service('FeemDevice', ['FeemBridge', 'FeemUtils', '$timeout', '$rootScope', function(FeemBridge, FeemUtils, $timeout, $rootScope){


    this.device = {};
    this.device.ssid = "";
    this.device.sys_info = "";
    this.device.alias = "";
    this.device.email = "";
    this.device.app_version = "";
    this.device.latest_app_version = "";
    this.device.os = "";
    this.device.newer_version_found = false;
    this.device.hotspot_is_running = false;
    this.device.hotspot_ssid = "";
    this.device.hotspot_password = "";
    this.device.downloads_folder = "";
    this.device.expiration_days = 0;
    this.device.license_is_expired = false;
    this.device.account = {};
    this.device.has_hotspot_feature = false;
    this.device.run_on_startup = '0';
    this.device.run_web_share_on_startup = '0';
    this.device.run_wifi_direct_on_startup = '0';

    this.get = function(){
        return this.device;
    }

    this.set_latest_app_version = function(v){
        this.device.latest_app_version = v;
        this.device.newer_version_found = FeemUtils.newer_version_found(this.device.app_version, this.device.latest_app_version);
    }

    var that = this;

    this.updateold = function ($scope) {

        var done = false;



        var update_function = function ($scope) {


            if (done) {
                return;
            } else {
                var milliseconds = (new Date).getTime();


            }
           
            FeemBridge.request("/get_device_info", {}, function (response) {
                done = true;

                               

                if (!$scope.device) {
                    $scope.device = {};
                }
                if (!that.device) {
                    that.device = {};
                }

                that.device = angular.extend(that.device, response);
                var now = (new Date).getTime();
                               if(that.device.account){
                               if(that.device.account.date_license_expires){
                               that.device.license_is_expired = (+that.device.account.date_license_expires < now);
                               }
                               }
                $scope.$evalAsync(function(){
                    $scope.device = angular.extend($scope.device, that.device);

                });
                               
                if($scope.device.has_pro_feature){
                    
                }

                              


            });

            $timeout(function () {
                update_function($scope);
            }, 1000);
        };

        update_function($scope);

       


    };

    this.update2 = function () {
        console.log("update2 devices");
        FeemBridge.request("/get_device_info", {}, function (response) {

            if (!that.device) {
                that.device = {};
            }

            that.device = angular.extend(that.device, response);
            var now = (new Date).getTime();
            if(that.device.account){
                if(that.device.account.date_license_expires){
                    that.device.license_is_expired = (+that.device.account.date_license_expires < now);
                }
            }
            $rootScope.$broadcast("device_updated_2", that.device);

        });





    };





}])

.service('FeemPeers', ['FeemBridge', '$timeout','FeemDevice', '$rootScope', function(FeemBridge, $timeout, FeemDevice, $rootScope){


    var that = this;

    this.update_peers_old = function ($scope, callback) {

        var done = false;

        var update_function = function ($scope) {
            if (done) {
                if(callback){
                    callback();
                }

                return;
            }

            if (!$scope.last_pull_devices) {
                $scope.last_pull_devices = 0;
            }

            FeemBridge.request('/get_recently_changed_devices', { last_pull_devices: $scope.last_pull_devices }, function (reply) {
                done = true;
                $scope.last_pull_devices = reply.last_pull_devices;

                var n = 0;
                if (reply.devices) {
                    n = reply.devices.length;
                }

                var all_peer_ids = [];

                if ($scope.all_peer_ids) {
                    all_peer_ids = $scope.all_peer_ids;
                }

                var data_peers = {};
                if ($scope.data_peers) {
                    data_peers = $scope.data_peers;
                }

                for (var i = 0; i < n; i++) {
                    var device = reply.devices[i];

                    if (all_peer_ids.indexOf(device.id) == -1) {
                        all_peer_ids.push(device.id);
                    }
                    if (data_peers[device.id]) {
                        device.selected = data_peers[device.id].selected;
                    }

                    data_peers[device.id] = device;
                }

                var sorted_peers = all_peer_ids;

                sorted_peers.sort(function (peer_a, peer_b) {


                    var connected_a = (data_peers[peer_a].ip.length > 0) ? 1 : 0;
                    var connected_b = (data_peers[peer_b].ip.length > 0) ? 1 : 0;

                    if (connected_a != connected_b) {
                        return (connected_b - connected_a);
                    }



                    var date_a = 0 + data_peers[peer_a].date_last_message;
                    var date_b = 0 + data_peers[peer_b].date_last_message;

                    if (date_b != date_a) {
                        return (date_b - date_a);
                    }



                    date_a = 0 + data_peers[peer_a].date_updated;
                    date_b = 0 + data_peers[peer_b].date_updated;

                    date_a = Math.floor(date_a / 10000);
                    date_b = Math.floor(date_b / 10000);

                    if (date_a != date_b) {
                        return (date_b - date_a);
                    }

                    var unread_a = data_peers[peer_a].unread;
                    var unread_b = data_peers[peer_b].unread;

                    if (unread_a != unread_b) {
                        return (unread_b - unread_a);
                    }


                    var alias_a = data_peers[peer_a].alias;
                    var alias_b = data_peers[peer_b].alias;

                    return alias_a.localeCompare(alias_b);



                });

                all_peer_ids = sorted_peers;


                $scope.$evalAsync(function () {
                    that.data_peers = data_peers;
                    that.all_peer_ids = all_peer_ids;
                    $scope.data_peers = data_peers;
                    $scope.all_peer_ids = all_peer_ids;

                });


            });


            $timeout(function () {
                update_function($scope);
            }, 1000);


        };

        update_function($scope);
        

    };

    this.data_peers = {};
    this.all_peer_ids = [];

    this.get = function(){
        var result = {};
        result.data_peers = that.data_peers;
        result.all_peer_ids = that.all_peer_ids;
        return result;
    }

    this.last_pull_devices = 0;

    this.update2 = function () {

            FeemBridge.request('/get_recently_changed_devices', { last_pull_devices: that.last_pull_devices }, function (reply) {
                that.last_pull_devices = reply.last_pull_devices;

                var n = 0;
                if (reply.devices) {
                    n = reply.devices.length;
                }

                var all_peer_ids = [];

                if (that.all_peer_ids) {
                    all_peer_ids = that.all_peer_ids;
                }

                var data_peers = {};
                if (that.data_peers) {
                    data_peers = that.data_peers;
                }

                for (var i = 0; i < n; i++) {
                    var device = reply.devices[i];

                    if (all_peer_ids.indexOf(device.id) == -1) {
                        all_peer_ids.push(device.id);
                    }
                    if (data_peers[device.id]) {
                        device.selected = data_peers[device.id].selected;
                    }

                    data_peers[device.id] = device;
                }

                var sorted_peers = all_peer_ids;

                sorted_peers.sort(function (peer_a, peer_b) {


                    var connected_a = (data_peers[peer_a].ip.length > 0) ? 1 : 0;
                    var connected_b = (data_peers[peer_b].ip.length > 0) ? 1 : 0;

                    if (connected_a != connected_b) {
                        return (connected_b - connected_a);
                    }



                    var date_a = 0 + data_peers[peer_a].date_last_message;
                    var date_b = 0 + data_peers[peer_b].date_last_message;

                    if (date_b != date_a) {
                        return (date_b - date_a);
                    }



                    date_a = 0 + data_peers[peer_a].date_updated;
                    date_b = 0 + data_peers[peer_b].date_updated;

                    date_a = Math.floor(date_a / 10000);
                    date_b = Math.floor(date_b / 10000);

                    if (date_a != date_b) {
                        return (date_b - date_a);
                    }

                    var unread_a = data_peers[peer_a].unread;
                    var unread_b = data_peers[peer_b].unread;

                    if (unread_a != unread_b) {
                        return (unread_b - unread_a);
                    }


                    var alias_a = data_peers[peer_a].alias;
                    var alias_b = data_peers[peer_b].alias;

                    return alias_a.localeCompare(alias_b);



                });

                all_peer_ids = sorted_peers;

                that.data_peers = data_peers;
                that.all_peer_ids = all_peer_ids;

                $rootScope.$broadcast("peers_updated_2", that.get());



            });


        };


    this.peerid_to_peer = function(peerid){


     if(peerid != FeemDevice.get().id){
       return that.data_peers[peerid];
     }
     else{
       var peer = {};
       peer.alias = FeemDevice.get().alias;
       peer.id = peerid;

       return peer;
     }
   }




}])

.service('LocaleService', function ($translate, LOCALES, $rootScope, tmhDynamicLocale) {
    // PREPARING LOCALES INFO
    var localesObj = LOCALES.locales;

    // locales and locales display names
    var _LOCALES = Object.keys(localesObj);
    if (!_LOCALES || _LOCALES.length === 0) {
      console.error('There are no _LOCALES provided');
    }
    var _LOCALES_DISPLAY_NAMES = [];
    _LOCALES.forEach(function (locale) {
      _LOCALES_DISPLAY_NAMES.push(localesObj[locale]);
    });

    // STORING CURRENT LOCALE
    var currentLocale = $translate.proposedLanguage();// because of async loading
    // METHODS
    var checkLocaleIsValid = function (locale) {
      return _LOCALES.indexOf(locale) !== -1;
    };

    var setLocale = function (locale) {
      if (!checkLocaleIsValid(locale)) {

        console.error('Locale name "' + locale + '" is invalid');
        return;
      }
      currentLocale = locale;// updating current locale

      // asking angular-translate to load and apply proper translations
      $translate.use(locale);
      localStorage.setItem("NG_TRANSLATE_LANG_KEY", locale);

    };

    // EVENTS
    // on successful applying translations by angular-translate
    $rootScope.$on('$translateChangeSuccess', function (event, data) {
      document.documentElement.setAttribute('lang', data.language);// sets "lang" attribute to html

       // asking angular-dynamic-locale to load and apply proper AngularJS $locale setting
      tmhDynamicLocale.set(data.language.toLowerCase().replace(/_/g, '-'));
    });

    return {
      getLocaleDisplayName: function () {
        return localesObj[currentLocale];
      },
      setLocaleByDisplayName: function (localeDisplayName) {
        setLocale(
          _LOCALES[
            _LOCALES_DISPLAY_NAMES.indexOf(localeDisplayName)// get locale index
            ]
        );
      },
      getLocalesDisplayNames: function () {
        return _LOCALES_DISPLAY_NAMES;
      }
    };
})

.directive('ngTranslateLanguageSelect', function (LocaleService) { 'use strict';

        return {
            restrict: 'A',
            replace: true,
            template: ''+
            '<div class="language-select" ng-if="visible"><form>'+
                '<label>'+
                    '{{"directives.language-select.Language" | translate}}:</label><br>'+
                    '<select ng-model="currentLocaleDisplayName"'+
                        'ng-options="localesDisplayName for localesDisplayName in localesDisplayNames"'+
                        'ng-change="changeLanguage(currentLocaleDisplayName)">'+
                    '</select>'+
                '</label></form>'+
            '</div>'+
            '',
            controller: function ($scope) {
                $scope.currentLocaleDisplayName = LocaleService.getLocaleDisplayName();
                $scope.localesDisplayNames = LocaleService.getLocalesDisplayNames();
                $scope.visible = $scope.localesDisplayNames &&
                $scope.localesDisplayNames.length > 1;

                $scope.changeLanguage = function (locale) {
                    LocaleService.setLocaleByDisplayName(locale);


                };
            }
        };
    })

.service('FeemOptionsBox', ['$rootScope', '$translate', function($rootScope, $translate){

    var that = this;
    this.alert = function(text){
        alert(text);
    }

    this.options = {};

    window.context_menu_clicked = function (index) {
        if(index>=0){
            var option = that.options[index];
            if(option){
                option.callback();
            }
        }

        that.template.remove();
        that.overlay.remove();
        that.options = {};

    }

    var pointerEventToXY = function(e){
          var out = {x:0, y:0};
          if(e.type == 'touchstart' || e.type == 'touchmove' || e.type == 'touchend' || e.type == 'touchcancel'){
            var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];
            out.x = touch.pageX;
            out.y = touch.pageY;
          } else if (e.type == 'mousedown' || e.type == 'click' || e.type == 'mouseup' || e.type == 'mousemove' || e.type == 'mouseover'|| e.type=='mouseout' || e.type=='mouseenter' || e.type=='mouseleave') {
            out.x = e.pageX;
            out.y = e.pageY;
          }
          return out;
        };


    this.context_menu = function(event, options){
        this.options = options;
        var coords = pointerEventToXY(event);

        $rootScope.$broadcast('populate_options_box', {"coords": coords, "options": options});
        return;

        var overlay_ = '<div onClick="context_menu_clicked(-1)" style="position:fixed; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: rgb(0,0,0); opacity: 0.5;"></div>';

        this.overlay = $(overlay_);
        this.overlay.appendTo('body');


        var template_ = '<div class="list-group" onClick="context_menu_clicked(-1);" style="position:fixed; left:0px; top: 0px;">';
        template_ = template_ + '<button type="button" class="list-group-item active">'+$translate.instant('LANG_OPTIONS')+'</button>';

        var index = 0;
        angular.forEach(options, function(option){
            //var item = '<button type="button" class="list-group-item"  onClick="context_menu_clicked(\'' + index + '\');">' + option.text + '</button>';
            var item = '<button type="button" class="list-group-item" >' + option.text + '</button>';
            template_ = template_ + item;
            index = index + 1;
        });
        template_ = template_ + '<button type="button" class="list-group-item disabled" onClick="context_menu_clicked(-1);">'+$translate.instant('LANG_CANCEL')+'</button>';
        this.template = $(template_);
        this.template.appendTo('body');

        var window_width = $(window).width();
        var window_height = $(window).height();

        var template_width = this.template.width();
        var template_height = this.template.height();

        if(template_width + coords.x < window_width){
            this.template.css('left', coords.x+"px");
        }
        else{
            this.template.css('left', Math.max(5, coords.x - template_width)+"px");
        }



        if(template_height + coords.y + 10 < window_height){
            this.template.css('top', coords.y+"px");
        }
        else{
            this.template.css('top', Math.max(5, coords.y - template_height)+"px");
        }





    }


}])

.directive('feemOptionsBox', ['$rootScope', '$timeout', '$translate', function ($rootScope, $timeout, $translate) {
    var template_ = '\
        <div  style="position:fixed; left: 0px; top: 0px; width: 1px; height: 1px;">\
            <div ng-if="parameters.options.length>0" ng-click="clear_options();" style="position:fixed; left: 0px; right: 0px; top: 0px; bottom: 0px; background-color: rgb(0,0,0); opacity: 0.5;"></div>\
            <div id="feemoptionsbox" ng-if="parameters.options.length>0" class="list-group" style="position:fixed; left:{{parameters.coords.x}}px; top: {{parameters.coords.y}}px; padding: 2px; margin: 2px;">\
                <button type="button" class="list-group-item active" translate>LANG_OPTIONS</button>\
                <button ng-repeat="option in parameters.options" type="button" class="list-group-item" style="white-space: nowrap;" ng-click="process_option(option);">{{option.text}}</button>\
                <button type="button" class="list-group-item disabled" ng-click="clear_options();" translate>LANG_CANCEL</button>\
            </div>\
        </div>\
    ';

    return {
        scope: {

        },
        template: template_,
        link: function ($scope, elt) {
            $scope.parameters = {};

            $scope.clear_options = function () {
                
                $timeout(function () {
                    $scope.parameters = {};
                }, 0);

            }

            $scope.process_option = function (option) {
                callback = option.callback;
                callback();
                $timeout(function () {
                    $scope.parameters = {};
                }, 0);
                
            }


            $scope.$on('populate_options_box', function (event, parameters) {
                $timeout(function () {
                    $scope.parameters = parameters;
                    

                    $timeout(function () {

                        var coords = parameters.coords;

                        var template = $("#feemoptionsbox");

                        



                        var window_width = $(window).width();
                        var window_height = $(window).height();

                        var template_width = template.width();
                        var template_height = template.height();

                        if ((template_width + coords.x) < window_width) {
                            parameters.coords.x = parameters.coords.x;
                            //template.css('left', coords.x + "px");
                        }
                        else {
                            //template.css('left', Math.max(5, coords.x - template_width) + "px");
                            parameters.coords.x = Math.max(10, coords.x - template_width - 10);

                        }



                        if (template_height + coords.y + 10 < window_height) {
                            //template.css('top', coords.y + "px");
                            parameters.coords.y = parameters.coords.y;

                        }
                        else {
                            //template.css('top', Math.max(5, coords.y - template_height) + "px");
                            parameters.coords.y = Math.max(10, coords.y - template_height);

                        }


                    }, 0);

                    

                }, 0);
            });

        }

    }


    }])
.service('FeemBridgeFake', ['$rootScope', '$filter', '$interval', '$http', function($rootScope, $filter, $interval, $http){

      var that = this;

    this.name = "fake";
    this.debug = function(str){
        //console.log(str);
    };
    this.from_native = function(msg){

        $rootScope.$broadcast(msg.action, parameters);
    }
    this.request = function(path, msg, callback){

        var params = JSON.stringify(msg);
        $http.post("http://127.0.0.1:45002/api/v1"+ path, params, {headers: {'Content-Type': 'text/plain'}})
        .success(function(data, status) {
                       callback(data);
                })
         .error(function(data, status) {
                return false;
              });
    }
    this.request2 = function(path, msg, callback){

      if(path=="/get_chats_for_peer"){

      }

      if(path == "/get_device_info"){
          var response = {
              "ssid": "fake ssid",
              "alias": "fake alias",
              "sys_info": "fake os"
          }

          callback(JSON.stringify(response, null, 4));
          return;
      }

         if(path=="/run_tests"){
          var run_fake_tests = true;
            var fake_run_counts = 0;
            if(run_fake_tests){
               stop = $interval(function() {

                  //console.log("fake test running");
                  var reply = {};
                  reply.action = "append_test";
                  reply.test = {
                    type: "assert_equals",
                    label: "fake test " + fake_run_counts,
                     expected: fake_run_counts,
                     actual: fake_run_counts,
                     category: "fake",
                     passed: fake_run_counts%2 == 0
                  };

                that.from_native(reply);
                fake_run_counts = fake_run_counts + 1;
                if(fake_run_counts > 10){
                  $interval.cancel(stop);
                }

                }, 1000);
            }

         }

        if(path=="/pull"){
          var last_pull_devices = msg.last_pull_devices;
          var peer_id = "";
          //console.log("last_pull_devices == "+ last_pull_devices);
          var devices = [];


          devices.push({
              id:"fee",
              alias: "Fritz Ekwoge",
              sys_info: "Fake OS 1",
              date_updated: 2
            });

            devices.push({
              id:"seb",
              alias: "Sebastian Schmid",
              sys_info: "Fake OS 1",
              date_updated: 2
            });

            for(var i=0; i< 10; i++){
              var device = {};
              device.id = "random"+i;
              device.alias = "random"+ i ;
              device.sys_info = "Fake OS 2";
              device.date_updated = 1;
              devices.push(device);

            }

            var new_devices = [];

            angular.forEach(devices, function(device) {
              if(device.date_updated > last_pull_devices){
                new_devices.push(device);
              }
            });


            var response = {};
            response.device_id = "fake_device";
            response.sys_info = "fake_sysinfo";
            response.status = "success";
            response.last_pull_devices = 3;
            response.devices = new_devices;
            callback(JSON.stringify(response, null, 4));
            return;

        }
        var response = {"status": "success"};

        callback(JSON.stringify(response, null, 4));
    }



}])
.service('FeemBridgeCordova', ['$window', '$rootScope', '$filter', function($window, $rootScope, $filter){

  this.name = "cordova";


   


    this.request = function(endpoint, msg, success){
          var msg_str = $filter('json')(msg);
       cordova.exec( function(reply){
                    var r = JSON.parse(reply);
                    success(r);
                    }, null, "FeemBridgeCordova", "request_from_core", [endpoint,msg_str]);

      }
    this.debug = function(str){
        //console.log(str);
    }

    this.show_alert = function(title, msg){

        cordova.exec(null, null, "FeemBridgeCordova", "show_alert", [title, msg]);
    }


 this.add_shared_files = function(){
         var msg_str = "";
         cordova.exec(null, null, "FeemBridgeCordova", "add_shared_files", [msg_str]);
    }


    this.show_file_picker = function(msg){
        var msg_str = $filter('json')(msg);

        cordova.exec(null, null, "FeemBridgeCordova", "show_file_picker", [msg_str]);
    }
                               
    this.open_audio_player = function(msg){
        var msg_str = $filter('json')(msg);
                   
        cordova.exec(null, null, "FeemBridgeCordova", "open_audio_player", [msg_str]);
    }
                               

    this.change_avatar = function(){

        cordova.exec(null, null, "FeemBridgeCordova", "change_avatar", []);
    }

    this.show_ad = function(){

            cordova.exec(null, null, "FeemBridgeCordova", "show_ad", []);
        }


    this.change_downloads_folder = function(){

         cordova.exec(null, null, "FeemBridgeCordova", "change_downloads_folder", []);
    }


 this.open_file_browser = function(msg){
        var msg_str = $filter('json')(msg);

        cordova.exec(null, null, "FeemBridgeCordova", "open_file_browser", [msg_str]);
    }





    if (typeof FeemRuntimeComponent !== 'undefined') {
        FeemRuntimeComponent.FeemPluginRT.instance().addEventListener("toui", function (event) {

            try{
            var json = JSON.parse(event.target);
                $rootScope.$broadcast(json.action, json);
            }
            catch(err){

            }
        });
    } else {
    }




}])
.service('FeemBridgeQt', ['$rootScope','$http', function($rootScope, $http){
    if(typeof window.FeemBridgeQtImpl === 'undefined'){
        return;
    }
    var FeemBridgeQtImpl = window.FeemBridgeQtImpl;

    FeemBridgeQtImpl.to_ui.connect(function(parameters){

    //console.log("from ui " + JSON.stringify(parameters));
    $rootScope.$broadcast(parameters.action, parameters);

    });
    this.name = "qt";
    



    this.request = function(path, msg, callback){
        var returnValue = FeemBridgeQtImpl.from_ui2(path, msg);
         var reply = JSON.parse(returnValue);
            callback(reply);

    }


    this.request2 = function(path, msg, callback){

        var params = JSON.stringify(msg);
        $http.post("http://127.0.0.1:45002/api/v1"+ path, params, {headers: {'Content-Type': 'text/plain'}})
        .success(function(data, status) {
                       callback(data);
                })
         .error(function(data, status) {
                return false;
              });
    }

    this.show_alert = function(title, msg){
        var response = FeemBridgeQtImpl.show_alert(title, msg);
    }

    this.add_shared_files = function(){
        FeemBridgeQtImpl.add_shared_files();
    }




    this.show_file_picker = function(parameters){
        FeemBridgeQtImpl.debug("calling file picker ");
        FeemBridgeQtImpl.show_file_picker(parameters);
    }

    this.change_downloads_folder = function(){
        FeemBridgeQtImpl.change_downloads_folder();
    }

    this.change_avatar = function(){
        FeemBridgeQtImpl.change_avatar();
    }


    this.debug = function(str){
        FeemBridgeQtImpl.debug(str);
    };


}])
.factory('FeemBridge', ['FeemBridgeFake', 'FeemBridgeQt', 'FeemBridgeCordova', '$http', function(FeemBridgeFake, FeemBridgeQt, FeemBridgeCordova, $http){


    var bridge = FeemBridgeFake;


        if((typeof cordova) !== 'undefined'){
            bridge = FeemBridgeCordova;
        }


      if((typeof window.FeemBridgeQtImpl) !== 'undefined'){
            bridge = FeemBridgeQt;
        }



//      bridge.request = function (path, msg, callback) {
//
//          var params = JSON.stringify(msg);
//          $http.post("http://127.0.0.1:45002/api/v1" + path, params, { headers: { 'Content-Type': 'text/plain' } })
//          .success(function (data, status) {
//
//              //alert(JSON.stringify(data));
//              callback(data);
//
//          })
//           .error(function (data, status) {
//
//               return false;
//           });
//
//
//      }


      return bridge;


}]);
