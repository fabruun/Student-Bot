create database ug;

use ug

create table uddannelser(
    uddannelsesid int AUTO_INCREMENT PRIMARY KEY,
    navn varchar(32) not null,
    stedid int FOREIGN KEY
);

create table sted(
    stednavn varchar(32) not null,
    stedid int AUTO_INCREMENT PRIMARY KEY,
    uddannelsesid int FOREIGN KEY reference(uddannelser),
    fakultet varchar(32) not null
);

insert into uddannelser values("Applied Industrial Electronics");
insert into uddannelser values("Arkitektur og design");
insert into uddannelser values("Bioteknologi");
insert into uddannelser values("By-, energi- og miljøplanlægning");
insert into uddannelser values("Byggeri og anlæg");
insert into uddannelser values("Byggeteknologi");
insert into uddannelser values("Bygningsdesign");
insert into uddannelser values("Bæredygtigt design");
insert into uddannelser values("Bæredygtigt energidesign");
insert into uddannelser values("Design og innovation");
insert into uddannelser values("Electronics");
insert into uddannelser values("Elektronik og it");
insert into uddannelser values("Elektroteknologi på DTU");
insert into uddannelser values("Energi");
insert into uddannelser values("Energiteknologi");
insert into uddannelser values("Fysik og nanoteknologi");
insert into uddannelser values("Fysik og teknologi");
insert into uddannelser values("General Engineering");
insert into uddannelser values("Geofysik og rumteknologi");
insert into uddannelser values("Globale forretningssystemer");
insert into uddannelser values("Innovation and Business");
insert into uddannelser values("Internetteknologier og computersystemer");
insert into uddannelser values("Kemi og bioteknologi");
insert into uddannelser values("Kemiteknologi");
insert into uddannelser values("Kunstig intelligens og data");
insert into uddannelser values("Kvantitativ biologi og sygdomsmodellering");
insert into uddannelser values("Lærings- og oplevelsesteknologi");
insert into uddannelser values("Maskin og produktion");
insert into uddannelser values("Matematik og teknologi");
insert into uddannelser values("Matematik-teknologi");
insert into uddannelser values("Mechatronics");
insert into uddannelser values("Medicin og teknologi");
insert into uddannelser values("Miljøvidenskab");
insert into uddannelser values("Nanoteknologi");
insert into uddannelser values("Netværksteknologi og it");
insert into uddannelser values("Product Development and Innovation");
insert into uddannelser values("Produkt- og designpsykologi");
insert into uddannelser values("Produktion og konstruktion");
insert into uddannelser values("Robotteknologi");
insert into uddannelser values("Software");
insert into uddannelser values("Software Engineering");
insert into uddannelser values("Softwareteknologi");
insert into uddannelser values("Strategisk analyse og systemdesign");
insert into uddannelser values("Sundhedsteknologi");
insert into uddannelser values("Teknisk biomedicin");
insert into uddannelser values("Vand, bioressourcer og miljømanagement");
insert into uddannelser values("Velfærdsteknologi");

insert into sted values("Aalborg Universitet, Aalborg");
insert into sted values("Aalborg Universitet, Esbjerg");
insert into sted values("Aalborg Universitet, København");
insert into sted values("Århus Universitet");
insert into sted values("Syddansk Universitet, Odense");
insert into sted values("Syddansk Universitet, Kolding");
insert into sted values("Københavns Universitet");
insert into sted values("Roskilde Universitet");
insert into sted values("Danmarks Tekniske Universitet");
insert into sted values("Copenhagen Business School");
insert into sted values("IT-Universitet i København");

insert into fakultet values("Medier, kommunikation & information");
insert into fakultet values("Samfund, politik & økonomi");
insert into fakultet values("Erhvervs, handel & ledels");
insert into fakultet values("Biologi, kemi & natur");
insert into fakultet values("Kunst, musik & design");
insert into fakultet values("Medicin, sundhed & pleje");
insert into fakultet values("Fysik, matematik & nanoteknologi");
insert into fakultet values("Pædagogik, psykologi & undervisning");
insert into fakultet values("Sprog, kultur & historie");
insert into fakultet values("IT, elektronik & programmering");
insert into fakultet values("Teknik, konstruktion & udvikling");




