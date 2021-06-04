namespace myhanaproj3.db;

context LKMDEMO {
    @cds.persistence.exists
    entity Customers {
        key id              : Integer not null;
            name            : String(30) not null;
            city            : String(100);
            gender          : String(6);
            number_of_trips : Integer;
            loyalty_member  : Boolean default 0;
            balance         : Decimal(6, 2);
    };

    @cds.persistence.exists
    entity Employee {
        key id   : Integer not null;
            name : String(30);
    };

    @cds.persistence.exists
    entity HOTEL {
        key hno     : Integer not null;
            name    : String(50) not null;
            zip     : String(5);
            address : String(40) not null;
    };
}
