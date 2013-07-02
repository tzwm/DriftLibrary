<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <@include file="head">

        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <script type="text/javascript" src="js/validate.js"></script>
        <style type="text/css">
            label.error{
                color:red;
            }
        </style>
        <script>

            function changeValidateCode(obj) {
                //获取当前的时间作为参数，无具体意义 
                var timenow = new Date().getTime();
                //每次请求需要一个不同的参数，否则可能会返回同样的验证码 
                //这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。 
                obj.src = "randAction?d=" + timenow;
            }
        </script>
    </head>

    <body>
        <!-- <script src="http://code.jquery.com/jquery.js"></script> -->
        <script src="js/bootstrap.min.js"></script>

        <@include file="header.jsp">

        <%
        String re = request.getParameter("flag");
        System.out.println("re is:"+re);
        if(re!=null)
        {
        if(re.equals("1"))
        {
        %>
        <div class="alert alert-success">
            <p>注册成功</p>
        </div>
        <%
        }
        }
        %>        


        <div class="container">
            <form method="post" class="content form-signup" id="form-signup" action="registerAction">
                <h2 class="form-signup-heading"></h2>
                <label for="user_name">用户名</label>
                <input id="user_name" type="text" name="user_name" />

                <label for="user_email">邮箱</label>
                <input id="user_email" type="text"  name="user_email"/>
                <div class="info">
                    <table>
                        <tbody>
                            <tr id="info_email"></tr>
                        </tbody>
                    </table>
                </div>

                <label for="user_password">密码</label>
                <input id="user_password" type="password" name="user_password"/>

                <label for="user_password_confirmation">确认密码</label>
                <input id="user_password_confirmation" type="password" name="user_password_confirmation" />

                <br />
                
                <s:text name="random"></s:text>
                <s:textfield name="rand" id="rand" size="5"></s:textfield>
                <img src="randAction" onclick="changeValidateCode(this)" title="点击图片刷新验证码"/>
                <input id="auth_code" type="text" name="auth_code" />
                
                <br />
                <input class="btn btn-large btn-primary" type="submit" name="commit" value="提交" />

            </form>
        </div>

    </body>
</html>
