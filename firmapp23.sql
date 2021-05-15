drop database if exists firmapp23;
create database firmapp23;
use firmapp23;


create table projekt(
sifra int not null primary key auto_increment,
naziv varchar(50),
cijena decimal(18,2)
);

create table sudjeluje(
projekt int,
programer int,
datum_pocetka datetime,
datum_kraja datetime
);

create table programer (
sifra int not null primary key auto_increment,
ime varchar(31),
prezime varchar(30),
datum_rodjenja datetime,
placa decimal(18,2)
);

alter table sudjeluje add foreign key (programer) references programer(sifra);
alter table sudjeluje add foreign key (projekt) references projekt(sifra);

insert into projekt (naziv,cijena ) values
('disco',123.99),
('pogo',456.99),
('dinga linga ling',789.99);


insert into programer (ime,prezime ) values
('dar','mar'),
('bob','rock'),
('alan','ford');

insert into sudjeluje (projekt ,programer ) values
(1,3),(2,2),(3,1),(3,2);

select * from sudjeluje;

