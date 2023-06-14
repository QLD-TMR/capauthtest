using my.bookshop as my from '../db/data-model';


service CatalogService {
  @requires: [
    'treatmentcost401update',
    'treatmentcost402update'
  ]

  entity Books                as projection on my.Books;

  @restrict: [
    {
      grant: [
        'READ',
        'WRITE'
      ],
      to   : 'treatmentcost402update',
      where: 'district = $user.district'
    },
    {
      grant: [
        'READ',
        'WRITE'
      ],
      to   : 'treatmentcost403update',
      where: 'district = $user.district'
    },
    {
      grant: [
        'READ',
        'WRITE'
      ],
      to   : 'treatmentcostQLDupdate'
    }
  ]
  //@odata.draft.enabled
  entity Authors @readonly    as projection on my.Authors;

  entity Orders @readonly     as projection on my.Orders;

  entity UserScopes @readonly as projection on my.UserScopes;

}


/*
401	Central West
402	Darling Downs
403	Far North
404	Fitzroy
405	Mackay/Whitsunday
406	Metropolitan
407	North Coast
408	North West
409	Northern
410	South Coast
411	South West
412	Wide Bay/Burnett
*/
