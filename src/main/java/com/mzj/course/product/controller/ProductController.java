package com.mzj.course.product.controller;

import com.mzj.course.product.dao.ProductTypeMapper;
import com.mzj.course.product.model.Product;
import com.mzj.course.product.model.ProductType;
import com.mzj.course.product.service.ProductService;
import com.mzj.course.product.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductController {
    @Autowired ProductService productService;
    @Autowired ProductTypeService productTypeService ;

    /**
     * 跳 转 到 产 品 列 表
     */
    @RequestMapping("/toProductList")
    public String toProductList(Model model) {
        List<Product> productList = productService.findAllProducts();
        List<ProductType> productTypeList = productTypeService.findAllProductTypes();
        //2 、 把 结 果 放 到 model 里 面 ， 供 页 面 展 现 使 用
        model.addAttribute("product_List",productList);
        model.addAttribute("productType_List",productTypeList);

        //3 、 跳 转 到 产 品 列 表 页 面
        return "productlist";
    }
    /** 跳 转 到 添 加 产 品 页 面 */
    @RequestMapping("/toAddProduct")
    public String toAddProduct(Model model){
        List<ProductType> productTypeList = productTypeService.findAllProductTypes();
        model.addAttribute("productType_List",productTypeList);

        return "addproduct";
    }
    //      添 加 产 品
    @RequestMapping("/addProduct")
    public String addProduct(Product product){

        // 1 、 调 用 服 务 方 法 保 存 数 据
        productService.addProduct(product);
        // 2 、 跳 转 到 产 品 列 表 (redirect:)
        return "redirect:toProductList";
    }
    //跳 转 到 编 辑 产 品 页 面
    @RequestMapping("/toEditProduct")
    public String toEditProduct(Integer productId, Model model){
        //1 、 先 根 据 id 查 询 产 品
        Product product = productService.findProductTypeById(productId);
        List<ProductType> productTypeList = productTypeService.findAllProductTypes();


        //2 、 把 结 果 放 到 model 里 面 ， 供 编 辑 页 面 展 现 使 用
        model.addAttribute("productTypeList",productTypeList);
        model.addAttribute("product",product);
        //3 、 跳 转 到 编 辑 页 面
        return "editproduct";
    }
    // 编 辑 产 品
    @RequestMapping("/editProduct")
    public String editProduct(Product product){
        //1 、 调 用 服 务 方 法 保 存 数 据
        productService.updateProduct(product);
        // 2 、 跳 转 到 产 品 列 表 (redirect:)
        return "redirect:toProductList";
    }
    //删 除 产 品
    @RequestMapping("/deleteProduct")
    public String deleteProduct(Integer productId){

        //1 、 调 用 服 务 方 法 删 除 数 据
        productService.deleteProduct(productId);
        // 2 、 跳 转 到 产 品 列 表 (redirect:)
        return "redirect:toProductList";
    }
}