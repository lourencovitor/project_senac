$(document).ready(function() {
        $(".lslider").lightSlider({
            item: 3,
            autoWidth: false,
            slideMove: 1, // slidemove will be 1 if loop is true
            slideMargin: 10,
 
            addClass: '',
            mode: "slide",
            useCSS: true,
            cssEasing: 'ease', //'cubic-bezier(0.25, 0, 0.25, 1)',//
            easing: 'linear', //'for jquery animation',////
 
            speed: 400, //ms'
            auto: false,
            pauseOnHover: false,
            loop: false,
            slideEndAnimation: true,
            pause: 2000,
 
            keyPress: false,
            controls: true,
            prevHtml: '',
            nextHtml: '',
 
            rtl:false,
            adaptiveHeight:false,
 
            vertical:false,
            verticalHeight:500,
            vThumbWidth:100,
 
            thumbItem:10,
            pager: true,
            gallery: false,
            galleryMargin: 5,
            thumbMargin: 5,
            currentPagerPosition: 'middle',
 
            enableTouch:true,
            enableDrag:true,
            freeMove:true,
            swipeThreshold: 40,
 
            responsive : [ {
                breakpoint:800,
                settings: {
                    item:2,
                    slideMove:1,
                    slideMargin:6,
                  }
            },
            {
                breakpoint:550,
                settings: {
                    item:1,
                    slideMove:1
                  }
            },

            {
                breakpoint:480,
                settings: {
                    item:1,
                    slideMove:1
                }
            }


            ],
 
            onBeforeStart: function (el) {},
            onSliderLoad: function (el) {},
            onBeforeSlide: function (el) {},
            onAfterSlide: function (el) {},
            onBeforeNextSlide: function (el) {},
            onBeforePrevSlide: function (el) {}
        });
    });


    // $(document).ready(function() {
    //     var slider = $(".lslider").lightSlider();
    //     slider.goToSlide(3);
    //     slider.goToPrevSlide();
    //     slider.goToNextSlide();
    //     slider.getCurrentSlideCount();
    //     slider.refresh();
    //     slider.play();
    //     slider.pause();
    //     slider.destroy();
    // });
