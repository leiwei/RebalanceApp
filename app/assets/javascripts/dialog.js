/**
 * Created with JetBrains RubyMine.
 * User: Milo_Lei
 * Date: 1/7/13
 * Time: 12:16 AM
 * To change this template use File | Settings | File Templates.
 */

function position(elem,l,t){
    var isIE6 = !-[1,] && !window.XMLHttpRequest;
    if(isIE6){
        var style = elem.style,
            dom  = '(document.documentElement)',
            left = l - document.documentElement.scrollLeft,
            top  = t - document.documentElement.scrollTop;
        style.position = 'absolute';
        style.removeExpression('left');
        style.removeExpression('top');
        style.setExpression('left', 'eval(' + dom + '.scrollLeft + ' + left + ') + "px"');
        style.setExpression('top', 'eval(' + dom + '.scrollTop + ' + top + ') + "px"');
    }else{
        elem.style.position = 'fixed';
    }
}

function windows_dialog(msg,sign,ok,can){
    var c_=false;//是否已经关闭窗口，解决自动关闭与手动关闭冲突
    sign=sign||"";
    var s="<iframe id='mask_layer' src='about:blank'></iframe><div id='scs_alert'><div id='alert_top'></div><div id='alert_bg'><table width='260' align='center' border='0' cellspacing='0' cellpadding='1'><tr>";
    if (sign!="")s+="<td width='45'><div id='inco_"+sign+"'></div></td>";
    // s+="<td id='alert_txt'>"+msg+"</td></tr></table>";
    s+=msg+"</tr></table>";
    if (sign=="confirm"){
        s+="<a href='javascript:void(0)' id='confirm_ok'>OK</a><a href='javascript:void(0)' id='confirm_cancel'>Cancel</a>";
    }else{
        s+="<a href='javascript:void(0)' id='alert_ok'>OK</a>"
    }
    s+="</div><div id='alert_foot'></div></div>";
    $("body").append(s);
    $("#scs_alert").css("margin-top",-($("#scs_alert").height()/2)+"px"); //使其垂直居中
    $("#scs_alert").focus(); //获取焦点，以防回车后无法触发函数
    position(document.getElementById('mask_layer'),0,0);
    position(document.getElementById('scs_alert'),$(window).width()/2,$(window).height()/2);
    if (typeof can == "number"){
        //定时关闭提示
        setTimeout(function(){
            close_info();
        },can*1000);
    }
    function close_info(){
        //关闭提示窗口

        if(!c_){
            $("#mask_layer").fadeOut("fast",function(){
                $("#scs_alert").remove();
                $(this).remove();
            });
            c_=true;
        }
    }
    $("#alert_ok").click(function(){
        debugger;
        close_info();
        if(typeof(ok)=="function")ok();
    });
    $("#confirm_ok").click(function(){
        close_info();
        if(typeof(ok)=="function")ok();
    });
    $("#confirm_cancel").click(function(){
        close_info();
        if(typeof(can)=="function")can();
    });
    function modal_key(e){
        e = e||event;
        close_info();
        var code = e.which||event.keyCode;
        if (code == 13 || code == 32){if(typeof(ok)=="function")ok()}
        if (code == 27){if(typeof(can)=="function")can()}
    }
    //绑定回车与ESC键
    if (document.attachEvent)
        document.attachEvent("onkeydown", modal_key);
    else
        document.addEventListener("keydown", modal_key, true);
}