const showTab = (selector) => {
    console.log(selector);
  
    $('.tabs-menu div').removeClass('active');
    $(`#${selector}`).addClass('active')
    $('tabs-content> div').hide();
  
    if (selector=='tab-menu-a'){
      $('#tabs-a').show();
    } else if (selector=='tab-menu-b') {
      $('#tabs-b').show();
    } else {
      $('#tabs-c').show();
    }
  };
  
  $('tabs-menu div').on('click', (e) => {
    e.preventDefault();
  
    const selector = $(e.target).attr('id');
      showTab(selector);
  });
  
  showTab('tab-menu-a')
  
  $("button").click(function () {
    $("p").show();
  });
  