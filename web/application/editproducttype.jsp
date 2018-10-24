<%--
  Created by IntelliJ IDEA.
  User: MengXiaoYang
  Date: 2018/6/11
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <title>修改产品种类信息</title>
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
            <th>修改产品种类</th>
            <th>

            </th>
        </tr>
        <tr>
            <td class="txt">产品编号</td>
            <td>
                <input type="text"readonly name="productTypeId" value="${productType.productTypeId}">
            </td>
        </tr>
        <tr>
            <td class="txt">产品名称</td>
            <td>
                <input type="text" name="productTypeName" value="${productType.productTypeName}">
            </td>
        </tr>
        <tr>
            <td class="txt">产品描述</td>
            <td>
                <input type="text" name="productTypeDesc" value="${productType.productTypeDesc}">
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td id="inputs">
                <input type="submit" value="提交" formaction="${pageContext.request.contextPath}/editProductType">
                &nbsp;&nbsp;

                <input type="reset" value="重置"  >
                &nbsp;&nbsp;

                <input type="submit" value="返回" formaction="${pageContext.request.contextPath}/toProductTypeList" >
            </td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
