function addCookie(){
  if(document.all){
  window.external.addFavorite('http://localhost:3000', 'Sunny家教网');
  }
  else if(window.sidebar){
    window.sidebar.addPanel('Sunny家教网', 'http://localhost:3000','');
  }
}
