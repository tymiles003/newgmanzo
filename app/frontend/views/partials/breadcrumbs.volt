
{% block content %}
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
        <ul class="breadcrumb">
            <li><a href="{{url('order')}}"><strong>Dashboard &amp; Order Now</strong></a></li>
            <li><a href="{{url('customer')}}">My Account</a></li>
            <li><a href="{{url('customer/history')}}">Order History</a></li>
            <li><a href="{{url('customer/purchases')}}">Purchase History</a></li>
            <li><a href="{{url('customer/wishList')}}">Wish List</a></li>
        </ul>
        </div>
</div>
{% endblock %}


