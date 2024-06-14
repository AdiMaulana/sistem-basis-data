-- query create database
create database sbd_weekend;

-- query create table
create table motorcycles_type (
	id int auto_increment primary key,
	type_name varchar(50) not null,
	description text
);

create table motorcycles_data (
    id int auto_increment primary key,
    type_id int not null,
    cubication int not null,
    name varchar(255) not null,
    description text,
    brand varchar(100),
    country varchar(100),
    year int,
    foreign key (type_id) references motorcycles_type(id)
);

-- query drop table
drop table motorcycles_type;
drop table motorcycles_data;

-- query truncate table to empty data
truncate motorcycles_type;
truncate motorcycles_data;

-- query insert data to table motorcycles_type
insert into motorcycles_type (type_name, description) values
('Standard (Naked) Motorcycles', 'Versatile and straightforward, suitable for various riding conditions.'),
('Cruisers', 'Designed for relaxed riding with a focus on comfort, often featuring a low seat height.'),
('Sport Bikes', 'High-performance motorcycles designed for speed and agility, often used for racing.'),
('Touring Motorcycles', 'Built for long-distance travel with comfort and ample storage.'),
('Sport Touring Motorcycles', 'Combine features of sport bikes and touring bikes, offering performance and comfort.'),
('Dual-Sport Motorcycles', 'Designed for both on-road and off-road use, offering versatility.'),
('Adventure Motorcycles (ADV Bikes)', 'Similar to dual-sport but with a focus on long-distance travel and off-road capability.'),
('Dirt Bikes', 'Lightweight motorcycles designed for off-road use with rugged terrain capabilities.'),
('Enduro Bikes', 'Specialized dirt bikes for long-distance off-road racing and endurance.'),
('Motocross Bikes', 'Off-road bikes designed specifically for motocross racing on dirt tracks.'),
('Café Racers', 'Custom motorcycles inspired by 1960s British bikes, known for their minimalist, retro style.'),
('Bobbers', 'Custom motorcycles with stripped-down features and a "bobbed" (shortened) rear fender.'),
('Choppers', 'Custom motorcycles with extended forks and unique, personalized designs.'),
('Scooters', 'Small, lightweight motorcycles with automatic transmission, ideal for urban commuting.'),
('Mopeds', 'Small, low-power motorcycles with pedals, typically limited to lower speeds.'),
('Electric Motorcycles', 'Motorcycles powered by electric motors, offering an eco-friendly alternative to gas-powered bikes.'),
('Mini Bikes', 'Small motorcycles designed for fun and short-distance travel, often used by kids and teens.'),
('Supermoto Bikes', 'Off-road bikes with street tires, designed for both on-road and off-road racing.'),
('Trials Bikes', 'Lightweight motorcycles designed for trial riding, emphasizing balance and control.'),
('Power Cruisers', 'A subcategory of cruisers with more powerful engines and performance features.'),
('Baggers', 'A subcategory of touring motorcycles with hard saddlebags for storage.'),
('Scramblers', 'Motorcycles designed with a rugged, off-road look, suitable for light off-road and urban riding.');

-- Inserting data into motorcycles_data table
insert into motorcycles_data (type_id, cubication, name, description, brand, country, year)
values
(1, 500, 'Honda CB500F', 'Versatile and straightforward, suitable for various riding conditions.', 'Honda', 'Japan', 2023),
(2, 1000, 'Harley-Davidson Sportster', 'Designed for relaxed riding with a focus on comfort.', 'Harley-Davidson', 'USA', 2022),
(3, 1000, 'Yamaha YZF-R1', 'High-performance motorcycle designed for speed and agility.', 'Yamaha', 'Japan', 2023),
(4, 1250, 'BMW R1250RT', 'Built for long-distance travel with comfort and ample storage.', 'BMW', 'Germany', 2022),
(3, 1000, 'Kawasaki Ninja ZX-10R', 'High-performance sport bike, popular for racing.', 'Kawasaki', 'Japan', 2023),
(3, 1000, 'Suzuki GSX-R1000', 'Iconic sport bike known for its powerful engine and agile handling.', 'Suzuki', 'Japan', 2022),
(3, 1100, 'Ducati Panigale V4', 'Italian superbike with cutting-edge technology and performance.', 'Ducati', 'Italy', 2023),
(1, 1200, 'Triumph Bonneville T120', 'Classic retro-styled motorcycle with modern engineering.', 'Triumph', 'UK', 2022),
(9, 1290, 'KTM 1290 Super Adventure R', 'Adventure bike designed for long-distance touring and off-road capability.', 'KTM', 'Austria', 2023),
(2, 1130, 'Indian Scout Bobber', 'Custom cruiser with stripped-down styling and powerful engine.', 'Indian', 'USA', 2022),
(4, 1000, 'Harley-Davidson Street Glide', 'Touring motorcycle with comfortable riding ergonomics and storage.', 'Harley-Davidson', 'USA', 2022),
(3, 1000, 'BMW S1000RR', 'High-performance sport bike with advanced electronics and aerodynamics.', 'BMW', 'Germany', 2023),
(9, 1800, 'Honda Gold Wing', 'Luxury touring motorcycle with spacious seating and premium features.', 'Honda', 'Japan', 2023),
(1, 850, 'Yamaha MT-09', 'Naked bike with a focus on agility and responsive handling.', 'Yamaha', 'Japan', 2022),
(1, 900, 'Kawasaki Z900', 'Naked bike known for its powerful inline-four engine and sharp styling.', 'Kawasaki', 'Japan', 2022),
(1, 821, 'Ducati Monster 821', 'Iconic naked bike with muscular design and impressive performance.', 'Ducati', 'Italy', 2023),
(3, 1340, 'Suzuki Hayabusa', 'Legendary sport bike with unmatched speed and aerodynamic design.', 'Suzuki', 'Japan', 2022),
(9, 800, 'Triumph Tiger 800', 'Adventure bike designed for both on-road touring and light off-road exploration.', 'Triumph', 'UK', 2022),
(2, 350, 'Royal Enfield Classic 350', 'Classic cruiser with vintage styling and thumping single-cylinder engine.', 'Royal Enfield', 'India', 2023),
(3, 998, 'MV Agusta F4', 'Exotic Italian superbike known for its exquisite design and high-performance engine.', 'MV Agusta', 'Italy', 2022),
(1, 390, 'KTM Duke 390', 'Lightweight naked bike with a sporty riding stance and versatile performance.', 'KTM', 'Austria', 2022),
(2, 1000, 'Harley-Davidson Fat Boy', 'Iconic cruiser with bold styling and powerful V-twin engine.', 'Harley-Davidson', 'USA', 2023),
(9, 1100, 'Honda Africa Twin', 'Adventure bike designed for both on-road comfort and off-road performance.', 'Honda', 'Japan', 2022),
(4, 1600, 'BMW K1600GT', 'Luxury touring motorcycle with a smooth inline-six engine and advanced electronics.', 'BMW', 'Germany', 2023),
(3, 1000, 'Aprilia RSV4', 'Italian superbike known for its racing pedigree and precise handling.', 'Aprilia', 'Italy', 2022);


-- query update by id = 1 type naked
update motorcycles_type
set type_name = 'Naked Motorcycles Updated',
    description = 'Versatile and straightforward, suitable for various riding conditions. Standard motorcycles typically have a simple design without extensive fairings or accessories.'
where id = 1;

update motorcycles_data
set name = 'All New Suzuki Hayabusa', cubication = 1340, year = 2023
where name = 'Suzuki Hayabusa';

-- query delete by id = 22 type Scramblers
delete from motorcycles_type where id = 22; 

-- query select all data
select id, type_name, description from motorcycles_type;

select id, type_id, cubication, name, description, brand, country, year 
from motorcycles_data; 

select md.name as motorcycle_name, mt.type_name, md.cubication, md.year
from motorcycles_data md
join motorcycles_type mt on md.type_id = mt.id
where md.year = 2022
and mt.type_name = 'Sport Bikes';

-- query select by id
select id, type_name, description from motorcycles_type where id = 2;
