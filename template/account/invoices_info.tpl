<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="col-sm-6">
      <h2><?php echo $text_invoice_no; ?> <?php echo $invoiceNumber; ?></h2>
      </div>
      <div class="col-sm-6">
      <div class="col-sm-6">
      <?php if ($payment_methods && $status_id =='1') { ?>
        <p><?php echo $text_payment_method; ?></p>
        <?php foreach ($payment_methods as $payment_method) { ?>
        <div id="payment-method">
          <div class="radio">
            <label>
              <?php if ($payment_method['code'] == $code || !$code) { ?>
              <?php $code = $payment_method['code']; ?>
                <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" checked="checked" />
              <?php } else { ?>
            <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" />
              <?php } ?>
              <?php echo $payment_method['title']; ?>
              <?php if ($payment_method['terms']) { ?>
                (<?php echo $payment_method['terms']; ?>)
              <?php } ?>
            </label>
          </div>
        </div>
        <?php } ?>
      <?php } ?>
      </div>
      <div class="col-sm-6">
      <?php if ($status_id=='1'){?>
        <span class=""><input type="button" id="button-payment-method" class="btn btn-primary" value="<?php echo $text_confirm_payment_method;?>" /></span>
      <?php } else { ?>
        <span class="">Pagada</span>
      <?php } ?>
      </div>
      </div>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left" colspan="2"><?php echo $text_invoice_detail; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left" style="width: 50%;">
              <?php if ($invoiceNumber) { ?>
              <b><?php echo $text_invoice_no; ?></b> <?php echo $invoiceNumber; ?><br />
              <?php } ?>
              <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?><br />
              <b><?php echo $text_facturation_period; ?></b> <?php echo $factPeriod; ?><br />
              <?php if ($order_payment_method) { ?>
              <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
              <b><?php echo $text_payment_method; ?></b> <?php echo $order_payment_method; ?><br />
              <?php } ?>
              <?php if ($shipping_method) { ?>
              <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
              <?php } ?>
            </td>
            <td class="text-left" style="width: 50%;">
              <div class="col-sm-8">
              <?php echo $store_name; ?><br />
              <?php echo $store_owner; ?><br />
              <?php echo $store_address; ?><br />
              <?php echo $store_zip; ?><br />
              <?php echo $text_tax_number; ?></b><?php echo $store_telephone; ?><br />
            </div>
              <div class="col-sm-4">
                <img src="<?php echo $store_logo; ?>" title="<?php echo $store_name; ?>" alt="<?php echo $store_name; ?>" />
              </div>

            </td>
          </tr>
        </tbody>
      </table>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left" style="width: 50%; vertical-align: top;"><?php echo $text_payment_address; ?></td>
            <?php if ($shipping_address) { ?>
            <td class="text-left" style="width: 50%; vertical-align: top;"><?php echo $text_shipping_address; ?></td>
            <?php } ?>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left"><?php echo $payment_address; ?></td>
            <?php if ($shipping_address) { ?>
            <td class="text-left"><?php echo $shipping_address; ?></td>
            <?php } ?>
          </tr>
        </tbody>
      </table>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-left"><?php echo $column_name; ?></td>
              <td class="text-left"><?php echo $column_model; ?></td>
              <td class="text-right"><?php echo $column_quantity; ?></td>
              <td class="text-right"><?php echo $column_price; ?></td>
              <td class="text-right"><?php echo $column_total; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($products as $product) { ?>
            <tr>
              <td class="text-left"><?php echo $product['name']; ?>
                <?php foreach ($product['option'] as $option) { ?>
                <br />
                &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                <?php } ?></td>
              <td class="text-left">
                  <ul class="list-unstyled">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                      <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                      <li><?php echo $attribute['name']; ?>: <?php echo $attribute['text']; ?></li>
                <?php }
                }?>
              <td class="text-right"><?php echo $product['quantity']; ?></td>
              <td class="text-right"><?php echo $product['price']; ?></td>
              <td class="text-right"><?php echo $product['total']; ?></td>
            </tr>
            <?php } ?>
            <?php foreach ($vouchers as $voucher) { ?>
            <tr>
              <td class="text-left"><?php echo $voucher['description']; ?></td>
              <td class="text-left"></td>
              <td class="text-right">1</td>
              <td class="text-right"><?php echo $voucher['amount']; ?></td>
              <td class="text-right"><?php echo $voucher['amount']; ?></td>
            </tr>
            <?php } ?>
          </tbody>
          <tfoot>
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td colspan="3"></td>
              <td class="text-right"><b><?php echo $total['title']; ?></b></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </tfoot>
        </table>
      </div>
      <?php if ($comment) { ?>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left"><?php echo $text_comment; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left"><?php echo $comment; ?></td>
          </tr>
        </tbody>
      </table>
      <?php } ?>
      <h3><?php echo $text_history; ?></h3>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left"><?php echo $column_status; ?></td>
            <td class="text-left"><?php echo $column_date_payed; ?></td>
            <td class="text-left"><?php echo $column_txn; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left"><?php echo $status; ?></td>
            <td class="text-left"><?php if($datePayed) echo $datePayed; ?></td>
            <td class="text-left"><?php if ($txnid) echo $txnid; ?></td>
          </tr>
        </tbody>
      </table>
      <div id="checkout-confirm"></div>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $text_back; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function(){
$('#button-payment-method').click(function() {
    $.ajax({
        url: 'index.php?route=account/gateway/save',
        type: 'post',
        data: $('#payment-method input[type=\'radio\']:checked, #payment-method input[type=\'checkbox\']:checked, #payment-method textarea'),
        dataType: 'json',
        beforeSend: function() {
                $('#button-payment-method').button('loading');
                },
        success: function(json) {
            $('.alert, .text-danger').remove();

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
                $('#button-payment-method').button('reset');
                
                if (json['error']['warning']) {
                    $('#payment-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                }
            } else {
              $('html,body').animate({
                
                  scrollTop: $('#checkout-confirm').offset().top - $('.navbar-header').outerHeight(true) + 1
                }, 1000);
                //return false;
                $.ajax({
                    url: 'index.php?route=account/gateway&invoice_id=<?php echo $invoice_id;?>',
                    dataType: 'html',
                    complete: function() {
                        $('#button-payment-method').button('reset');
                    },
                    success: function(html) {
                        $('#checkout-confirm').html(html);

                                                $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

                                               $('a[href=\'#collapse-checkout-confirm\']').trigger('click');
                                        },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
});
</script>

