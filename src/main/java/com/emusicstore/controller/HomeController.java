                package com.emusicstore.controller;
                import com.emusicstore.dao.ProductDao;
                import com.emusicstore.model.Product;
                import org.springframework.beans.factory.annotation.Autowired;
                import org.springframework.stereotype.Controller;
                import org.springframework.ui.Model;
                import org.springframework.web.bind.annotation.ModelAttribute;
                import org.springframework.web.bind.annotation.PathVariable;
                import org.springframework.web.bind.annotation.RequestMapping;
                import org.springframework.web.bind.annotation.RequestMethod;
                import org.springframework.web.multipart.MultipartFile;

                import javax.servlet.http.HttpServletRequest;
                import java.io.File;
                import java.io.IOException;

                import java.nio.file.Files;
                import java.nio.file.Paths;
                import java.nio.file.Path;
                import java.util.List;


                /**
                 * Created by shams on 3/21/2017.
                 */
                @Controller
                public class HomeController {

                    private Path path;

                @Autowired
                private ProductDao productDao;

                    @RequestMapping("/")

                    public  String home(){

                        return  "home";
                    }

                    @RequestMapping("/productList")
                    public  String getProducts(Model model){
                        List<Product> products=productDao.getAllProducts();
                        model.addAttribute("products",products);
                        return "productList";

                    }

                @RequestMapping("/productList/viewProduct/{productId}")
                public  String viewProduct(@PathVariable String productId, Model model)throws IOException{

                    Product product=productDao.getProductById(productId);

                    model.addAttribute(product);

                    return "viewProduct";
                }
                    @RequestMapping("/admin")

                        public String adminPage(){

                        return  "admin";
                }

                @RequestMapping("/admin/productInventory")
                public String productInventory(Model model){

                            List<Product> products=productDao.getAllProducts();
                            model.addAttribute("products",products);

                            return  "productInventory";


                }
                       //Adding product

                @RequestMapping("/admin/productInventory/addProduct")
                public  String AddProduct(Model model){

                        Product product=new Product();

                        product.setProductCategory("Instrument");
                        product.setProductCondition("new");
                        product.setProductStatus("Active");

                        model.addAttribute("product",product);
                        return "addProduct";
                }

                    //Adding Product psot method
                    @RequestMapping(value = "/admin/productInventory/addProduct",method= RequestMethod.POST)
                    public String addProductPost(@ModelAttribute("product") Product product, HttpServletRequest request){

                        productDao.addProduct(product);

                        MultipartFile productImage=product.getProductImage();
                        String rootDirectory=request.getSession().getServletContext().getRealPath("/");

                        path= Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" +product.getProductId()+ ".png");

                        if(productImage !=null && !productImage.isEmpty()){

                            try{

                                productImage.transferTo(new File(path.toString()));
                            }
                            catch (Exception e){

                            /*e.printStackTrace();*/

                                throw  new RuntimeException("Product Image saving Failed" +e);
                            }
                        }
                        return "redirect:/admin/productInventory";
                    }



                        //Deleting Product

                    @RequestMapping("/admin/productInventory/deleteProduct/{id}")
                    public  String deleteProduct(@PathVariable String id, Model model,HttpServletRequest request){

                        String rootDirectory=request.getSession().getServletContext().getRealPath("/");
                        path= Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" +id+ ".png");
                        if (Files.exists(path)){

                            try{

                                Files.delete(path);
                            }catch (IOException e){

                                e.printStackTrace();
                            }
                        }
           /*Product product=productDao.getProductById(id);*/
           productDao.deleteProduct(id);

                        return  "redirect:/admin/productInventory";
                    }


                                //edit product

                    @RequestMapping("/admin/productInventory/editProduct/{id}")
                    public String editProduct(@PathVariable("id") String id,Model model ){

                                Product product=productDao.getProductById(id);

                                model.addAttribute(product);

                                return  "editProduct";

                            }
                               //Edit product Post Method

                    @RequestMapping(value = "/admin/productInventory/editProduct/",method = RequestMethod.POST)
                    public  String editProduct(@ModelAttribute("product")Product product,Model model,HttpServletRequest request){

                        MultipartFile productImage=product.getProductImage();

                        String rootDirectory=request.getSession().getServletContext().getRealPath("/");

                        path=Paths.get(rootDirectory +"\\WEB-INF\\resources\\images\\" +product.getProductId()+".png");

                        if (productImage!=null && !productImage.isEmpty()){

                            try {
                                productImage.transferTo(new File(path.toString()));

                            }
                            catch (Exception e){

                               throw new RuntimeException("Product Saving Image failed" +e);


                            }
                            }

                            productDao.editProduct(product);

                        return "redirect:/admin/productInventory";

                        }


                        }

