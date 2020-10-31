// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// require("jquery")
import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'

import 'css/application'
import "../lib/notify"

window.addEventListener('DOMContentLoaded', () => {
   // Select2 for tags
   $('#select2').select2({
      tags: true,
      ajax: {
         url: '/tags.json',
         dataType: 'json',
         delay: 250,
         data: function (params) {
            return {
               q: params.term // search term
            };
         },
         processResults: function(data, params){
            return {
               results: data
            }
         },
         cache: true
      }
   });


   // Notifications plugin
   const notices = JSON.parse(window.localStorage.getItem('notices'));
   window.localStorage.removeItem('notices');

   if(typeof notices !== 'undefined'){
      for(let msg_type in notices){
         let msg = notices[msg_type];
         let messages = typeof msg === 'string' ? [msg] : msg;

         messages.forEach(message => {
            $.notify(message, {
               className: msg_type,
               position: 'bottom right'
            });
         });
      }
   }

   // Other app related functionalities
   $(".note").on('click', (e) => {
      e.stopPropagation();
      let id = $(e.currentTarget).attr('data-item-id');
      window.location.href = "/notes/" + id
   });

   $(".tag").on('click', (e) => {
      e.stopPropagation();
      window.location.href = "/notes?filter_tag_id=" + $(e.currentTarget).attr('data-item-id')
   });
});


