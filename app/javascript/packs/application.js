// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// require("jquery")
import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'

import 'css/application'

window.addEventListener('DOMContentLoaded', () => {
   console.log("Loaded");
   $('#select2').select2({
      tags: true,
      ajax: {
         url: '/tags.json',
         dataType: 'json',
         delay: 250,
         data: function (params) {
            return {
               q: params.term // search term
               // page: params.page
            };
         },
         processResults: function(data, params){
            return {
               results: data
            }
         },
         cache: true
         // Additional AJAX parameters go here; see the end of this chapter for the full code of this example
      }
   });

   $(".note").on('click', (e) => {
      alert("Hi")
      window.href = "/dashboard"
   });
});


