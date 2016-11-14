/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function($) {
    "use strict";
    
    var jsonBody    = {};
    $(document).ready(function(){
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
                        bootbox.alert('<h4>Task Performed! '+response.tookan.customer_name+'</h4>', function(){
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
            $.ajax({
                type:   'POST',
                url:    'http://localhost/newgmanzo/order/start',
                data:   serialFormFlow,
                success: function(response){
                    cartStackFlow().getCartFlowId();
                    if(response.status == true){
                        $('#view-alert').find('#monitor').html('<a href="'+
                                response.tokan.delivery_tracing_link+'">click</a>');
                        $('#view-alert').find('#order_id').html(response.tokan.order_id)
                        $('#view-alert').fadeIn();
                    }
                    else{
                        bootbox.alert('Error Message:'+JSON.stringify(response.tokan), function(){
                            window.location.reload();
                        });
                    }
                }
            });
        });
        
        $('#updateShoppingCart').on('click', function(e){
            e.preventDefault();
            var quantity = [];
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

})(jQuery);

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