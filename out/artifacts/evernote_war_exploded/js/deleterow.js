/**
 * Created by Yaroslav on 7/4/15.
 */
$(document).ready(function () {

    var $checkboxes = $('#devel-generate-content-form td input[type="checkbox"]');

    $checkboxes.change(function () {
        var countCheckedCheckboxes = $checkboxes.filter(':checked').length;
        $('#count-checked-checkboxes').text(countCheckedCheckboxes);

        $('#edit-count-checked-checkboxes').val(countCheckedCheckboxes);
    });

});