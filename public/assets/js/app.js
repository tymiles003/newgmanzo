/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function($) {
    "use strict";
    
    var jsonBody    = {};
    $(document).ready(function(){
        
        $("#pick_date").datetimepicker({
            format:'m/d/Y H:i:s'
        });
        //starting the pick up and delivery task
        $(document).on('click','button#createTask', function(e){
            e.preventDefault();
            var clonePickUp;
            var formSerialize   = $('#pickUpDeliver').serialize();
            $.ajax({
                type:   'POST',
                url:    'http://localhost/newgmanzo/task',
                data:   formSerialize,
                jsonType: 'json',
                beforeSend: function(){
                    clonePickUp = $('#pickUpDeliver').clone(true);
                    $('#pickUpDeliver').find('input, textarea').each(function(k,v){
                        if(!$.trim($(v).val())){
                            var taskField   = $.trim($(v).attr('name')).split('_');
                            window.alert(ucwords(taskField[0]+' '+taskField[1])+' is empty');
                            return false;
                        }
                        $('#pickUpDeliver').html('Please Wait! Task Processing...');
                    })
                },
                success:    function(response,status,xhr){
                    //if(response.task == 'OK'){
                        var stringJSON  = $.parseJSON(JSON.stringify(response))
                        bootbox.alert('<h4>Task Performed! '+stringJSON.tookan.customer_name+'</h4>', function(){
                            $('#pickUpModal').modal('hide');
                            //$('#pickUpModal').html(clonePickUp);
                            window.location.reload();
                        });
                    //}
                },
                error:      function(xhr, status, error){
                    window.alert(JSON.stringify(error));
                },
                complete:   function(xhr,status){
                    //$('#pickUpModal').modal('hide');
                }
            });
        });
        
        $('#pickUpModal').on('hidden.bs.modal', function(){
            //window.location.reload();
        });
        
        $(document).on('click','#loginToProceed', function(){
            var formVarString   = $('#picklogin').serialize();
            $.post('http://localhost/newgmanzo/login/ajaxLogin', formVarString, function(data){
                var StringJson  = $.parseJSON(JSON.stringify(data));
                if(StringJson.status == 'OK'){
                    $('#picklogin').text('Please Wait! Checking...');
                    setTimeout(function(){
                        $('#pickUpModal').modal('hide');
                        window.location.href = 'http://localhost/newgmanzo/order'
                    }, 2000);
                }
                else{
                    window.alert('Not Valid Details');
                }
            })
        })
//        $('#pick_date').datetimepicker({
//            format:'m/d/Y H:i:s',
//        });
        
        $('#place-order').on('click', function(e){
            e.preventDefault();
            var serialFormFlow  = $('#billing-form').serialize();
            var formVarNow      = $('#billing-form');
            var emptyFields     = formVarNow.filter(function(){
                return $.trim(this.value) === "";
            });
            if(emptyFields.length == 0){
                alert('Empty Field');
            }
            else{
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/order/start',
                    data:   serialFormFlow,
                    success: function(response){
                        cartStackFlow().getCartFlowId();
                        var stookan = $.parseJSON(JSON.stringify(response));
                        alert(JSON.stringify(response.tookan.message));
                        if(response.status){
                            $('.view-alert').addClass('show').removeClass('hide').find('#monitor')
                                    .html('<a href="'+response.tookan.data.delivery_tracing_link+'">click</a>');
                            $('.view-alert').find('#order_id').html(response.data.trans_id);
                            $('.view-alert').removeClass('hide').fadeIn();
                        }
                        else{
                            bootbox.alert('Error Message:'+JSON.stringify(response.tookan), function(){
                                window.location.reload();
                            });
                        }
                        $("#place-order").text("PLACE ORDER NOW");
                    }
                });
            }
        });
        
        $('#updateShoppingCart').on('click', function(e){
            e.preventDefault();
            var quantity = [];
            bootbox.alert('<strong style="color:white">Please wait. Updating in Progress</strong>')
            $.each($('.qty_pack'), function(index, element){
                quantity.push(element.value);
            });
            $.post('http://localhost/newgmanzo/checkout/cartShow',
            {'quantity[]': quantity}, function(data){
                var stackFlow   = $.parseJSON(JSON.stringify(data));
                if(stackFlow.status == true){
                    $('#show-updated').addClass('show');
                    setTimeout(function(){
                        window.location.reload();
                    }, 2000);
                }
            });
        });
        
        $('.singleToCart > .plus, .singleToCart > .minus').on('click', function(e){
            e.preventDefault();
            var cartPriceVar    = $('#price-detail').text().valueOf();
            var cartPriceMulti  = parseInt(cartPriceVar) * parseInt($('.qty-num').val());
            $('#price-detail').text(cartPriceMulti + '.00');
        })
        
        $('#singleAddToCart').on('click', function(e){
            e.preventDefault();
            var quantity    = $('.qty-num').val();
            var itemImage   = $('#item0_img').attr('src');
            var product_id  = $('#item0_pro_id').val();
            var itemName    = $('#item0_name').val();
            var itemPrice   = $('#item0_price').val();
            $.ajax({
                type:   'POST',
                url:    'http://localhost/newgmanzo/product/ajaxToCart',
                data:   {
                    item_src: itemImage, 
                    item_name: itemName, 
                    item_product: product_id,
                    item_price: itemPrice,
                    qty: quantity,
                    action: 'add'
                },
                success: function(response){
                    cartStackFlow().getCartFlowId();
                }
            });
        });
        
        $('.cancel').on('click', function(e){
            e.preventDefault();
            var thisVar     = $(this);
            var stringVar   = $(this).attr('id');
            $.post('http://localhost/newgmanzo/checkout/remove',{id:stringVar}, function(data){
                var stringJson  = $.parseJSON(JSON.stringify(data));
                if(stringJson.status == true){
                    thisVar.parent().closest('tr').remove();
                }
            })
        });
        
        $('.plus, .minus').on('click', function(e){
            e.preventDefault();
            var nextInput   = $(this).parent().next('input');
            var grandTotal  = nextInput.parent().parent();
            var tdTarget    = grandTotal.next().next().closest('td');
            //alert(grandTotal.next().text().substr(1) * nextInput.val());
            var calTdTarget = parseInt(grandTotal.next().text()) * parseInt(nextInput.val());
            tdTarget.html('<span class="cart-grand-total-price">' + calTdTarget + '</span>');
        });
        
        $('.updateSingle').click(function(e){
            e.preventDefault();
            var updateItem  = $(this).attr('id').substring(7);
            var inputNum    = $(this).parent().siblings('input');
        })
        
        $('i.fa-sort-desc').on('click', function(e){
            e.preventDefault();
        })
        
        $('a.addToCart, button.addToCart').on('click', function(evt){
            evt.preventDefault();
            var tracker = $(this).attr('id');
            cartStackFlow().setCartFlowId(tracker);
            cartStackFlow().getCartFlowId();
            cartStackFlow().getTotalAmount();
        });
        
        $('#basketMouth').on('click', function(evt){
            evt.preventDefault();
            cartStackFlow().showCartFlow();
        })
        
        $(document).on('click','#remove_qty', function(evt){
            evt.preventDefault();
            cartStackFlow().removeItemFlow($(this).attr('title'));
            cartStackFlow().getCartFlowId();
            cartStackFlow().getTotalAmount();
        })
        
        $(document).on('click','#empty', function(evt){
            evt.preventDefault();
            cartStackFlow().clearCartFlow();
            cartStackFlow().getCartFlowId();
            cartStackFlow().getTotalAmount();
        })
        
        cartStackFlow().getCartFlowId();
        cartStackFlow().getTotalAmount();
        
        $('ul#state-packages > li').on('click', function(evt){
            evt.preventDefault();
            var textString  = $(this).text().replace(/\s+/g, '-').toLowerCase();
            if(textString.length > 0 && textString != ''){
                $.post('http://localhost/newgmanzo/setlocal',{state: textString}, function(data){
                    var JSONString  = $.parseJSON(JSON.stringify(data));
                    if(JSONString.status == 'OK'){
                        window.location.href    = 'http://localhost/newgmanzo/stores';
                    }
                    else{
                        alert('We are not available in your state yet!');
                    }
                });
            }
        })
    });
    
    var cartStackFlow   = function(){
        return {
            setCartFlowId : function(id){
                //alert(id);
                var idTracker   = document.getElementById(id);
                var imageSrc    = idTracker.getElementsByTagName("img")[0].src;
                var product_id  = document.getElementById(id+'_pro_id').value;
                var elementName = document.getElementById(id+'_name').value;
                var tagPrice    = document.getElementById(id+'_price').value;
                
                /**
                 * Set Ajax Control for the price tags
                 * @returns {undefined}
                 */
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/product/ajaxToCart',
                    data:   {
                        item_src: imageSrc, 
                        item_name: elementName, 
                        item_product: product_id,
                        item_price: tagPrice,
                        action: 'add'
                    },
                    beforeSend: function(){
                        $('button#'+id).text('Wait! Adding Item');
                    },
                    success: function(response){
                        $('#total_items').html(response);                        
                    },
                    complete: function(xhr, status){
                        //window.alert(JSON.stringify(status));
                        if(xhr.readyState == 4 && xhr.status == 200 && xhr.statusText == 'OK'){
                            $('button#'+id).text('Add To Cart');
                        }
                    }
                });
            },
            getCartFlowId : function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/product/totalItem',
                    data:   {
                        total_cart_items: true, 
                    },
                    success: function(response){
                        $('#total_items').html(response);
                    }
                });
            },
            getTotalAmount: function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/product/grandTotal',
                    data:   {
                        total_cart_items: true, 
                    },
                    success: function(response){
                        $('.value').html(response);
                    }
                });
            },
            showCartFlow : function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/product/showCart',
                    data:   {
                        showcart: true
                    },
                    beforeSend: function(){
                        $('#mycart').html('Please Wait...');
                    },
                    success:function(response){
                        $('#mycart').html(response);
                    }
                })
            },
            clearCartFlow : function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/product/ajaxToCart',
                    data:   {
                        action: 'empty'
                    },
                    success:function(response){
                        $('#mycart').html(response);
                    }
                })
            },
            removeItemFlow: function(product_id){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/newgmanzo/product/ajaxToCart',
                    data:   {
                        item_product:   product_id,
                        action:         'remove'
                    },
                    success:function(response){
                        $('#mycart').html(response);
                    }
                })
            }
        }
    }
    
//    $.get('http://localhost/newgmanzo/order/getAgents', function(data, textStatus){
//        var jsonString  = $.parseJSON(JSON.stringify(data));
//        if(jsonString.status == true){
//            var fleetFlow   = [];
//            var textsFlow   = '';
//            for(var n in jsonString.data){
//                if(jsonString.data[n].hasOwnProperty("fleets")){
//                    for(var i = 0; i < jsonString.data[n].fleets.length; i++){
//                        var fleetStack  = jsonString.data[n].fleets[i];
//                        fleetFlow.push(jsonString.data[n].fleets[i].fleet_name);
//                        textsFlow   += '<div class="clearfix address">';
//                        if(fleetStack.is_available == 1){
//                            textsFlow   += '<span class="contact-i"><i class="fa fa-bicycle"></i></span>';
//                            textsFlow   += '<span class="contact-span">'+jsonString.data[n].fleets[i].
//                            fleet_name.toUpperCase()+'  <span class="badge pull-right"><small>ON</small></span></div>';
//                        }
//                        else{
//                            textsFlow   += '<span class="contact-i"><i class="fa fa-bell-slash"></i></span>';
//                            textsFlow   += '<span class="contact-span">'+jsonString.data[n].fleets[i].
//                            fleet_name.toUpperCase()+'  <span class="badge pull-right"><small>OFF</small></span></div>';
//                        }
//                        //textsFlow   += '<span class="contact-i"><i class="fa fa-map-marker"></i></span>';
//                    }
//                }
//            }
//            $('#list_agents').html(textsFlow);
//        }
//    })
//Customer Controller System
    var getPack    = $('#getPack').DataTable({
        responsive: true,
        "processing": true,
        "serverSide": true,
        "ajax": "http://localhost/newgmanzo/customer/purchases",
        "columnDefs": [{
              "targets": -1,
              "data": null,
              "defaultContent": "<button type='button' class='btn btn-danger getPack'><small>View Now</small></button>"
          }],
        //"sDom": "t" // just show table, no other controls
        "footerCallback": function(row, data, start, end, display){
            var api = this.api(), data, total, pageTotal;
            // Remove the formatting to get integer data for summation
            var intVal  = function(i){
                return typeof i == 'string' ? i.replace(/[\$,]/g, '')*1 : typeof i === 'number' ? i : 0;
            };

            //Total Pages over all
            total   = api.column(3).data().reduce(function(a,b){
                return intVal(a) + intVal(b);
            }, 0);

            //Total over this page
            pageTotal   = api.column(3, {page:'current'}).data().reduce(function(a,b){
                return intVal(a) + intVal(b);
            }, 0);

            //update footer
            $(api.column(3).footer()).html(pageTotal+' $('+total+' Total)');
        }
    });
    
    //Customer Controller System
    var getCustomer    = $('#getCustomers').DataTable({
        responsive: true,
        "processing": true,
        "serverSide": true,
        "ajax": "http://localhost/newgmanzo/customer/history",
        "columnDefs": [{
              "targets": -1,
              "data": null,
              "defaultContent": "<button type='button' class='btn btn-default btn-danger ordernow'><small>Track Now</small></button>"
          }]
        //"sDom": "t" // just show table, no other controls
    });
    
    //Click to set customer for order
    $('#getCustomers tbody').on('click', 'button.ordernow', function(){
        var dataRow = getCustomer.row($(this).parents('tr')).data();
        var stringRowData   = {action : 'remove', register_id: dataRow[6]};
        if(dataRow[6].length == 0 || dataRow[6] == ''){
            window.alert("Seems tracking link is not available");
        }
        else{
            var windowL = window.open(dataRow[6], '_blank');
            windowL.focus();
        }
    });
    
    //Click to set customer for order
    $('#getPack tbody').on('click', 'button.getPack', function(){
        var dataRow = getPack.row($(this).parents('tr')).data();
        var tr = $(this).closest('tr');
        var row = getPack.row( tr );

        if ( row.child.isShown() ) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        }
        else {
            // Open this row

            //row.child(formatJsonString(row.data())).show();
            row.child(formatJsonString(dataRow[4])).show();
            tr.addClass('shown');
        }
    });
})(jQuery);

/* Formatting function for row details - modify as you need */
function formatJsonString(d){
    var tableFlow       = '';
    var taskStringFlow  = [];
    var JsonStringFlow  = $.parseJSON(d);
    for(var n in JsonStringFlow){
        taskStringFlow.push(JsonStringFlow[n]);
    }

    tableFlow = '<table cellpadding="5" cellspacing="0" border="0" class="table table-condensed" style="padding-left:50px; font-size:13px;">';

    for(var i in taskStringFlow){
        tableFlow += '<tr style="border:none !important;">'+
            '<td style="border:none !important;">'+taskStringFlow[i].name+'</td>'+
            '<td style="border:none !important;"><img src="'+taskStringFlow[i].image+'" class="img img-responsive" style="width:10%;" /></td>'+
            '<td style="border:none !important;">'+taskStringFlow[i].qty+'</td>'+
            '<td style="border:none !important;">'+taskStringFlow[i].price+'</td>'+
            '<td style="border:none !important;">'+parseInt(taskStringFlow[i].qty) * parseInt(taskStringFlow[i].price)+'</td>'+
        '</tr>'
    }
    tableFlow += '</table>';
    return tableFlow;
}

function format ( d ) {
    // `d` is the original data object for the row
    return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'+
        '<tr>'+
            '<td>Full name:</td>'+
            '<td>'+d.name+'</td>'+
        '</tr>'+
        '<tr>'+
            '<td>Extension number:</td>'+
            '<td>'+d.extn+'</td>'+
        '</tr>'+
        '<tr>'+
            '<td>Extra info:</td>'+
            '<td>And any further details here (images etc)...</td>'+
        '</tr>'+
    '</table>';
}

//Functions
/**
 * @param {type} str
 * @returns {String}
 */
function ucwords(str) {
 return (str + '')
    .replace(/^([a-z\u00E0-\u00FC])|\s+([a-z\u00E0-\u00FC])/g, function($1) {
      return $1.toUpperCase();
    });
}
