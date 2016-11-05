{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
<div class="panel">
        <div class="panel-body container-fluid">
          <div class="row row-lg">
            <div class="col-sm-12">
            {{flash.output()}}
              <!-- Example Basic Form -->
              <div class="example-wrap">
                <h4 class="example-title"><strong>Add To Product</strong></h4>
                <div class="example">
                  <form autocomplete="off" action="{{url('backend/products/add')}}" method="post" enctype="multipart/form-data">
                    <div class="form-group row">
                      <div class="col-sm-6">
                        <label class="control-label" for="inputBasicFirstName">Product Title</label>
                        <input type="text" class="form-control input-lg" id="inputBasicFirstName" name="title"
                        placeholder="Type Products Title" autocomplete="off" required />
                      </div>
                      <div class="col-sm-6">
                        <label class="control-label" for="inputBasicLastName">Sub Category</label>
                            <select class="form-control input-lg" required name="sub_category">
                            {% for keys, values in subcarts %}
                                <option value="{{values.sub_category_id}}">{{values.sub_category_name}}</option>
                            {% endfor %}
                              </select>
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label" for="inputBasicEmail"><strong>Product Description</strong></label>
                      <textarea class="form-control input-lg" name="description" placeholder="Briefly Describe Yourself"></textarea>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4">
                          <label class="control-label" for="inputBasicPassword">Purchase Price</label>
                          <input type="text" class="form-control input-lg" id="inputBasicPassword" name="purchase_price"
                          placeholder="Enter Purchase Price" required autocomplete="off" />
                        </div>
                        <div class="col-sm-4">
                          <label class="control-label" for="inputBasicPassword">Sale(s) Price</label>
                          <input type="text" class="form-control input-lg" id="inputBasicPassword" name="sale_price"
                          placeholder="Enter Sales Price" required autocomplete="off" />
                        </div>
                        <div class="col-sm-4">
                          <label class="control-label" for="inputBasicPassword">Delivery Cost</label>
                          <input type="text" class="form-control input-lg" id="inputBasicPassword" name="shipping_cost"
                          placeholder="Enter Delivery Cost" required autocomplete="off" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4">
                          <label class="control-label" for="inputBasicPassword">Brand</label>
                          <input type="text" class="form-control input-lg" id="inputBasicPassword" name="brand"
                          placeholder="Type the brand of Product" autocomplete="off" />
                        </div>
                        <div class="col-sm-4">
                          <label class="control-label" for="inputBasicPassword">Current Stock</label>
                          
                          <input type="text" class="form-control input-lg" id="inputBasicPassword" name="current_stock"
                          placeholder="Enter the current stock" required autocomplete="off" />
                        </div>
                        <div class="col-sm-4">
                          <label class="control-label" for="inputBasicPassword"><strong>Discount (%)</strong></label>
                          <input type="text" class="form-control input-lg" id="inputBasicPassword" name="discount"
                          placeholder="Discount calculated in percentage(%)" autocomplete="off" />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="control-label">Image width size !> 300 &amp; height size !> 300</label>
                        <input type="file" name="front_image" required class="form-control" style="border:none !important;">
                    </div>
                    
                    <div class="form-group">
                      <div class="checkbox-custom checkbox-default">
                        <input type="checkbox" id="inputBasicRemember" checked autocomplete="off"
                        />
                        <label for="inputBasicRemember"><strong>Have you confirmed the input(s)</strong></label>
                      </div>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Submit / Create Product</button>
                    </div>
                  </form>
                </div>
              </div>
              <!-- End Example Basic Form -->
            </div>
        </div>
    </div>
</div>
{% endblock %}
