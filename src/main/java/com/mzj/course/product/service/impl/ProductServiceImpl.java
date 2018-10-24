package com.mzj.course.product.service.impl;

import com.mzj.course.product.dao.ProductMapper;
import com.mzj.course.product.model.Product;
import com.mzj.course.product.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductMapper productMpper;
    @Override
    public Product findProductTypeById(Integer productId){
        return productMpper.findProductById(productId);
    }
    @Override
    public List<Product> findAllProducts() {
        return productMpper.findAllProducts();
    }
    @Override
    public void addProduct(Product product) {
        productMpper.addProduct(product);
    }
    @Override
    public void updateProduct(Product product) {
        productMpper.updateProduct(product);
    }
    @Override
    public void deleteProduct(Integer productId) {
        productMpper.deleteProduct(productId);
    }
}
