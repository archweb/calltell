$(document).ready(function() {
  var wheight = $(window).height();
  $('.left-menu').css({'height': wheight+'px'});

  $('.click-back-call').click(function(){
    $('.wrapper').addClass('content-blur-active');
    $('.form-back-call').fadeIn('slow');
  });
  $('.whole-site__close').click(function(){
    $('.form-back-call').hide(0);
    $('.wrapper').removeClass('content-blur-active');
  });

  $('.item-03-show').mouseover(function() {
    $('.window-main.item-03-show').removeClass('column-popup_stage_close');
    $('.window-main.item-03-show').addClass('column-popup_stage_open');
  })
  .mouseout(function() {
    $('.window-main.item-03-show').removeClass('column-popup_stage_open');
    $('.window-main.item-03-show').addClass('column-popup_stage_close');
  });

  $('.item-02-show').mouseover(function() {
    $('.window-main.item-02-show').removeClass('column-popup_stage_close');
    $('.window-main.item-02-show').addClass('column-popup_stage_open');
  })
  .mouseout(function() {
    $('.window-main.item-02-show').removeClass('column-popup_stage_open');
    $('.window-main.item-02-show').addClass('column-popup_stage_close');
  });

  $('.item-01-show').mouseover(function() {
    $('.window-main.item-01-show').removeClass('column-popup_stage_close');
    $('.window-main.item-01-show').addClass('column-popup_stage_open');
  })
  .mouseout(function() {
    $('.window-main.item-01-show').removeClass('column-popup_stage_open');
    $('.window-main.item-01-show').addClass('column-popup_stage_close');
  });


  $('.opene_li p').click(function(e){
    if( $(this).next('ul').hasClass('active') ){
      $(this).next('ul').removeClass('active').slideUp();
    }
    else{
      $(this).next('ul').addClass('active').slideDown();
    }
  });
  $('.submenu2 a').click(function () {
    $(this).next().slideToggle();
  });
  $( window ).resize(function() {
    var h = $('body').height();
    var v = 392;
    if (h>v) {
      var t = h-392;
    }else {
      var t = 392-h;
    }
    $('.scroll-panel-main').css('height', t+'px');
  });
  var h = $('body').height();
    var v = 392;
    if (h>v) {
      var t = h-392;
    }else {
      var t = 392-h;
    }
    $('.scroll-panel-main').css('height', t+'px');

    $('.all-categories').click(function(event) {
        if(this.checked) {
            $('.check-all-categories').each(function() {
                this.checked = true;
            });
        }else{
            $('.check-all-categories').each(function() {
                this.checked = false;
            });         
        }
    });
    $('.all-city').click(function(event) {
        if(this.checked) {
            $('.check-all-city').each(function() {
                this.checked = true;
            });
        }else{
            $('.check-all-city').each(function() {
                this.checked = false;
            });         
        }
    });
    $('.check-all-submenu').click(function(event) {
        var checksub = $(this).parents().find('.submenu-check li input');
        if(this.checked) {
            $(checksub).each(function() {
                this.checked = true;
            });
        }else{
            $(checksub).each(function() {
                this.checked = false;
            });         
        }
    });

    $(function(){
          var settings = {
              showArrows: true
          };
          var pane = $('.scroll-panel')
          pane.jScrollPane(settings);
          var api = pane.data('jsp');
          var i = 1;

          // Every second add some new content...
          setInterval(
              function()
              {
                  api.reinitialise();
              },
              1000
          );
      });

    $(function(){
          var settings = {
              showArrows: true
          };
          var pane = $('.scroll-panel2')
          pane.jScrollPane(settings);
          var api = pane.data('jsp');
          var i = 1;

          // Every second add some new content...
          setInterval(
              function()
              {
                  api.reinitialise();
              },
              1000
          );
      });
  
});