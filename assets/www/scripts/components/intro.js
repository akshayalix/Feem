airsend_app
.directive('intro2', ['FeemPeers', function(FeemPeers){

    var template_ = '\
         <div>\
         <ul rn-carousel rn-carousel-auto-slide="10" rn-carousel-transition="fadeAndSlide" rn-carousel-index="slides.position" rn-carousel-buffered class="carousel">\
                <li>\
                 <div class="slide" style="background-image: url(images/devices1.jpg);">\
                    <div class="overlay"></div>\
                    <div class="content">\
                        <h1> {{"_hi_my_name_is" | translate}} <u style="text-shadow: 2px 2px 6px #005500;font-size: 150%;">Feem</u></h1>\
                        <h2>{{"_the_best_way_to_share" | translate}}</h2>\
                    </div>\
                  </div>\
                  </li>\
                  <li>\
                 <div class="slide" style="background-image: url(images/superpower.jpg);">\
                    <div class="overlay"></div>\
                    <div class="content">\
                        <h1>{{"_your_new_super_powers" | translate}}</h1>\
                        <ul style="list-style:square;">\
                          <li>{{"_unlimited_file_transfers" | translate}}</li>\
                          <li>{{"_unlimited_chat" | translate}}</li>\
                          <li>{{"_super_speed" | translate}}</li>\
                          <li>{{"_no_data_charges" | translate}}</li>\
                        </ul>\
                    </div>\
                  </div>\
                </li>\
                <li>\
                 <div class="slide" style="background-image: url(images/devices3.jpg);">\
                        <div class="overlay"></div>\
                        <div class="content">\
                        <h1>{{"_requirements" | translate}}</h1>\
                        <ul style="list-style:square;">\
                          <li>{{"_install_feem_on_all_your_devices" | translate}}</li>\
                          <li>{{"_your_devices_must_be_in_the_same_wifi_network" | translate}}</li>\
                          <li>{{"_you_can_create_a_hotspot" | translate}}</li>\
                        </ul>\
                    </div>\
                  </div>\
                </li>\
            </ul>\
            </div>\
    ';


    return {
        restrict: 'EA',
        replace: true,
        scope: {

        },
        link: function ($scope) {








        },
        template: template_
    }

}])
