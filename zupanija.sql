drop database if exists zupanija;
create database zupanija;
use zupanija;

create table zupan(
sifra int not null primary key auto_increment,
ime varchar(30),
prezime varchar(30)
);

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50),
zupan int
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int,
naziv varchar(50)
);


create table mjesto(
sifra int not null primary key auto_increment,
opcina int,
naziv varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan (ime,prezime) values
('Marko','Markic'),
('Davor','Davoric'),
('Stojko','Stojic');

insert into zupanija (naziv) values
('Krapinsko-zagorska'),
('Bjelovarsko-bilogorska'),
('Osijecko-baranjska');

insert into opcina (naziv) values
('Bedekovčina'), 
('Budinščina'),
('Desinić'),
('Đurmanec'),
('Gornja Stubica'),
('Hrašćina'),
('Osijek');

insert into mjesto (naziv) values
('Osijek'),
('Split'),
('Zagreb'),
('Rijeka'),
('New York'),
('The port of spain'),
('Bukurest'),
('Sofija'),
('Hong Kong'),
('Berlin'),
('Rosenhime'),
('Darko');

#select * from mjesto;

update mjesto set naziv='Purgergrad'
where sifra=3;
update mjesto set naziv='Legograd'
where sifra=1;
update mjesto set naziv='Armadagrad'
where sifra=4;


select * from mjesto;

delete from opcina where sifra=1;
delete from opcina where sifra=2;
delete from opcina where sifra=3;

select * from opcina; 