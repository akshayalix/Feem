airsend_app
.factory('theme', function(){



    var blue_lightblue_theme = {
        dark_primary_color: "#1976D2",
        primary_color: "#2196F3",
        light_primary_color: "#BBDEFB",
        text_color: "#ffffff",
        accent_color: "#03A9F4",
        primary_text_color: "#212121",
        secondary_text_color: "#757575",
        divider_color: "#BDBDBD",
        danger_color: "#ff0000"

    }

//    var indigo_blue_theme = {
//        dark_primary_color: "",
//        primary_color: "",
//        light_primary_color: "",
//        text_color: "",
//        accent_color: "",
//        primary_text_color: "",
//        secondary_text_color: "",
//    divider_color: ""

//    }

    var indigo_blue_theme = {
        dark_primary_color: "#303F9F",
        primary_color: "#3F51B5",
        light_primary_color: "#C5CAE9",
        text_color: "#FFFFFF",
        accent_color: "#448AFF",
        primary_text_color: "#212121",
        secondary_text_color: "#757575",
        divider_color: "#BDBDBD",
        danger_color: "#ff0000"

    }

    return {
        "default": indigo_blue_theme,
        "indigo_blue_theme": indigo_blue_theme,
        "blue_lightblue_theme": blue_lightblue_theme
    }


})
