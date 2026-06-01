@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing doc header - Projection CDS'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZPA_C_BillHeader 
provider contract transactional_query
as projection on ZPA_I_Bill_Header
{
    key BillId,
    BillType,
    BillDate,
    CustomerId,
    @Semantics.amount.currencyCode: 'Currency'
    NetAmount,
    Currency,
    SalesOrg,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    
    _item: redirected to composition child ZPA_C_Bill_Item
}
