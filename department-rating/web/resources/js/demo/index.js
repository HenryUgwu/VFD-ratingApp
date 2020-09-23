
// Dashboard.js
// ====================================================================
// This file should not be included in your project.
// This is just a sample how to initialize plugins or components.
//
// - Designbudy.com -


$(document).ready(function() {

console.log('document is ready inside demo');
// FLOT REAL TIME CHART
// =================================================================
// Require Flot Area Chart
// -----------------------------------------------------------------
// http://www.flotcharts.org/
// =================================================================
var $star_rating_treasury_access = $('.star-rating-treasury-access .fa');
var $star_rating_treasury = $('.star-rating-treasury .fa');
var $star_rating_treasury_qos = $('.star-rating-treasury-qos .fa');
var $star_rating_treasury_turn = $('.star-rating-treasury-turn .fa');

var $star_rating_client_access = $('.star-rating-client-access .fa');
var $star_rating_client = $('.star-rating-client .fa');
var $star_rating_client_qos = $('.star-rating-client-qos .fa');
var $star_rating_client_turn = $('.star-rating-client-turn .fa');

var $star_rating_ce = $('.star-rating-ce .fa');
var $star_rating_ce_access = $('.star-rating-ce-access .fa');
var $star_rating_ce_qos = $('.star-rating-ce-qos .fa');
var $star_rating_ce_turn = $('.star-rating-ce-turn .fa');


var $star_rating_hr = $('.star-rating-hr .fa');
var $star_rating_hr_access = $('.star-rating-hr-access .fa');
var $star_rating_hr_qos = $('.star-rating-hr-qos .fa');
var $star_rating_hr_turn = $('.star-rating-hr-turn .fa');


var $star_rating_fin = $('.star-rating-fin .fa');
var $star_rating_fin_access = $('.star-rating-fin-access .fa');
var $star_rating_fin_qos = $('.star-rating-fin-qos .fa');
var $star_rating_fin_turn = $('.star-rating-fin-turn .fa');


var $star_rating_leg = $('.star-rating-leg .fa');
var $star_rating_leg_access = $('.star-rating-leg-access .fa');
var $star_rating_leg_qos = $('.star-rating-leg-qos .fa');
var $star_rating_leg_turn = $('.star-rating-leg-turn .fa');

var $star_rating_it = $('.star-rating-it .fa');
var $star_rating_it_access = $('.star-rating-it-access .fa');
var $star_rating_it_qos = $('.star-rating-it-qos .fa');
var $star_rating_it_turn = $('.star-rating-it-turn .fa');



var $star_rating_mcc = $('.star-rating-mcc .fa');
var $star_rating_mcc_access = $('.star-rating-mcc-access .fa');
var $star_rating_mcc_qos = $('.star-rating-mcc-qos .fa');
var $star_rating_mcc_turn = $('.star-rating-mcc-turn .fa');


var $star_rating_anch_ops = $('.star-rating-anch_ops .fa');
var $star_rating_anch_ops_access = $('.star-rating-anch_ops-access .fa');
var $star_rating_anch_ops_qos = $('.star-rating-anch_ops-qos .fa');
var $star_rating_anch_ops_turn = $('.star-rating-anch_ops-turn .fa');


var $star_rating_fx_ops = $('.star-rating-fx_ops .fa');
var $star_rating_fx_ops_access = $('.star-rating-fx_ops-access .fa');
var $star_rating_fx_ops_qos = $('.star-rating-fx_ops-qos .fa');
var $star_rating_fx_ops_turn = $('.star-rating-fx_ops-turn .fa');


var $star_rating_try_ops = $('.star-rating-try_ops .fa');
var $star_rating_try_ops_access = $('.star-rating-try_ops-access .fa');
var $star_rating_try_ops_qos = $('.star-rating-try_ops-qos .fa');
var $star_rating_try_ops_turn = $('.star-rating-try_ops-turn .fa');

var $star_rating_exco = $('.star-rating-exco .fa');
var $star_rating_exco_access = $('.star-rating-exco-access .fa');
var $star_rating_exco_qos = $('.star-rating-exco-qos .fa');
var $star_rating_exco_turn = $('.star-rating-exco-turn .fa');



var $star_rating_mfb_ops = $('.star-rating-mfb_ops .fa');
var $star_rating_mfb_ops_access = $('.star-rating-mfb_ops-access .fa');
var $star_rating_mfb_ops_qos = $('.star-rating-mfb_ops-qos .fa');
var $star_rating_mfb_ops_turn = $('.star-rating-mfb_ops-turn .fa');



var $star_rating_resource = $('.star-rating-resource .fa');
var $star_rating_resource_access = $('.star-rating-resource-access .fa');
var $star_rating_resource_qos = $('.star-rating-resource-qos .fa');
var $star_rating_resource_turn = $('.star-rating-resource-turn .fa');



var SetRatingStar = function(var1) {
 return var1.each(function() {
    if (parseInt(var1.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
      return $(this).removeClass('fa-star-o').addClass('fa-star');
    } else {
      return $(this).removeClass('fa-star').addClass('fa-star-o');
    }
  });
};

var setGeneralStar = function(var1)
{
    return var1.each(function() {
        console.log(parseInt(var1.siblings('input.rating-value').val()));
    if (parseInt(var1.siblings('input.rating-value').val()) >= parseInt($(this).data('rating'))) {
       return $(this).removeClass('fa-star-o').addClass('fa-star');
    } else {
       return $(this).removeClass('fa-star').addClass('fa-star-o');
    }
  });
};


$star_rating_treasury_access.on('click',function(){
 
    $star_rating_treasury_access.siblings('input.rating-value').val(parseInt($(this).data('rating')));
    
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_treasury').val();
    var turnValue = $('#turn_treasury').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var treasuryValue = totalValue / 15 * 5;
    $('#totalRating_treasury').text(treasuryValue.toFixed(1));
    $('#treasury').val(treasuryValue);
    setGeneralStar($star_rating_treasury);
    return SetRatingStar($star_rating_treasury_access);
});
  
 $star_rating_treasury_qos.on('click',function(){
  
    $star_rating_treasury_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_treasury').val();
    var turnValue = $('#turn_treasury').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var treasuryValue = totalValue / 15 * 5;
    $('#totalRating_treasury').text(treasuryValue.toFixed(1));
    $('#treasury').val(treasuryValue);
    setGeneralStar($star_rating_treasury);
    return SetRatingStar($star_rating_treasury_qos);
});
  
    $star_rating_treasury_turn.on('click',function(){
  
    $star_rating_treasury_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var accessValue = $('#access_treasury').val();
    var qosValue = $('#qos_treasury').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var treasuryValue = totalValue / 15 * 5;
    $('#totalRating_treasury').text(treasuryValue.toFixed(1));
    $('#treasury').val(treasuryValue);
    setGeneralStar($star_rating_treasury);
    return SetRatingStar($star_rating_treasury_turn);
});


$star_rating_client_access.on('click',function(){
 
    $star_rating_client_access.siblings('input.rating-value').val(parseInt($(this).data('rating')));
    
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_client').val();
    var turnValue = $('#turn_client').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var clientValue = totalValue / 15 * 5;
    $('#totalRating_client').text(clientValue.toFixed(1));
    $('#client').val(clientValue);
    setGeneralStar($star_rating_client);
    return SetRatingStar($star_rating_client_access);
});
  
 $star_rating_client_qos.on('click',function(){
  
    $star_rating_client_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_client').val();
    var turnValue = $('#turn_client').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var clientValue = totalValue / 15 * 5;
    $('#totalRating_client').text(clientValue.toFixed(1));
    $('#client').val(clientValue);
    setGeneralStar($star_rating_client);
    return SetRatingStar($star_rating_client_qos);
});
  
    $star_rating_client_turn.on('click',function(){
  
    $star_rating_client_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var accessValue = $('#access_client').val();
    var qosValue = $('#qos_client').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var clientValue = totalValue / 15 * 5;
    $('#totalRating_client').text(clientValue.toFixed(1));
    $('#client').val(clientValue);
    setGeneralStar($star_rating_client);
    return SetRatingStar($star_rating_client_turn);
});

   
    $star_rating_ce_qos.on('click',function(){
  
    $star_rating_ce_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_ce').val();
    var turnValue = $('#turn_ce').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var treasuryValue = totalValue / 15 * 5;
    $('#totalRating_ce').text(treasuryValue.toFixed(1));
    $('#ce').val(treasuryValue);
    setGeneralStar($star_rating_ce);
    return SetRatingStar($star_rating_ce_qos);
});

$star_rating_ce_access.on('click',function(){
  
    $star_rating_ce_access.siblings('input.rating-value').val(parseInt($(this).data('rating')));
    
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_ce').val();
    var turnValue = $('#turn_ce').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var ceValue = totalValue / 15 * 5;
   $('#totalRating_ce').text(ceValue.toFixed(1)); 
    $('#ce').val(ceValue);
    setGeneralStar($star_rating_ce);
    return SetRatingStar($star_rating_ce_access);
});

$star_rating_ce_turn.on('click',function(){
  
    $star_rating_ce_turn.siblings('input.rating-value').val(parseInt($(this).data('rating')));
    
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_ce').val();
    var accessValue = $('#access_ce').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var ceValue = totalValue / 15 * 5;
    $('#totalRating_ce').text(ceValue.toFixed(1));
    $('#ce').val(ceValue);
    setGeneralStar($star_rating_ce);
    return SetRatingStar($star_rating_ce_turn);
});

$star_rating_exco_access.on('click',function(){
 
    $star_rating_exco_access.siblings('input.rating-value').val(parseInt($(this).data('rating')));
    
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_exco').val();
    var turnValue = $('#turn_exco').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var excoValue = totalValue / 15 * 5;
    
    $('#totalRating_exco').text(excoValue.toFixed(1));
    $('#exco').val(excoValue);
    setGeneralStar($star_rating_exco);
    return SetRatingStar($star_rating_exco_access);
});
  
 $star_rating_exco_qos.on('click',function(){
  
    $star_rating_exco_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_exco').val();
    var turnValue = $('#turn_exco').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var excoValue = totalValue / 15 * 5;
    $('#totalRating_exco').text(excoValue.toFixed(1));
    $('#exco').val(excoValue);
    setGeneralStar($star_rating_exco);
    return SetRatingStar($star_rating_exco_qos);
});
  
    $star_rating_exco_turn.on('click',function(){
  
    $star_rating_exco_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var accessValue = $('#access_exco').val();
    var qosValue = $('#qos_exco').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var excoValue = totalValue / 15 * 5;
    $('#totalRating_exco').text(excoValue.toFixed(1));
    $('#exco').val(excoValue);
    setGeneralStar($star_rating_exco);
    return SetRatingStar($star_rating_exco_turn);
});
  
    $star_rating_leg_turn.on('click',function(){
  
    $star_rating_leg_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_legal').val();
    var accessValue = $('#access_legal').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var legalValue = totalValue / 15 * 5;
    
    $('#totalRating_legal').text(legalValue.toFixed(1));
    $('#legal').val(legalValue);
    setGeneralStar($star_rating_leg);
    return SetRatingStar($star_rating_leg_turn);
});

$star_rating_leg_access.on('click',function(){
  
    $star_rating_leg_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_legal').val();
    var turnValue = $('#turn_legal').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var legalValue = totalValue / 15 * 5;
    $('#totalRating_legal').text(legalValue.toFixed(1));
    $('#legal').val(legalValue);
    setGeneralStar($star_rating_leg);
    return SetRatingStar($star_rating_leg_access);
});

$star_rating_leg_qos.on('click',function(){
  
    $star_rating_leg_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_legal').val();
    var turnValue = $('#turn_legal').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var legalValue = totalValue / 15 * 5;
    $('#totalRating_legal').text(legalValue.toFixed(1));
    $('#legal').val(legalValue);
    setGeneralStar($star_rating_leg);
    return SetRatingStar($star_rating_leg_qos);
});


$star_rating_it_access.on('click',function(){
  
    $star_rating_it_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_it').val();
    var turnValue = $('#turn_it').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var itValue = totalValue / 15 * 5;
    $('#totalRating_it').text(itValue.toFixed(1));
    $('#it').val(itValue);
    setGeneralStar($star_rating_it);
    return SetRatingStar($star_rating_it_access);
});

$star_rating_it_qos.on('click',function(){
  
    $star_rating_it_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_it').val();
    var turnValue = $('#turn_it').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var itValue = totalValue / 15 * 5;
    $('#totalRating_it').text(itValue.toFixed(1));
    $('#it').val(itValue);
    setGeneralStar($star_rating_it);
    return SetRatingStar($star_rating_it_qos);
});

$star_rating_it_turn.on('click',function(){
  
    $star_rating_it_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var accessValue = $('#access_it').val();
    var qosValue = $('#qos_it').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var itValue = totalValue / 15 * 5;
    $('#totalRating_it').text(itValue.toFixed(1));
    $('#it').val(itValue);
    setGeneralStar($star_rating_it);
    return SetRatingStar($star_rating_it_turn);
});


  $star_rating_fin_access.on('click',function(){
  
    $star_rating_fin_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_finance').val();
    var turnValue = $('#turn_finance').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var financeValue = totalValue / 15 * 5;
    $('#totalRating_finance').text(financeValue.toFixed(1));
    $('#finance').val(financeValue);
    setGeneralStar($star_rating_fin);
    return SetRatingStar($star_rating_fin_access);
});

$star_rating_fin_qos.on('click',function(){
  
    $star_rating_fin_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_finance').val();
    var turnValue = $('#turn_finance').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var financeValue = totalValue / 15 * 5;
    $('#totalRating_finance').text(financeValue.toFixed(1));
    $('#finance').val(financeValue);
    setGeneralStar($star_rating_fin);
    return SetRatingStar($star_rating_fin_qos);
});

   $star_rating_fin_turn.on('click',function(){
  
    $star_rating_fin_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_finance').val();
    var accessValue = $('#access_finance').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var financeValue = totalValue / 15 * 5;
    $('#totalRating_finance').text(financeValue.toFixed(1));
    $('#finance').val(financeValue);
    setGeneralStar($star_rating_fin);
    return SetRatingStar($star_rating_fin_turn);
});

  $star_rating_mcc_access.on('click',function(){
  
    $star_rating_mcc_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_mcc').val();
    var turnValue = $('#turn_mcc').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var mccValue = totalValue / 15 * 5;
    $('#totalRating_mcc').text(mccValue.toFixed(1));
    $('#mcc').val(mccValue);
    setGeneralStar($star_rating_mcc);
    return SetRatingStar($star_rating_mcc_access);
});

 $star_rating_mcc_qos.on('click',function(){
  
    $star_rating_mcc_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_mcc').val();
    var turnValue = $('#turn_mcc').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var mccValue = totalValue / 15 * 5;
    $('#totalRating_mcc').text(mccValue.toFixed(1));
    $('#mcc').val(mccValue);
    setGeneralStar($star_rating_mcc);
    return SetRatingStar($star_rating_mcc_qos);
});

$star_rating_mcc_turn.on('click',function(){
  
    $star_rating_mcc_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_mcc').val();
    var accessValue = $('#access_mcc').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var mccValue = totalValue / 15 * 5;
    $('#totalRating_mcc').text(mccValue.toFixed(1));
    $('#mcc').val(mccValue);
    setGeneralStar($star_rating_mcc);
    return SetRatingStar($star_rating_mcc_turn);
});


$star_rating_hr_access.on('click',function(){
  
    $star_rating_hr_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_hr').val();
    var turnValue = $('#turn_hr').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var hrValue = totalValue / 15 * 5;
    $('#totalRating_hr').text(hrValue.toFixed(1));
    $('#hr').val(hrValue);
    setGeneralStar($star_rating_hr);
    return SetRatingStar($star_rating_hr_access);
});

$star_rating_hr_qos.on('click',function(){
  
    $star_rating_hr_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_hr').val();
    var turnValue = $('#turn_hr').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var hrValue = totalValue / 15 * 5;
    $('#totalRating_hr').text(hrValue.toFixed(1));
    $('#hr').val(hrValue);
    setGeneralStar($star_rating_hr);
    return SetRatingStar($star_rating_hr_qos);
});

$star_rating_hr_turn.on('click',function(){
  
    $star_rating_hr_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_hr').val();
    var accessValue = $('#access_hr').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var hrValue = totalValue / 15 * 5;
    $('#totalRating_hr').text(hrValue.toFixed(1));
    $('#hr').val(hrValue);
    setGeneralStar($star_rating_hr);
    return SetRatingStar($star_rating_hr_turn);
});


$star_rating_anch_ops_access.on('click',function(){
  
    $star_rating_anch_ops_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_anch_ops').val();
    var turnValue = $('#turn_anch_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var anch_opsValue = totalValue / 15 * 5;
    $('#totalRating_anch_ops').text(anch_opsValue.toFixed(1));
    $('#anch_ops').val(anch_opsValue);
    setGeneralStar($star_rating_anch_ops);
    return SetRatingStar($star_rating_anch_ops_access);
});

$star_rating_anch_ops_qos.on('click',function(){
  
    $star_rating_anch_ops_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_anch_ops').val();
    var turnValue = $('#turn_anch_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var anch_opsValue = totalValue / 15 * 5;
    $('#totalRating_anch_ops').text(anch_opsValue.toFixed(1));
    $('#anch_ops').val(anch_opsValue);
    setGeneralStar($star_rating_anch_ops);
    return SetRatingStar($star_rating_anch_ops_qos);
});

$star_rating_anch_ops_turn.on('click',function(){
  
    $star_rating_anch_ops_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_anch_ops').val();
    var accessValue = $('#access_anch_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var anch_opsValue = totalValue / 15 * 5;
    $('#totalRating_anch_ops').text(anch_opsValue.toFixed(1));
    $('#anch_ops').val(anch_opsValue);
    setGeneralStar($star_rating_anch_ops);
    return SetRatingStar($star_rating_anch_ops_turn);
});


$star_rating_fx_ops_access.on('click',function(){
  
    $star_rating_fx_ops_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_fx_ops').val();
    var turnValue = $('#turn_fx_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var fx_opsValue = totalValue / 15 * 5;
    $('#totalRating_fx_ops').text(fx_opsValue.toFixed(1));
    $('#fx_ops').val(fx_opsValue);
    setGeneralStar($star_rating_fx_ops);
    return SetRatingStar($star_rating_fx_ops_access);
});

$star_rating_fx_ops_qos.on('click',function(){
  
    $star_rating_fx_ops_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_fx_ops').val();
    var turnValue = $('#turn_fx_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var fx_opsValue = totalValue / 15 * 5;
    $('#totalRating_fx_ops').text(fx_opsValue.toFixed(1));
    $('#fx_ops').val(fx_opsValue);
    setGeneralStar($star_rating_fx_ops);
    return SetRatingStar($star_rating_fx_ops_qos);
});

$star_rating_fx_ops_turn.on('click',function(){
  
    $star_rating_fx_ops_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_fx_ops').val();
    var accessValue = $('#access_fx_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var fx_opsValue = totalValue / 15 * 5;
    $('#totalRating_fx_ops').text(fx_opsValue.toFixed(1));
    $('#fx_ops').val(fx_opsValue);
    setGeneralStar($star_rating_fx_ops);
    return SetRatingStar($star_rating_fx_ops_turn);
});


$star_rating_try_ops_access.on('click',function(){
  
    $star_rating_try_ops_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_try_ops').val();
    var turnValue = $('#turn_try_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var try_opsValue = totalValue / 15 * 5;
    $('#totalRating_try_ops').text(try_opsValue.toFixed(1));
    $('#try_ops').val(try_opsValue);
    setGeneralStar($star_rating_try_ops);
    return SetRatingStar($star_rating_try_ops_access);
});

$star_rating_try_ops_qos.on('click',function(){
  
    $star_rating_try_ops_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_try_ops').val();
    var turnValue = $('#turn_try_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var try_opsValue = totalValue / 15 * 5;
    $('#totalRating_try_ops').text(try_opsValue.toFixed(1));
    $('#try_ops').val(try_opsValue);
    setGeneralStar($star_rating_try_ops);
    return SetRatingStar($star_rating_try_ops_qos);
});

$star_rating_try_ops_turn.on('click',function(){
  
    $star_rating_try_ops_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_try_ops').val();
    var accessValue = $('#access_try_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var try_opsValue = totalValue / 15 * 5;
    $('#totalRating_try_ops').text(try_opsValue.toFixed(1));
    $('#try_ops').val(try_opsValue);
    setGeneralStar($star_rating_try_ops);
    return SetRatingStar($star_rating_try_ops_turn);
});

$star_rating_mfb_ops_access.on('click',function(){
  
    $star_rating_mfb_ops_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_mfb_ops').val();
    var turnValue = $('#turn_mfb_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var mfb_opsValue = totalValue / 15 * 5;
    $('#totalRating_mfb_ops').text(mfb_opsValue.toFixed(1));
    $('#mfb_ops').val(mfb_opsValue);
    setGeneralStar($star_rating_mfb_ops);
    return SetRatingStar($star_rating_mfb_ops_access);
});

$star_rating_mfb_ops_qos.on('click',function(){
  
    $star_rating_mfb_ops_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_mfb_ops').val();
    var turnValue = $('#turn_mfb_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var mfb_opsValue = totalValue / 15 * 5;
    $('#totalRating_mfb_ops').text(mfb_opsValue.toFixed(1));
    $('#mfb_ops').val(mfb_opsValue);
    setGeneralStar($star_rating_mfb_ops);
    return SetRatingStar($star_rating_mfb_ops_qos);
});

$star_rating_mfb_ops_turn.on('click',function(){
  
    $star_rating_mfb_ops_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_mfb_ops').val();
    var accessValue = $('#access_mfb_ops').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var mfb_opsValue = totalValue / 15 * 5;
    $('#totalRating_mfb_ops').text(mfb_opsValue.toFixed(1));
    $('#mfb_ops').val(mfb_opsValue);
    setGeneralStar($star_rating_mfb_ops);
    return SetRatingStar($star_rating_mfb_ops_turn);
});

$star_rating_resource_access.on('click',function(){
  
    $star_rating_resource_access.siblings('input.rating-value').val($(this).data('rating'));
    var accessValue = $(this).data('rating');
    var qosValue = $('#qos_resource').val();
    var turnValue = $('#turn_resource').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var resourceValue = totalValue / 15 * 5;
    $('#totalRating_resource').text(resourceValue.toFixed(1));
    $('#resource').val(resourceValue);
    setGeneralStar($star_rating_resource);
    return SetRatingStar($star_rating_resource_access);
});

$star_rating_resource_qos.on('click',function(){
  
    $star_rating_resource_qos.siblings('input.rating-value').val($(this).data('rating'));
    var qosValue = $(this).data('rating');
    var accessValue = $('#access_resource').val();
    var turnValue = $('#turn_resource').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var resourceValue = totalValue / 15 * 5;
    $('#totalRating_resource').text(resourceValue.toFixed(1));
    $('#resource').val(resourceValue);
    setGeneralStar($star_rating_resource);
    return SetRatingStar($star_rating_resource_qos);
});

$star_rating_resource_turn.on('click',function(){
  
    $star_rating_resource_turn.siblings('input.rating-value').val($(this).data('rating'));
    var turnValue = $(this).data('rating');
    var qosValue = $('#qos_resource').val();
    var accessValue = $('#access_resource').val();
    var totalValue = parseInt(accessValue) + parseInt(qosValue) + parseInt(turnValue);
    var resourceValue = totalValue / 15 * 5;
    $('#totalRating_resource').text(resourceValue.toFixed(1));
    $('#resource').val(resourceValue);
    setGeneralStar($star_rating_resource);
    return SetRatingStar($star_rating_resource_turn);
});

// $star_rating.on('click', function() {
//  $star_rating.siblings('input.rating-value').val($(this).data('rating'));
//  return SetRatingStar();
//});


/*for alert*/
    $("#activate-alert").delay(4000).slideUp(200, function() {
    $(this).alert('close');
});
/*end of alert*/

/*for datatable*/
//var table = $('#datatable').DataTable({
//
//         dom: 'Bfrtip',
//        buttons: [
//            'copyHtml5',
//            'excelHtml5',
//            'csvHtml5',
//            'pdfHtml5'
//        ]
//    });
//   
//var table = $('#datatable').DataTable({
//
//"processing": true,	
//"createdRow": function( row, data, dataIndex ) {
//$('td', row).first().html(dataIndex + 1);
//},
//"columnDefs": [
//{
//   "targets": ["not-search-orderable"],
//   "searchable": false,
//   "orderable": false
//},
//     	       {
//"targets": "_all",
//"className": "dt-body-center"
//                       }
//   	],
//"buttons":[
//            'copyHtml5',
//            'excelHtml5',
//            'csvHtml5',
//            'pdfHtml5',
//            'printHtml5'
//        ]
//   
//
//   });
   $('#datatable').DataTable( {
                            dom: 'Bfrtip',
                            buttons: [
                                    'copy', 'csv', 'excel', 'pdf', 'print'
                            ]
                    } );
// sort / search callback function. The function inside rigenerate the progressive number 
table.on( 'order.dt search.dt', function () {
table.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
           cell.innerHTML = i+1;
       } );
   } ).draw();

// Add event listener for opening and closing details
$('#datatable tbody').on('click', 'td.details', function () {
   var tr = $(this).closest('tr');
   var div = $(this).closest('td').find('div');
   var row = table.row( tr );

   // close the detail
   
$('#datatable').dataTable( {
    paging: false,
    searching: false
} );
   
   if ( $.fn.dataTable.isDataTable( '#datatable' ) ) {
    table = $('#datatable').DataTable();
}
else {
    table = $('#datatable').DataTable( {
        paging: false
    } );
}
   
   $('#datatable tbody tr.shown').each(function (index, element) {

   	if (tr[0] != element)
   	{
   	var rowindex = $(element).index();
       	var cRow = table.row(rowindex);

       	cRow.child.hide();
       	$(element).removeClass('shown');
   	}
   } );

   if ( row.child.isShown() ) {
       // This row is already open - close it
       row.child.hide();
       tr.removeClass('shown');
   }
   else {
       // Open this row
       row.child( $(div).html() ).show();
       tr.addClass('shown');
   }
} );
/*end datatable*/

        var data1 = [];
        var totalPoints = 300;
        function GetData() {
        data1.shift();
        while (data1.length < totalPoints) {
        var prev = data1.length > 0 ? data1[data1.length - 1] : 50;
        var y = prev + Math.random() * 10 - 5;
        y = y < 0 ? 0 : (y > 100 ? 100 : y);
        data1.push(y);
        }
    var result = [];
    for (var i = 0; i < data1.length; ++i) {
        result.push([i, data1[i]])
        }
    return result;
    }
    var updateInterval = 100;
    var plot = $.plot($("#demo-realtime"), [
            GetData()], {
            series: {
                lines: {
                    show: true,
                    fill: true
                },
                shadowSize: 0
            },
            yaxis: {
                min: 0,
                max: 100,
                ticks: 10
            },
            xaxis: {
                show: true
            },
            grid: {
                hoverable: true,
                clickable: true,
                tickColor: "#eeeeee",
                borderWidth: 1,
                borderColor: "#eeeeee"
            },
            colors: ["#5abcdf", "#ff8673"],
            tooltip: true,
            tooltipOpts: {
                defaultTheme: false
            }
        });
        function update() {
            plot.setData([GetData()]);
            plot.draw();
            setTimeout(update, updateInterval);
        }
        update();

});
