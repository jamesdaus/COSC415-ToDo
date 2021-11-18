//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require main
//= require locales-all
//= require moment 

"use strict";

var calendar;

document.addEventListener('DOMContentLoaded', function () {
  var calendarEl = document.getElementById('calendar');
  calendar = new FullCalendar.Calendar(calendarEl, {
    initialView: 'dayGridMonth',
    events: "/tasks/calendar_tasks",
    expandRows: true,
    height: "100%",
    dayCellClassNames: 'dark-section',
    // TODO: Eventually should make these each call a different function so we can determine which partials to re-render, not 
    // all of them
    eventAdd: reRenderList,
    eventRemove: reRenderList,
    eventChange: reRenderList
  });
  calendar.render();
});

function reRenderList(events) {
  $.get("/tasks/tasks_update_partials");
}