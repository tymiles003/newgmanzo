{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}

<!--Middle Part Start-->
        <div id="content" class="col-sm-12">
          <h1 class="title">Shopping Cart</h1>
            <div class="table-responsive">
            {% if session.has('cart_item') %}
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <td class="text-center">Image</td>
                    <td class="text-left">Product Name</td>
                    <td class="text-left">Model</td>
                    <td class="text-left">Quantity</td>
                    <td class="text-right">Unit Price</td>
                    <td class="text-right">Total</td>
                  </tr>
                </thead>
                <tbody>
                {% for keys, values in cart_item %}
                  <tr>
                    <td class="romove-item"><a href="#" title="cancel" class="icon cancel" id="{{values['id']}}"><i class="fa fa-times"></i></a></td>
                    <td class="text-center"><a href="product.html"><img src="{{values['image']}}" class="img-responsive" style="width:40%" alt=""></a></td>
                    <td class="text-left"><a href="product.html">{{values['name'] | capitalize}} </a><br />
                      <small>Reward Points: 1000</small></td>
                    <td class="text-left">SAM1</td>
                    <td class="text-left"><div class="input-group btn-block quantity">
                        <input type="text" name="quantity" value="1" size="1" class="form-control" />
                        <span class="input-group-btn">
                        <button type="submit" data-toggle="tooltip" title="Update" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                        <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-danger" onClick=""><i class="fa fa-times-circle"></i></button>
                        </span></div></td>
                    <td class="text-right">$230.00</td>
                    <td class="text-right">$230.00</td>
                  </tr>
                  {% endfor %}
                </tbody>
              </table>
              {% else %}
                <div class="alert alert-warning"><strong>Cart is empty(0). Go Shopping Now.</strong></div>
                {% endif %}
            </div>
</div>

{% endblock %}


