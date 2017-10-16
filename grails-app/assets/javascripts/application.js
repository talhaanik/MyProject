// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery.min
//= require jquery.ui.min
//= require bootstrap.min
//= require jquery.autocomplete
//= require plugins/select2.full.min
//= require plugins/moment.min
//= require plugins/jquery.knob
//= require plugins/ion.rangeSlider.min
//= require plugins/bootstrap-material-datetimepicker
//= require plugins/jquery.nicescroll
//= require plugins/jquery.mask.min
//= require plugins/nouislider.min
//= require plugins/jquery.validate.min
//= require plugins/fullcalendar.min
//= require plugins/jquery.vmap.min
//= require plugins/maps/jquery.vmap.world
//= require plugins/jquery.vmap.sampledata
//= require plugins/chart.min
//= require main
//= require_tree .
//= require_self
//= require fromaction
//= require buttonaction
//= require tableaction

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}
