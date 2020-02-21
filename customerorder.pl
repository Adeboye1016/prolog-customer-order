customerinfo('Adeboye Abdul-Rahman',abk,good).
customerinfo('Yusuf Mubarak',abj,good).
customerinfo('Lasisi',iwo,good).
customerinfo('Taiwo Wakeel',lagos,good).

%item for sale.
item('001',cheese,'5').
item('002',chocolate,'6').
item('003',gum,'7').
item('004',ball,'8').

%inventory record.
record('001','6').
record('002','78').
record('003','60').
record('004','68').


item_quantity('6',cheese).
item_quantity('78',chocolate).
item_quantity('60',gum).
item_quantity('68',ball).
item_quantity(X,Y):-item(X,Y,Z),record(X,Y).

valid_order(X,Y,Z):-customerinfo(X,abk,good_credit),item('001',Y,Z),write(succeeded).
valid_order(X,Y,Z).

reorder(X):-items(X,Y,13),valid_order(X,Y,Z).

reorder(X):-items(X,cheese,2),write('Time to reorder').
reorder(X):-items(X,cheese,5),write('Succeed').







