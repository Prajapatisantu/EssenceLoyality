$(document).on('turbolinks:load', () => {
  //   $('#repeat-customers-1').click(() => {
  //     // tabs switching

  //     $('#repeat-customers-1').addClass('Polaris-Tabs__Tab--selected');
  //     $('#all-customers-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#accepts-marketing-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#prospects-1').removeClass('Polaris-Tabs__Tab--selected');

  //     // tabs content page switch
  //     $('#repeat-customers-content-1').removeClass('Polaris-Tabs__Panel--hidden');
  //     $('#all-customers-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#accepts-marketing-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#prospects-content-1').addClass('Polaris-Tabs__Panel--hidden');

  //   })

  //   $('#all-customers-1').click(() => {
  //     // tabs switching

  //     $('#all-customers-1').addClass('Polaris-Tabs__Tab--selected');
  //     $('#repeat-customers-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#accepts-marketing-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#prospects-1').removeClass('Polaris-Tabs__Tab--selected');

  //     // tabs content page switch
  //     $('#all-customers-content-1').removeClass('Polaris-Tabs__Panel--hidden');
  //     $('#accepts-marketing-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#prospects-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#repeat-customers-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //   })

  //   $('#accepts-marketing-1').click(() => {
  //     // tabs switching

  //     $('#accepts-marketing-1').addClass('Polaris-Tabs__Tab--selected');
  //     $('#repeat-customers-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#prospects-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#all-customers-1').removeClass('Polaris-Tabs__Tab--selected');

  //     // tabs content page switch
  //     $('#accepts-marketing-content-1').removeClass('Polaris-Tabs__Panel--hidden');
  //     $('#prospects-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#repeat-customers-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#all-customers-content-1').addClass('Polaris-Tabs__Panel--hidden');

  //   })

  //   $('#prospects-1').click(() => {
  //     // tabs switching

  //     $('#prospects-1').addClass('Polaris-Tabs__Tab--selected');
  //     $('#all-customers-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#accepts-marketing-1').removeClass('Polaris-Tabs__Tab--selected');
  //     $('#repeat-customers-1').removeClass('Polaris-Tabs__Tab--selected');

  //     // tabs content page switch
  //     $('#prospects-content-1').removeClass('Polaris-Tabs__Panel--hidden');
  //     $('#repeat-customers-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#all-customers-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //     $('#accepts-marketing-content-1').addClass('Polaris-Tabs__Panel--hidden');
  //   })


  //   // Add review button
  //   $('#PolarisPortalsContainer').hide();
  //   $('#AddReviewButton').click(() => {
  //     $('#PolarisPortalsContainer').show();
  //   })

  $('.Polaris-Modal-CloseButton, #cancelButton').click(() => {
    $('#PolarisPortalsContainer').hide();
  })
})