namespace zmm.PurchaseOrder;

// Reusable data types
type BusinessKey : String(40);
type sDate       : Date;
type CurrencyT   : String(3);
type AmountT     : Decimal(15, 2);
type QuantityT   : Decimal(13, 3);
type unitT       : String(3);
type statusT     : String(1);

// Reusable structures
type HistoryT {
    CreatedBy : BusinessKey;
    CreatedAT : sDate;
    ChangedBy : BusinessKey;
    ChangedAt : sDate;
}

entity PurchaseOrderHeader {
    key PO_ID           : UUID;
        ITEMS           : Association to many PurchaseOrderItems
                              on ITEMS.POHEADER = $self;
        HISTORY         : HistoryT;
        NOTEID          : BusinessKey null;
        PARTNER         : UUID;
        CURRENCY        : CurrencyT;
        GROSSAMOUNT     : AmountT;
        NETAMOUNT       : AmountT;
        TAXAMOUNT       : AmountT;
        LIFECYCLESTATUS : statusT;
        APPROVALSTATUS  : statusT;
        CONFIRMSTATUS   : statusT;
        ORDERINGSTATUS  : statusT;
        INVOICINGSTATUS : statusT;
}

entity PurchaseOrderItems {
    key POHEADER     : Association to PurchaseOrderHeader;
    key PRODUCT      : BusinessKey;
        NOTEID       : BusinessKey null;
        CURRENCY     : CurrencyT;
        GROSSAMOUNT  : AmountT;
        NETAMOUNT    : AmountT;
        TAXAMOUNT    : AmountT;
        QUANTITY     : QuantityT;
        QUANTITYUNIT : unitT;
        DELIVERYDATE : sDate;
}

define view ItemView as
    select from PurchaseOrderItems {
        POHEADER.PO_ID,
        POHEADER.PARTNER,
        PRODUCT,
        CURRENCY,
        GROSSAMOUNT,
        NETAMOUNT,
        TAXAMOUNT,
        QUANTITY,
        QUANTITYUNIT,
        DELIVERYDATE
    }
