namespace my.bookshop;
using { Country, managed } from '@sap/cds/common';

entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
  district : String(3);
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
  district : String(3);
}

entity Orders : managed {
  key ID  : Integer;
  amount  : Integer;
  district : String(3);
}

  entity UserScopes {
    key username : String;
        role_check_with_pattern : String;
        role_check_with_role_name_401 : String;
        role_check_with_role_name_402 : String;
        role_check_with_role_name_403 : String;
        district : String;
  };