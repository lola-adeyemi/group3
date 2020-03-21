<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        
class Drinksandfood {
    
    private $facilityId;
    private $vendingMachineSnacks;
    private $vendingMachineDrinks;
    private $onSiteCafe;
    private $onSiteClothingStore;
   
    
   
    function __construct($facilityId,$vendingMachineSnacks,$vendingMachineDrinks,$onSiteCafe,$onSiteClothingStore){
        $this->facilityId = $facilityId;
        $this->vendingMachineSnacks = $vendingMachineSnacks;
        $this->vendingMachineDrinks = $vendingMachineDrinks;
        $this->onSiteCafe = $onSiteCafe;
        $this->onSiteClothingStore = $onSiteClothingStore;
    
   }
    function setFacilityId ($facilityId){
        $this->facilityId = $facilityId;
    } 
    
    function setVendingMachineSnacks ($vendingMachineSnacks){
        $this->vendingMachineSnacks = $vendingMachineSnacks;
    } 

    function setVendingMachineDrinks ($vendingMachineDrinks){
        $this->vendingMachineDrinks = $vendingMachineDrinks;
    } 
    
    function setOnSiteCafe ($onSiteCafe){
        $this->onSiteCafe = $onSiteCafe;
    } 
    
    function setOnSiteClothingStore ($onSiteClothingStore){
        $this->onSiteClothingStore = $onSiteClothingStore;
    } 
    
    
    
    
    function getFacilityId () {
        return $this->facilityId;
    }
    
     function getVendingMachineSnacks () {
        return $this->vendingMachineSnacks;
    }
   
    function getVendingMachineDrinks () {
        return $this->vendingMachineDrinks;
    }

     function getOnSiteCafe () {
        return $this->onSiteCafe;
    }
   
    
    function getOnSiteClothingStore () {
        return $this->onSiteClothingStore;
    }
    
}
        ?>
    </body>
</html>
