$(document).ready(function(){
  $(".filter-button").click(function(){
    var value = $(this).attr('data-filter');
    if (value == "all") {
      $(".filter").hide('3000');
      $('.filter').show('1000');
    } else {
      $(".filter").hide('1000');
      $('.filter').filter('.'+value).delay(350).show('1000');
    }
  });
});



function view_details(clicked_id) {

  var button_id = document.getElementById(clicked_id);
  var movie_id  = clicked_id.substring(4);

  var path      = 'assets/covers/';
  var ext       = '.jpg';
  var cover_src = path.concat(movie_id, ext);

  var mod_prfx  = "mod-";
  var mod_id    = mod_prfx.concat(movie_id);

  var img_prfx  = "img-";
  var img_id    = img_prfx.concat(movie_id);

  var txt_prfx  = "txt-";
  var txt_id    = txt_prfx.concat(movie_id);

  var cls_prfx  = "cls-";
  var cls_id    = cls_prfx.concat(movie_id);

  var modal     = document.getElementById(mod_id);
  var modal_img = document.getElementById(img_id);
  var modal_txt = document.getElementById(txt_id);

  modal.style.display = "block";
  modal_img.src       = cover_src;

  var cls_btn = document.getElementById(cls_id);

  cls_btn.onclick = function() {
    modal.style.display = "none";
  }

  $(document).keyup(function(e) {
     if (e.key === "Escape") {
       modal.style.display = "none";
    }
  });
}
