<?php

//Naming convention:
//<cat><page>
class webshopProducts extends cmsPage {

    function parse() {

        $displayName = "Webshop";
        $sql = "";

        //if we have post, handle that:
        if(isset($_POST['addToBasket'])) {
            basket::add($_POST['id']);
        }

        //Fetch categories:
        $sql = "SELECT * FROM [dbo].[CATEGORIE]";

        $categoryResult = $this->db->query($sql);

        $categories = Array();
        while ($row = $this->db->fetchAssoc($categoryResult)) {
            $categories[] = $row['CATEGORIENAAM'];
        }
        $this->website->assign("categories", $categories);

        //Fetch products from database:
        $sql = "SELECT PRODUCTNUMMER, PRODUCTNAAM, CATEGORIE, PRIJS, OMSCHRIJVING FROM [dbo].[PRODUCT]";

        //Do we have a category?
        if(array_key_exists("category", $this->argsNamed)) {
            $sql .= "WHERE CATEGORIE='" . $this->argsNamed['category'] . "'";
        }

        $shopResult = $this->db->query($sql);

        $products = Array();
        while ($row = $this->db->fetchAssoc($shopResult)) {
            $row['OMSCHRIJVING'] = substr($row['OMSCHRIJVING'], 0, 100) . "...";
            $products[] = $row;
        }

        //Amount of results:
        $this->website->assign("productCount", count($products));
        $this->website->assign("products", $products);
        $this->render($displayName, 'webshop/products.tpl');
    }
}

?>
