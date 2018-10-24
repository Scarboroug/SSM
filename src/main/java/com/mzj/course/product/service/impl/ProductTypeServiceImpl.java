package com.mzj.course.product.service.impl;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.mzj.course.product.dao.ProductTypeMapper;
import com.mzj.course.product.model.ProductType;
import com.mzj.course.product.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; import java.util.List;
@Service
public class ProductTypeServiceImpl implements ProductTypeService {
    @Autowired
    ProductTypeMapper productTypeMapper;
    @Override
    public ProductType findProductTypeById(Integer id) {
        return productTypeMapper.findProductTypeById(id);
    }
    @Override
    public List<ProductType> findAllProductTypes() {
        return productTypeMapper.findAllProductTypes();
    }
    @Override
    public void addProductType(ProductType productType){
        productTypeMapper.addProductType(productType);

}
    @Override public void updateProductType(ProductType productType){
        productTypeMapper.updateProductType(productType);
    }
    @Override
    public void deleteProductType(Integer id){
        productTypeMapper.deleteProductType(id);
    }
}