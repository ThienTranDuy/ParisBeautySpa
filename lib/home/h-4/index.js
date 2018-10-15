$(function() {
    if ($('.canhcam-home-4 .owl-carousel').length) {
        $('.canhcam-home-4 .owl-carousel').owlCarousel({
            animateIn: 'fadeIn',
            animateOut: 'fadeOut',
            items: 1,
            false: true,
            loop: false,
            center: false,
            padding: 10,
            margin: 20,
            navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
            nav: true,
            dots: false,
            autoplay: false,
            autoplayTimeout: 3000,
            autoplayHoverPause: false,
            callbacks: true,
            responsive: {
                480: {
                    items: 1
                },
                992: {
                    items: 2
                },
                1140: {
                    items: 2
                }
            }
        });
    }

});