 
<div class="form-group">

    <label class="col-sm-2 control-label text-right" for='itemName'>Item Name
            
        </label>
        <div class="col-sm-10">
            <input type="text" class="form-control " name="itemName" value="${this.stockItem?.itemName}" required="" id="itemName" />
        </div>
   
</div>
<div class="form-group">
   
        <label class="col-sm-2 control-label text-right" for='searchKeyword'>Search Keyword</label>
        <div class="col-sm-10">
            <input type="text" class="form-control " name="searchKeyword" value="" id="searchKeyword" />
        </div>
    
</div>

<div class="form-group">
    
        <label class="col-sm-2 control-label text-right" for='qty'>Qty
            
        </label>
        <div class="col-sm-10">
            <input type="number decimal" class="form-control " name="qty" value="${this.stockItem?.qty}" required="" id="qty" />
        </div>
   
</div>

<div class="form-group">
    
        <label class="col-sm-2 control-label text-right" for='unitPrice'>Unit Price
           
        </label>
        <div class="col-sm-10">
            <input type="number decimal" class="form-control" name="unitPrice" value="${this.stockItem?.unitPrice}" required="" id="unitPrice" />
        </div>
   
</div>
 <div class="form-group">
  
 <label class="col-sm-2 control-label text-right" for="stkUnit">
		Unit
	</label>
  
 <div class="col-md-10">
	<g:select class="select2-A" style="width:100%" id="stockunit" name="stkUnit.id" from="${com.shop.core.CodeList.findByClsCode("UNIT",)?.codeListItems}" optionKey="id"  value="${this.stockItem?.stkUnit?.id}"/>
</div>
 
 <div class="form-group">
<div class="ui-widget">
    <label class="col-sm-2 control-label text-right" for='itemName'>Vendor
            
        </label>
        <div class="col-sm-10">
            <input type="text" class="form-control ui-autocomplete-input" name="vendor" value="${this.stockItem?.productVendor?.vendorName}"  required="" id="auto" />
            <input type="hidden" id="vendoeId" name="productVendor.id" value="${this.stockItem?.productVendor?.id}" />
        </div>
</div>
</div>

</div>