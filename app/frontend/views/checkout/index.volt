{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}

<!--Middle Part Start-->
        <div id="content" class="col-sm-12">
        <p>&nbsp;</p>
          <h1 class="title">Shopping Cart</h1>
            <div class="table-responsive">
            {% if session.has('cart_item') %}
              <table class="table">
                <thead>
                  <tr>
                    <th class="text-center">#</th>
                    <th class="text-left">Image</th>
                    <th class="text-left">Product Name</th>
                    
                    <th class="text-left">Quantity</th>
                    <th class="text-right">Unit Price(&#8358;)</th>
                    <th class="text-right">Total(&#8358;)</th>
                  </tr>
                </thead>
                <tbody>
                {% for keys, values in cart_item %}
                  <tr>
                    <td class="romove-item"><a href="#" title="cancel" class="icon cancel" id="{{values['id']}}"><i class="fa fa-times"></i></a></td>
                    <td class="text-center"><a href="javascript:void(0);"><img src="{{values['image']}}" class="img-responsive" style="width:40%" alt=""></a></td>
                    <td class="text-left"><a href="javascript:void(0);"><strong>{{values['name'] | capitalize}}</strong></a><br />
                      </td>
                    
                    <td class="text-left"><div class="input-group btn-block quantity">
                        <input type="text" name="quantity[]" value="{{values['qty']}}" size="1" class="form-control qty_pack" />
                        </div></td>
                    <td class="text-right">{{values['price']}}</td>
                    <td class="text-right">{{values['price'] * values['qty']}}.00</td>
                  </tr>
                  {% endfor %}
                </tbody>
              </table>
              
                <div class="col-sm-4 col-sm-offset-8">
                  <table class="table">
                      <td class="text-right"><h3>Total:</h3></td>
                      <td class="text-right"><h3><strong>&#8358;<?php echo number_format($this->view->grandTotal, 2); ?></strong></h3></td>
                    </tr>
                  </table>
                </div>
              
              <div class="buttons">
                <div class="pull-left"><a href="{{url('stores/')}}" class="btn btn-default btn-lg">Continue Shopping</a></div>
                <div class="pull-left"><button class="btn btn-primary btn-lg" id="updateShoppingCart">Update Cart</button></div>
                <div class="pull-right"><a href="{{url('order/')}}" class="btn btn-danger btn-lg">Proceed To Checkout</a></div>
              </div>
              {% else %}
                <div class="alert alert-warning"><strong>Cart is empty(0). Go Shopping Now.</strong></div>
                {% endif %}
            </div>
</div>

{% endblock %}


