
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'salesMst.label', default: 'Sales')}" />
        
    </head>
    <body>
        
       <div class="form-element" style="padding-top:15px;padding-bottom:15px;">
            <div class="col-md-12 padding-0">
                <div class="col-md-12">
                    <div class="col-md-12 panel">
                        <div class="col-md-12 panel-heading">
                            <h4><g:message code="default.list.label" args="[entityName]" /></h4>
                        </div>
                        <div class="col-md-12 panel-body">
                             <div class="col-md-12">
                            <g:link class="btn btn-primary pull-right" onclick="ajxCallItem(jQuery(this),'content');return false;" 
                                    controller="salesMst" action="create"
                                    
                                    >
                                    <i class="fa fa-plus"></i>
                                    <%--g:message code="default.new.label" args="[entityName]" /--%></g:link>
                             </div>
                            <div class="col-md-12">
                                
    <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div id="filteredList">
                <g:render template="table"/>
            </div>
            <div id="item_details"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 		
      
            
             
            
   </body>
</html>


