<div id="pricingWrap" class="purchase">
<div class="row">
  <?php $c=0;?>
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <?php 
              $attribute_groups=$product['attribute_groups'];
              $altclass =($c%2==0)?'alt':'';
              $c++;
             ?>
                <ul class="priceTable <?php echo $altclass;?>">
                <a href="<?php echo $product['href'];?>">
                  <li class="title"><?php echo $product['name'];;?></li>
                  <li class="price"><?php echo $product['price'];;?>/mes</li>
                  <ul class="features">
                  <?php if ($attribute_groups) { ?>
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <?php if( $attribute_group['name'] == 'Technical'){ ?>
                      <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <li><?php echo $attribute['name']; ?>: <?php echo $attribute['text'];?></li>
                      <?php } ?>
                    <?php } ?>
                    <li>IP pública (IPv4)</li>
                  </ul>
                  <?php } ?>
                <?php } ?>
              </a>
              <li>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
              </div>
              </li>
      </ul>
  </div>
  <?php } ?>
</div>
</div>
