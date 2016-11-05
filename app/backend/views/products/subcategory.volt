{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
    <!-- Panel Inline Form -->
      <div class="panel">
        <header class="panel-heading">
          <h3 class="panel-title">
            <strong>Create Sub-Category(ies)</strong>
          </h3>
        </header>
        <div class="panel-body">
          <div class="example-wrap">
            <h4 class="example-title">Basic Category Form Without Label</h4>
            <div class="example">
              <form class="form-inline" action="{{url('backend/products/subcategory')}}" method="post">
                <div class="form-group">
                  <label class="sr-only" for="inputUnlabelUsername">Category Name</label>
                  <input type="text" required name="sub_category_name" class="form-control" id="inputUnlabelUsername" placeholder="Category Name" autocomplete="off" name="category_name" />
                </div>

                <div class="form-group">
                  <label class="sr-only" for="inputUnlabelPassword">Name</label>
                  <select class="form-control" name="category_id">
                  {% for keyCat, keyVar in categories %}
                    <option value="{{keyVar['category_id']}}">{{keyVar['category_name']}}</option>
                  {% endfor %}
                  </select>
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn-primary btn-outline">Submit Category</button>
                </div>
              </form>
            </div>
            <p>&nbsp;</p>
              <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="exampleSubCategory">
            <thead>
              <tr>
                <th>#</th>
                <th>Title</th>
                <th>Category(ies)</th>
                <th>Action(s)</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>#</th>
                <th>Title</th>
                <th>Category(ies)</th>
                <th>Action(s)</th>
              </tr>
            </tfoot>
            <tbody>
              {% for keys, values in subcategory %}
              <tr>
                <td>{{keys + 1}}</td>
                <td>{{values.sub_category_name}}</td>
                <td>{{values.category.category_name}}</td>
                <td>$553,536</td>
              </tr>
              {% endfor %}
            </tbody>
          </table>

            </div>
          </div>
        </div>
      </div>
      <!-- End Panel Inline Form -->

{% endblock %}
