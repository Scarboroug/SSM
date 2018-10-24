package com.mzj.course.product.controller;

import com.mzj.course.product.model.ProductType;
import com.mzj.course.product.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductTypeController {
    @Autowired
    ProductTypeService productTypeService;
    /**
     * 跳 转 到 产 品 列 表
     */
    @RequestMapping("/toProductTypeList")
    public String toProductTypeList(Model model) {
        //1 、 先 查 询 所 有 产 品 分 类

        List<ProductType> productTypeList = productTypeService.findAllProductTypes();

        //2 、 把 结 果 放 到 model 里 面 ， 供 页 面 展 现 使 用
        model.addAttribute("productType_List",productTypeList);

        //3 、 跳 转 到 产 品 列 表 页 面
        return "producttypelist";
    }
    /** 跳 转 到 添 加 产 品 页 面 */
    @RequestMapping("/toAddProductType")
    public String toAddProductType () {
        return "addproducttype";
    }

//      添 加 产 品

    @RequestMapping("/addProductType")
    public String addProductType (ProductType productType){
        // 1 、 调 用 服 务 方 法 保 存 数 据
        productTypeService.addProductType(productType);
        System.out.println(productType);
        // 2 、 跳 转 到 产 品 列 表 (redirect:)
        return "redirect:toProductTypeList";
    }
    //跳 转 到 编 辑 产 品 页 面

    @RequestMapping("/toEditProductType")
    public String toEditProductType(Integer productTypeId, Model model)
    { //1 、 先 根 据 id 查 询 产 品
        ProductType productType = productTypeService.findProductTypeById(productTypeId);
        //2 、 把 结 果 放 到 model 里 面 ， 供 编 辑 页 面 展 现 使 用
        model.addAttribute("productType",productType);
        //3 、 跳 转 到 编 辑 页 面
        return "editproducttype";
    }

    // 编 辑 产 品
    @RequestMapping("/editProductType")
    public String editProductType(ProductType productType){
        //1 、 调 用 服 务 方 法 保 存 数 据
        productTypeService.updateProductType(productType);
        // 2 、 跳 转 到 产 品 列 表 (redirect:)
        return "redirect:toProductTypeList";
    }


    //删 除 产 品
    @RequestMapping("/deleteProductType")
    public String deleteProductType(Integer productTypeId){
        //1 、 调 用 服 务 方 法 删 除 数 据
        productTypeService.deleteProductType(productTypeId);
        // 2 、 跳 转 到 产 品 列 表 (redirect:)
        return "redirect:toProductTypeList";
    }
}
