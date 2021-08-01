function divShow(){
  document.getElementById("menu-collapse").style.display="block";
  document.getElementById("menu-click").href="javascript:divHide();";
  document.getElementById("menu-click").innerHTML='<img src="/icons/minus.svg" style="height: 24px; vertical-align: top;">';
}

function divHide(){
  document.getElementById("menu-collapse").style.display="";
  document.getElementById("menu-click").href="javascript:divShow();";
  document.getElementById("menu-click").innerHTML='<img src="/icons/plus.svg" style="height: 24px; vertical-align: top;">';
}
