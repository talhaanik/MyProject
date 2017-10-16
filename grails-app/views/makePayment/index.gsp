
<%@ page import="com.shop.account.MakePayment" %>
<!DOCTYPE html>
<html>
    <head>
        
        <g:set var="entityName" value="${message(code: 'makePayment.label', default: 'MakePayment')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
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
                                     action="create"

                                    >
                                    <i class="fa fa-plus"></i>
                                </g:link>
                            </div>
                            <div class="col-md-12">

                                <g:if test="${flash.message}">
                                    <div class="message" role="status">${flash.message}</div>
                                </g:if>
                                <div id="filteredList">
                                    <div class="table-responsive">

                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    
                                            <util:remoteSortableColumn property="payNote" title="${message(code: 'makePayment.payNote.label', default: 'Pay Note')}" update="content" action="index" />
                                            
                                            <util:remoteSortableColumn property="dataentry_date" title="${message(code: 'makePayment.dataentry_date.label', default: 'Dataentrydate')}" update="content" action="index" />
                                            
                                            <util:remoteSortableColumn property="payAmount" title="${message(code: 'makePayment.payAmount.label', default: 'Pay Amount')}" update="content" action="index" />
                                            
                                            <util:remoteSortableColumn property="payDate" title="${message(code: 'makePayment.payDate.label', default: 'Pay Date')}" update="content" action="index" />
                                            
                                            <util:remoteSortableColumn property="payTo" title="${message(code: 'makePayment.payTo.label', default: 'Pay To')}" update="content" action="index" />
                                            
                                            <util:remoteSortableColumn property="payType" title="${message(code: 'makePayment.payType.label', default: 'Pay Type')}" update="content" action="index" />
                                            
                                            <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <g:each in="${makePaymentList}" status="i" var="makePaymentInstance">
                                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                                        
                                                        <td><g:link action="show" id="${makePaymentInstance.id}">${fieldValue(bean: makePaymentInstance, field: "payNote")}</g:link></td>
                                                        
                                                        <td>${fieldValue(bean: makePaymentInstance, field: "dataentry_date")}</td>
                                                        
                                                        <td>${fieldValue(bean: makePaymentInstance, field: "payAmount")}</td>
                                                        
                                                        <td>${fieldValue(bean: makePaymentInstance, field: "payDate")}</td>
                                                        
                                                        <td>${fieldValue(bean: makePaymentInstance, field: "payTo")}</td>
                                                        
                                                        <td>${fieldValue(bean: makePaymentInstance, field: "payType")}</td>
                                                        
                                                        <td>
                                                            <g:form resource="${makePaymentInstance}" onsubmit="if(confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}'))ajxSubmit(jQuery(this),'content');return false;" method="DELETE">
                                                                <g:link class="btn btn-success" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${makePaymentInstance.id}" controller="${makePaymentInstance}" action="show"><i class="fa fa-eye"></i></g:link>   
                                                                <g:link class="btn btn-info" onclick="ajxCallItem(jQuery(this),'content');return false;"  id="${makePaymentInstance.id}" controller="${makePaymentInstance}" action="edit"><i class="fa fa-pencil"></i></g:link>   
                                                                    <button type="submit" class="btn btn-danger">
                                                                        <i class="fa fa-close"></i>
                                                                    </button>
                                                            </g:form>

                                                        </td>
                                                    </tr>
                                                </g:each>
                                            </tbody>
                                        </table>
                                        <div class="pagination">
                                            <util:remotePaginate total="${makePaymentCount ?: 0}" update="content" action="index" pageSizes="[2: '2 on Page',5:'5 on Page',10:'10 on Page']" />
                                        </div>
                                    </div>
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
