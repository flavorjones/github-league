/* Stylesheet swappin */
$(document).ready(function(){
  $('input.alternate-css').change(function() {
    if($(this).get(0).checked) {
      $("link[href*='prism-okaida.css']").attr('disabled', 'disabled');
      $("link[href*='prism-default.css']").removeAttr('disabled');
    } else {
      $("link[href*='prism-okaida.css']").removeAttr('disabled');
      $("link[href*='prism-default.css']").attr('disabled', 'disabled');
    }
  });
});

/* Adjust scrollTop when navigating to a subsection on the current page */

$(document).ready(function() {
  $('a.styleguide-subsection, .section-nav a').click(function(e) {
    var $target = $(e.target.hash);
    var desiredScrollPosition = $target.offset().top;
    window.history.pushState('', '', e.target.hash);
    $('body, html').animate({
      scrollTop: desiredScrollPosition
    }, 500, function () {
      $target.focus();
    });
    return false;
  });
});

/* Make all links inside codeExamples open in a new window */

$(document).ready(function() {
  $('.codeExample a').attr('target', '_blank');
});

/* Navbar hamburger functionality */

$(document).ready(function() {
  $('#navbar-hamburger').click(function() {
    $('ul#styleguide-first-level-nav').slideToggle(300);
  });

  $('.styleguide-second-level-nav-link').click(function(e) {
    e.preventDefault();

    var $targetCategory = $('#' + $(e.currentTarget).data('target'));
    var targetCategoryClosed = !$targetCategory.hasClass('active');

    $('li.styleguide-category').removeClass('active');
    $('ul.styleguide-second-level-nav').slideUp();
    if (targetCategoryClosed) {
      $targetCategory.addClass('active');
      $targetCategory.find('ul.styleguide-second-level-nav').slideDown();
    }
  });
});
