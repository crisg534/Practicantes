function toggleAdvanced(){
  $("#advanced_search").slideToggle()

  $('#city').tagsInput({
    width: 'auto',
    autocomplete_url:''
  });
}