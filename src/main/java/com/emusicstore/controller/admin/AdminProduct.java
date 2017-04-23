package com.emusicstore.controller.admin;

import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by shams on 4/21/2017.
 */

@Controller
@RequestMapping("/admin")
public class AdminProduct {

    @Autowired
    private ProductService productService;

    private Path path;


    @RequestMapping("/product/addProduct")

    public String addProduct(Model model) {

        Product product = new Product();

        product.setProductCategory("Instrument");
        product.setProductCondition("new");
        product.setProductStatus("active");

        model.addAttribute("product", product);

        return "addProduct";


    }

    @RequestMapping(value = "/product/addProduct", method = RequestMethod.POST)

    public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result
            , HttpServletRequest request) {

        if (result.hasErrors()) {

            return "addProduct";
        }

        productService.addProduct(product);

        MultipartFile productImage = product.getProductImage();

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId() + ".png");
        System.out.println(path);


        if (productImage != null && !productImage.isEmpty()) {

            try {

                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("product image service failed");

            }

        }

        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/editProduct/{id}")
    public String editProduct(@PathVariable("id") int id, Model model) {

        Product product = productService.getProductById(id);

        model.addAttribute("product", product);

        return "editProduct";
    }

    @RequestMapping(value = "/product/editProduct", method = RequestMethod.POST)

    public String editProduct(@Valid @ModelAttribute("product") Product product, BindingResult result
            , HttpServletRequest request) {

        if (result.hasErrors()) {

            return "editProduct";
        }

       /* productService.editProduct(product);*/

        MultipartFile productImage = product.getProductImage();

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId() + ".png");


        if (productImage != null && !productImage.isEmpty()) {

            try {

                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("product image service failed");

            }

        }
        productService.editProduct(product);
        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/deleteProduct/{id}")

    public String deleteProduct(@PathVariable  int id,Model model,HttpServletRequest request ){

        String rootDirectory=request.getSession().getServletContext().getRealPath("/");

        path=Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" +id+ ".png");
      if(Files.exists(path)){

          try{

              Files.delete(path);
          }catch (IOException e){

              e.printStackTrace();
          }
      }
  Product product=productService.getProductById(id);

      productService.deleteProduct(product);

      return  "redirect:/admin/productInventory";


    }
}


