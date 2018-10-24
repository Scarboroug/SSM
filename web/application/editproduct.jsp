<%--
  Created by IntelliJ IDEA.
  User: MengXiaoYang
  Date: 2018/6/11
  Time: 20:47
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
    <title>修改产品信息</title>
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

        table{
            margin-left:40px;
            margin-top:20px;
            width:860px;
            height:230px;
        }
        table tr{
            text-align:left;
            height:60px;
        }
        #div1{
            width:960px;
            margin:50px auto;
        }
        #inputs input {
            margin-left:10px;
            height:30px;
            width:50px;
            border-radius:5px;
            background-color:#669A83;
            color:#fff;
            font-size:12px;
        }
        table tr th{
            background-color: #eeeeee;
        }
        table .txt{
            text-align:center;
        }
        #menu .menu-main input{
            cursor:pointer;
            color: #fff;
            margin-top: 9px;
            border:0;
            outline:none;
            font-size:inherit;
            background-color:transparent;
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
</div>

<form>
    <table>
        <tr>
            <th>修改产品</th>
            <th>

            </th>
        </tr>
        <tr>
            <td class="txt">产品编号</td>
            <td>
                <input type="text" name="productId" value="${product.productId}">
            </td>
        </tr>
        <tr>
            <td class="txt">产品名称</td>
            <td>
                <input type="text" name="productName"  value="${product.productName}">
            </td>
        </tr>

        <tr>
            <td class="txt">产品种类</td>
            <td>
                <input type="radio" name="productClass" value="0" <c:if test="${product.productClass==0}">checked</c:if>/>实物产品
                &nbsp;&nbsp;&nbsp;
                <input type="radio" name="productClass" value="1" <c:if test="${product.productClass==1}">checked</c:if>/>虚拟电子产品
            </td>
        </tr>

        <tr>
            <td class="txt">产品类别</td>
            <td>
                <select name="productType">
                    <c:forEach var="productTypelist" items="${productTypeList}">
                        <option value="${productTypelist.productTypeId}"
                                <c:if test="${product.productType==productTypelist.productTypeId}">selected</c:if>/>
                            <c:out value="${productTypelist.productTypeName}"></c:out>
                        </option>
                    </c:forEach>
                </select>
            </td>
        </tr>

        <tr>
            <td class="txt">生产厂家</td>
            <td>
                <input type="text" name="productManufacturer"  value="${product.productManufacturer}">
            </td>
        </tr>
        <tr>
            <td class="txt">生产日期</td>
            <td>
                <input type="text" name="productDate" value="${product.productDate}" >
            </td>
        </tr>
        <tr>
            <td class="txt">产品价格</td>
            <td>
                <input type="text" name="productPrice"  value="${product.productPrice}">
            </td>
        </tr>
        <tr>
            <td class="txt">产品描述</td>
            <td>
                <input type="text" name="productDesc"  value="${product.productDesc}">
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td id="inputs">
                <input type="submit" value="提交" formaction="${pageContext.request.contextPath}/editProduct">
                &nbsp;&nbsp;

                <input type="reset" value="重置"  >
                &nbsp;&nbsp;

                <input type="submit" value="返回" formaction="${pageContext.request.contextPath}/toProductList" >
            </td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
