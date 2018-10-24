package com.mzj.course.product.service;

import com.mzj.course.product.model.Product;

import java.util.List;

public interface ProductService {
    // 通过id查询
    public Product findProductTypeById(Integer productId);
    // 查询所有
    public List<Product> findAllProducts();
    // 添加
    public void addProduct(Product product);
    // 修改
    public void updateProduct(Product product);
    // 删除
    public void deleteProduct(Integer productId);
}
