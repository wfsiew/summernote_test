function init() {
  $('#editorBody').summernote({
    textareaAutoSync: false,
    onChange: function (contents, $editable) {
      $('#txtcontent').val($editable.code());
    }
  });
}

function pageLoad() {
  var prm = Sys.WebForms.PageRequestManager.getInstance();
  prm.add_beginRequest(function (s, e) {

  });

  prm.add_endRequest(function (s, e) {
    
  });
}

$(document).ready(init);
