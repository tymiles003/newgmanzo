{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
    <!-- Panel Inline Form -->
      <div class="panel">
        <header class="panel-heading">
          <h3 class="panel-title">
            <strong>Create Category(ies)</strong>
          </h3>
        </header>
        <div class="panel-body">
          <div class="example-wrap">
            <h4 class="example-title">Basic Category Form Without Label</h4>
            <div class="example">
              <form class="form-inline" action="{{url('backend/products/category')}}" method="post">
                <div class="form-group">
                  <label class="sr-only" for="inputUnlabelUsername">Category Name</label>
                  <input type="text" class="form-control" id="inputUnlabelUsername" placeholder="Category Name" autocomplete="off" name="category_name" />
                </div>

                <div class="form-group">
                  <label class="sr-only" for="inputUnlabelPassword">Description</label>
                  <input type="text" class="form-control" name="description" id="inputUnlabelPassword" placeholder="Description of Category" autocomplete="off" />
                </div>

                <div class="form-group">
                  <button type="submit" class="btn btn-primary btn-outline">Submit Category</button>
                </div>
              </form>
            </div>
            <p>&nbsp;</p>
              <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="exampleCategory">
            <thead>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Description(s)</th>
                <th>Action(s)</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Description(s)</th>
                <th>Action(s)</th>
              </tr>
            </tfoot>
            <tbody>
            {% for keys, values in categories %}
              <tr>
                <td>{{keys + 1}}</td>
                <td>{{values['category_name']}}</td>
                <td>{{values['description']}}</td>
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
