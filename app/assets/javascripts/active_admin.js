//= require arctic_admin/base
//= require activeadmin_addons/all

$(function() {
    $('.select2').select2({});

    $('.open_all').on('click', function() {
        $('td.col-id').each(function() {
            window.open($(this).children().attr('href'), '_blank');
        });
    });
});
