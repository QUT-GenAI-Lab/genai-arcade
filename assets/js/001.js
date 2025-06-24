// By: h01000110 (hi)
// github.com/h01000110

var max = document.querySelector('.post_title .btn .fa-window-maximize').parentElement;
var min = document.querySelector('.post_title .btn .fa-window-minimize').parentElement;

function maximize () {
	var post = document.getElementsByClassName("content")[0];
	var cont = document.getElementsByClassName("post_content")[0];
	var wid = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName("body")[0].clientWidth;
    var zoom = parseFloat(window.getComputedStyle(document.body).zoom) || 1;
	var effectiveWidth = wid / zoom;


	if (effectiveWidth > 900) {
		widf = effectiveWidth * 0.9;
		post.style.width = widf + "px";

		if (effectiveWidth < 1400) {
			cont.style.width = "";
		} else {
			cont.style.width = "";
		}
	}
}

function minimize () {
	var post = document.getElementsByClassName("content")[0];
	var cont = document.getElementsByClassName("post_content")[0];
	var wid = window.innerWidth || document.documentElement.clientWidth || document.getElementsByTagName("body")[0].clientWidth;
    var zoom = parseFloat(window.getComputedStyle(document.body).zoom) || 1;
	var effectiveWidth = wid / zoom;
    
	if ( effectiveWidth > 900 ) {
		post.style.width = "800px";
		cont.style.width = "";
	}
}

max.addEventListener('click', maximize, false);
min.addEventListener('click', minimize, false);
