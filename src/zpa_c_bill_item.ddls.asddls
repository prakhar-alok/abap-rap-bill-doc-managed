@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing doc item - Projection CDS'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZPA_C_Bill_Item as projection on ZPA_I_BILL_ITEM
{
    key BillId,
    key ItemNo,
    MaterialId,
    Description,
    @Semantics.quantity.unitOfMeasure: 'Uom'
    Quantity,
    @Semantics.amount.currencyCode: 'Currency'
    ItemAmount,
    Currency,
    Uom,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _header : redirected to parent ZPA_C_BillHeader
}
