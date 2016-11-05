/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function($) {
    "use strict";
    
    var jsonBody    = {};
    $(document).ready(function(){
    
        $('#pick_date').datetimepicker({
            format:'m/d/Y H:i:s',
        });
        
        $('#place-order').on('click', function(e){
            e.preventDefault();
            var serialFormFlow  = $('#billing-form').serialize();
            $.ajax({
                type:   'POST',
                url:    'http://localhost/gmanzomulti/order/start',
                data:   serialFormFlow,
                success: function(response){
                    cartStackFlow().getCartFlowId();
                    if(response.status == true){
                        $.post('http://localhost/gmanzomulti/order/fixAssignTeam', {data: serialFormFlow}, function(data){
                            var jsonResult  = $.parseJSON(JSON.stringify(data));
                            if(jsonResult.data.status == 200){
                                $('#view-alert').find('monitor').html('<a href="'+
                                        jsonResult.data.data.delivery_tracing_link+'">click</a>');
                                $('#view-alert').find('order_id').html(jsonResult.order_id)
                                $('#view-alert').fadeIn();
                            }
                        });
                    }
                    else{
                        alert(response.data);
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
            $.post('http://localhost/gmanzomulti/checkout/cartShow',
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
                url:    'http://localhost/gmanzomulti/product/ajaxToCart',
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
            $.post('http://localhost/gmanzomulti/checkout/remove',{id:stringVar}, function(data){
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
        });
        
        $('#basketMouth').on('click', function(evt){
            evt.preventDefault();
            cartStackFlow().showCartFlow();
        })
        
        $(document).on('click','#remove_qty', function(evt){
            evt.preventDefault();
            cartStackFlow().removeItemFlow($(this).attr('title'));
            cartStackFlow().getCartFlowId();
        })
        
        $(document).on('click','#empty', function(evt){
            evt.preventDefault();
            cartStackFlow().clearCartFlow();
            cartStackFlow().getCartFlowId();
        })
        
        cartStackFlow().getCartFlowId();
        
        $('ul#state-packages > li').on('click', function(evt){
            evt.preventDefault();
            var textString  = $(this).text().replace(/\s+/g, '-').toLowerCase();
            if(textString.length > 0 && textString != ''){
                $.post('http://localhost/gmanzomulti/setlocal',{state: textString}, function(data){
                    var JSONString  = $.parseJSON(JSON.stringify(data));
                    if(JSONString.status == 'OK'){
                        window.location.href    = 'http://localhost/gmanzomulti/stores';
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
                    url:    'http://localhost/gmanzomulti/product/ajaxToCart',
                    data:   {
                        item_src: imageSrc, 
                        item_name: elementName, 
                        item_product: product_id,
                        item_price: tagPrice,
                        action: 'add'
                    },
                    success: function(response){
                        $('#total_items').html(response);                        
                    }
                });
            },
            getCartFlowId : function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/gmanzomulti/product/totalItem',
                    data:   {
                        total_cart_items: true, 
                    },
                    success: function(response){
                        $('#total_items').html(response);
                    }
                });
            },
            showCartFlow : function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/gmanzomulti/product/showCart',
                    data:   {
                        showcart: true
                    },
                    success:function(response){
                        $('#mycart').html(response);
                    }
                })
            },
            clearCartFlow : function(){
                $.ajax({
                    type:   'POST',
                    url:    'http://localhost/gmanzomulti/product/ajaxToCart',
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
                    url:    'http://localhost/gmanzomulti/product/ajaxToCart',
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
    
    $.get('http://localhost/gmanzomulti/order/getAgents', function(data, textStatus){
        var jsonString  = $.parseJSON(JSON.stringify(data));
        if(jsonString.status == true){
            var fleetFlow   = [];
            var textsFlow   = '';
            for(var n in jsonString.data){
                if(jsonString.data[n].hasOwnProperty("fleets")){
                    for(var i = 0; i < jsonString.data[n].fleets.length; i++){
                        var fleetStack  = jsonString.data[n].fleets[i];
                        fleetFlow.push(jsonString.data[n].fleets[i].fleet_name);
                        textsFlow   += '<div class="clearfix address">';
                        if(fleetStack.is_available == 1){
                            textsFlow   += '<span class="contact-i"><i class="fa fa-bicycle"></i></span>';
                            textsFlow   += '<span class="contact-span">'+jsonString.data[n].fleets[i].
                            fleet_name.toUpperCase()+'  <span class="badge pull-right"><small>ON</small></span></div>';
                        }
                        else{
                            textsFlow   += '<span class="contact-i"><i class="fa fa-bell-slash"></i></span>';
                            textsFlow   += '<span class="contact-span">'+jsonString.data[n].fleets[i].
                            fleet_name.toUpperCase()+'  <span class="badge pull-right"><small>OFF</small></span></div>';
                        }
                        //textsFlow   += '<span class="contact-i"><i class="fa fa-map-marker"></i></span>';
                    }
                }
            }
            $('#list_agents').html(textsFlow);
        }
    })

})(jQuery);