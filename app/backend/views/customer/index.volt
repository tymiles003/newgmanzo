{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
<!-- Inline -->
  <style>
    .page-content .dropdown-menu {
      width: 240px;
    }

    .blocks-dropdowns > li {
      margin-bottom: 0px;
    }
    
    @media (min-width: 992px) {
      .blocks-dropdowns > li {
        max-width: 300px;
      }
    }
    
    .blocks-dropdowns .dropdown-menu {
      width: 100%;
    }
  </style>

<div class="panel">
<div class="panel-body">
<div role="tabpanel" id="all_contacts" class="tab-pane active">
                <ul class="list-group">
                {% for keys, values in customers %}
                  <li class="list-group-item">
                    <div class="media">
                      <div class="media-left">
                        <div class="avatar avatar-online">
                          <img alt="..." src="{{url('assets/images/new-avatar.png')}}">
                          <i class="avatar avatar-busy"></i>
                        </div>
                      </div>
                      <div class="media-body">
                        <h4 class="media-heading">
                          {{values.firstname | upper ~' '~values.lastname | upper}}
                          <small>Last Access: 1 hour ago</small>
                        </h4>
                        <p>
                          <i aria-hidden="true" class="icon icon-color wb-map"></i>                          {{values.address | capitalize}}
                        </p>
                        <div>
                          <a href="javascript:void(0)" class="text-action">
                            <i aria-hidden="true" class="icon icon-color wb-envelope"></i>
                          </a>
                          <a href="javascript:void(0)" class="text-action">
                            <i aria-hidden="true" class="icon icon-color wb-mobile"></i>
                          </a>
                          <a href="javascript:void(0)" class="text-action">
                            <i aria-hidden="true" class="icon icon-color bd-twitter"></i>
                          </a>
                          <a href="javascript:void(0)" class="text-action">
                            <i aria-hidden="true" class="icon icon-color bd-facebook"></i>
                          </a>
                          <a href="javascript:void(0)" class="text-action">
                            <i aria-hidden="true" class="icon icon-color bd-dribbble"></i>
                          </a>
                        </div>
                      </div>
                      <div class="media-right">
                        <!--<div class="btn-group dropup">-->
                            <button type="button" class="btn btn-primary btn-default dropdown-toggle dropup" id="exampleBulletDropdown3"
                            data-toggle="dropdown" aria-expanded="false">
                              Developer
                              <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right bullet animate" aria-labelledby="exampleBulletDropdown3" role="menu">
                              <li role="presentation"><a href="javascript:void(0)" role="menuitem">Edit</a></li>
                              <li role="presentation"><a href="javascript:void(0)" role="menuitem">Delete action</a></li>
                              <li role="presentation"><a href="javascript:void(0)" role="menuitem">Wallet</a></li>
                              <li class="divider" role="presentation"></li>
                              <li role="presentation"><a href="javascript:void(0)" role="menuitem">Separated link</a></li>
                            </ul>
                        <!--</div>-->
                      </div>
                    </div>
                  </li>
                  {% endfor %}
                </ul>

                {% if paginator.total_pages > 1 %}
                    {% set controller = this.view.getControllerName() | lower  %}
                    {% set action = this.view.getActionName() | lower %}
                    {% set startIndex = 1, q = search_query | trim %}
                    {% if paginator.total_pages > 5 %}
                        {% if paginator.current > 3 %}
                            {% set startIndex = startIndex + paginator.current - 3 %}
                        {% endif %}
                        {% if paginator.total_pages - paginator.current < 5 %}
                            {% set startIndex = paginator.total_pages - 4 %}
                        {% endif %}
                    {% endif %}
                <nav>
                  <ul class="pagination pagination-no-border">
                    {% if paginator.current > 1 %}
                <li>{{ link_to(controller ~ '?q=' ~ q, 'data-page' : paginator.first, '<i class="fa fa-angle-double-left"></i>', 'title' : 'Go to page ' ~ paginator.next) }}</li>
                {#<li class="prev">{{ link_to('#', 'data-page' : paginator.before, '<i class="fa fa-angle-left"></i>', 'title' : 'Go to page ' ~ paginator.last) }}</li>#}
            {% endif %}
            {% for pageIndex in startIndex..paginator.total_pages %}
                {% if pageIndex is startIndex + 5 %}
                    {% break %}
                {% endif %}

                <li {% if pageIndex is paginator.current %}class="active"{% endif %}>
                    {{ link_to(controller ~ '?q=' ~ q ~ '&p=' ~ pageIndex, pageIndex, 'data-page' : pageIndex, 'title' : 'Go to page ' ~ pageIndex) }}
                </li>
            {% endfor %}

            {% if paginator.current < paginator.total_pages %}
                {#{<li class="next">{{ link_to(controller ~ '?q=' ~ q ~ '&p=' ~ paginator.next, 'data-page' : paginator.next, '<i class="fa fa-angle-right"></i>', 'title' : 'Go to page ' ~ (paginator.next))</li>}#}

                <li>{{ link_to(controller ~ '?q=' ~ q ~ '&p=' ~ paginator.last, 'data-page' : paginator.last, '<i class="fa fa-angle-double-right"></i>', 'title' : 'Go to page ' ~ paginator.last) }}</li>
            {% endif %}
                  </ul>
                  {% endif %}
                </nav>
              </div>
</div>
</div>
{% endblock %}