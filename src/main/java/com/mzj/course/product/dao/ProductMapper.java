package com.mzj.course.product.dao;

import com.mzj.course.product.model.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductMapper {
    //通过id查询
    public Product findProductById(Integer productId);
    // 查询所有
    public List<Product> findAllProducts();
    // 添加
    public void addProduct(Product product);
    // 修改
    public void updateProduct(Product product);
    // 删除
    public void deleteProduct(Integer productId);

}
