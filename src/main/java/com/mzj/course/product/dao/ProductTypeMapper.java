package com.mzj.course.product.dao;
import com.mzj.course.product.model.ProductType;
import java.util.List;
public interface ProductTypeMapper {
    //通过id查询
    public ProductType findProductTypeById(Integer id);
    // 查询所有
    public List<ProductType> findAllProductTypes();
    // 添加
    public void addProductType(ProductType productType);
    // 修改
    public void updateProductType(ProductType productType);
    // 删除
    public void deleteProductType(Integer id);
}
