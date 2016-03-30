(function(){
  'use strict';

  function changeLang(){
    var lang = this.value;

    if (lang == 'en' && window.location.pathname == '/') {
      return window.location.pathname = '/zh-cn';
    }

    if (lang == 'zh-cn' && window.location.pathname == '/') {
      return window.location.pathname = '/en';
    }

    window.location.pathname = window.location.pathname.replace(/(zh-cn|en)/g, lang).replace('//', '/');
  }

  document.getElementById('lang-select').addEventListener('change', changeLang);
  document.getElementById('mobile-lang-select').addEventListener('change', changeLang);
})();