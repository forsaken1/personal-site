!function(e){"use strict";jQuery(document).ready(function(){e("#cform").submit(function(){var s=e(this).attr("action");return e("#message").slideUp(750,function(){e("#message").hide(),e("#submit").before('<img src="images/ajax-loader.gif" class="contact-loader" />').attr("disabled","disabled"),e.post(s,{name:e("#name").val(),email:e("#email").val(),comments:e("#comments").val()},function(s){document.getElementById("message").innerHTML=s,e("#message").slideDown("slow"),e("#cform img.contact-loader").fadeOut("slow",function(){e(this).remove()}),e("#submit").removeAttr("disabled"),null!=s.match("success")&&e("#cform").slideUp("slow")})}),!1})})}(jQuery);