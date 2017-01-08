<h3><?php echo $heading_title; ?></h3>
<div id="pricingWrap" class="purchase">
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
      <a href="<?php echo $product['href'];?>">
            <?php 
              $attribute_groups=$product['attribute_groups'];
              $c=0;
              $altclass= ($c%2==0)?'alt':'';
              $c++;?>
                <ul class="priceTable <?php echo $altclass;?>">
                  <li class="title"><?php echo $product['name'];;?></li>
                  <li class="price"><?php echo $product['price'];;?>€/mes</li>
                  <ul class="features">
                  <?php if ($attribute_groups) { ?>
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <?php echo $attribute_group['name']; ?>
                      <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <li><?php echo $attribute['name']; ?></li>
                        <li><?php echo $attribute['text']; ?></li>
                      <?php } ?>
                      <li>IP pública (IPv4)</li>
                  </ul>
                  <?php } ?>
            <?php } ?>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
      </ul>
    </a>
  </div>
  <?php } ?>
</div>
</div>
