/**
 * Created by michaelirschick on 9/21/16.
 */
$(document).on('ready page:load', function () {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
});

