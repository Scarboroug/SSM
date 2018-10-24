
<%--
  Created by IntelliJ IDEA.
  User: MengXiaoYang
  Date: 2018/6/11
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <title>产品分类管理</title>
    <link rel="stylesheet" href="../CSS/index.css" />
    <style>
        .flChild>*{
            float:left;
        }
        .frChild>*{
            float:right;
        }
        .fl{
            float:left;
        }
        .clearFix{
            content:"";
            display:block;
            clear:both;
        }
        *{margin:0;padding:0}
        li{
            list-style:none;
            display:block;
            text-align:inherit;
        }
        input,select{

            border:0;
            outline:none;
            font-size:inherit;
            background-color:transparent;
        }

        #head{
            width:100%;
        }
        #head ul li img{
            margin-left:20px;
        }
        #head ul li p{
            margin-left:20px;
            font-size:30px;
            line-height:60px;
        }

        #menu{
            width:100%;
        }
        #menu .menu-main{
            height:43px;
            background-color:#669A83;
            line-height:35px;
            color:#fff;
            width:900px;
            margin-left:20px;
        }
        #menu .menu-main li{
            margin-left:20px;
            font-size:16px;

        }

        #div1{
            width:960px;
            margin:50px auto;
        }

        #child-menu{
            width:100%;
        }
        #child-menu .btns{
            margin-top:20px;
            height:30px;
            width:800px;
            margin-left:20px;
        }
        #child-menu .btns input{
            margin-left:20px;
            height:30px;
            width:80px;
            border-radius:5px;
            background-color:#669A83;
            display:block;
            color:#fff;
            font-size:12px;
        }
        #child-menu .btns input:hover{
            cursor:pointer;
        }

        #child-menu table{

            margin-left:40px;
            margin-top:20px;
            width:860px;
            height:230px;
        }
        #child-menu table tr{


            text-align:center;
        }
        #menu .menu-main input{
            cursor:pointer;
            color: #fff;
            margin-top: 9px;
        }
    </style>
</head>

<body>
<div id="div1">
<div id="head" class="clearFix">
    <ul class=" fl clearFix">
        <li class=" fl">
            <img src="./images/u6.png"/>
        </li>
        <li class=" fl">
            <p>XXX平台</p>
        </li>
    </ul>

</div>

<div id="menu">
    <form>
    <ul class="menu-main flChild clearFix">
        <li>
            <input type="submit" value="会员管理"/>
        </li>
        <li>
            <input type="submit" value="产品管理" formaction="${pageContext.request.contextPath}/toProductList"/>
        </li>
        <li>
            <input type="submit" value="产品分类管理" formaction="${pageContext.request.contextPath}/toProductTypeList"/>
        </li>
        <li>
            <input type="submit" value="产品编目管理"/>
        </li>
    </ul>
    </form>
    <script type="text/javascript">
        function confirmd() {
            var msg = "确定删除该条数据？";
            if (confirm(msg)==true){
                return true;
            }else{
                return false;
            }
        }
    </script>
    <div id="child-menu">
    <form action="" method="post">

        <table border="1" cellspacing="0" rules="all">
            <tr bgcolor="#eaeaea">
                <td><p>选择</p></td>
                <td><p>产品分类编号</p></td>
                <td><p>产品分类名称</p></td>
                <td><p>备注</p></td>
            </tr>
            <c:forEach var="producttypelist" items='${productType_List}' >
                <tr>
                    <td><p><input type="radio" name="productTypeId" value="${producttypelist.productTypeId}"/></p></td>
                    <td><p><c:out value="${producttypelist.productTypeId}"/></p></td>
                    <td><p><c:out value="${producttypelist.productTypeName}"/></p></td>
                    <td><p><c:out value="${producttypelist.productTypeDesc}"/></p></td>
                </tr>
            </c:forEach>
        </table>
        <ul class="btns flChild clearFix">
            <li >
                <input type="submit" name="" value="添加" formaction="${pageContext.request.contextPath}/toAddProductType">
            </li>
            <li>
                <input type="submit" name="" value="修改" formaction="${pageContext.request.contextPath}/toEditProductType">
            </li>
            <li>
                <input type="submit" name="" value="删除" formaction="${pageContext.request.contextPath}/deleteProductType" onclick="return confirmd()">
            </li>
        </ul>

    </form>
</div>
</div>
</body>
</html>
