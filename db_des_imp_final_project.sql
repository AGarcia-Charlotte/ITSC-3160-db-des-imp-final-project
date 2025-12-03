create table states(
    state_id int primary key
    , state_name varchar(30)
    , abbreviation varchar(5)
    , region varchar(20)
    , population int
);

create table county(
    county_id int primary key
    , county_name varchar(30)
    , area_sq_mile int 
    , population int
    , state_id int
    , foreign key (state_id) references states(state_id)
);

create table city(
    city_id int primary key
    , city_name varchar(30)
    , area_sq_mile int 
    , population int
    , county_id int
    , foreign key (county_id) references county(county_id)
);

create table weather_station(
    station_id varchar(30) primary key
    , station_name varchar(30)
    , status varchar(15) 
    , frequency float
    , city_id int
    , foreign key (city_id) references city(city_id)
);

create table temperature(
    temperature_id int primary key
    , date_recorded date
    , avg_temp int
    , high_temp int 
    , low_temp int
    , station_id varchar(30)
    , foreign key (station_id) references weather_station(station_id)
);

insert into states (state_id, state_name, abbreviation, region, population) values
(1, 'Alabama', 'AL', 'Southeast', 5024279)
, (2, 'Alaska', 'AK', 'West', 733583)
, (3, 'Arizona', 'AZ', 'West', 7276316)
, (4, 'Arkansas', 'AR', 'South', 3025891)
, (5, 'California', 'CA', 'West', 39538223)
, (6, 'Colorado', 'CO', 'West', 5773714)
, (7, 'Connecticut', 'CT', 'Northeast', 3605944)
, (8, 'Delaware', 'DE', 'Northeast', 989948)
, (9, 'Florida', 'FL', 'Southeast', 21944577)
, (10, 'Georgia', 'GA', 'Southeast', 10711908)
, (11, 'Hawaii', 'HI', 'West', 1455271)
, (12, 'Idaho', 'ID', 'West', 1839106)
, (13, 'Illinois', 'IL', 'Midwest', 12812508)
, (14, 'Indiana', 'IN', 'Midwest', 6785528)
, (15, 'Iowa', 'IA', 'Midwest', 3190369)
, (16, 'Kansas', 'KS', 'Midwest', 2937880)
, (17, 'Kentucky', 'KY', 'South', 4505836)
, (18, 'Louisiana', 'LA', 'South', 4657757)
, (19, 'Maine', 'ME', 'Northeast', 1362359)
, (20, 'Maryland', 'MD', 'Northeast', 6177224)
, (21, 'Massachusetts', 'MA', 'Northeast', 7029917)
, (22, 'Michigan', 'MI', 'Midwest', 10077331)
, (23, 'Minnesota', 'MN', 'Midwest', 5706494)
, (24, 'Mississippi', 'MS', 'South', 2961279)
, (25, 'Missouri', 'MO', 'Midwest', 6154913)
, (26, 'Montana', 'MT', 'West', 1084225)
, (27, 'Nebraska', 'NE', 'Midwest', 1961504)
, (28, 'Nevada', 'NV', 'West', 3104614)
, (29, 'New Hampshire', 'NH', 'Northeast', 1377529)
, (30, 'New Jersey', 'NJ', 'Northeast', 9288994)
, (31, 'New Mexico', 'NM', 'West', 2117522)
, (32, 'New York', 'NY', 'Northeast', 20201249)
, (33, 'North Carolina', 'NC', 'Southeast', 10439388)
, (34, 'North Dakota', 'ND', 'Midwest', 779094)
, (35, 'Ohio', 'OH', 'Midwest', 11799448)
, (36, 'Oklahoma', 'OK', 'South', 3959353)
, (37, 'Oregon', 'OR', 'West', 4237256)
, (38, 'Pennsylvania', 'PA', 'Northeast', 13002700)
, (39, 'Rhode Island', 'RI', 'Northeast', 1097379)
, (40, 'South Carolina', 'SC', 'Southeast', 5118425)
, (41, 'South Dakota', 'SD', 'Midwest', 886667)
, (42, 'Tennessee', 'TN', 'South', 6910840)
, (43, 'Texas', 'TX', 'South', 29145505)
, (44, 'Utah', 'UT', 'West', 3271616)
, (45, 'Vermont', 'VT', 'Northeast', 643077)
, (46, 'Virginia', 'VA', 'South', 8631393)
, (47, 'Washington', 'WA', 'West', 7693612)
, (48, 'West Virginia', 'WV', 'South', 1793716)
, (49, 'Wisconsin', 'WI', 'Midwest', 5893718)
, (50, 'Wyoming', 'WY', 'West', 576851);

insert into county (county_id, county_name, area_sq_mile, population, state_id) values
(1, 'Jefferson County', 1113, 674000, 1)
, (2, 'Anchorage Borough', 1961, 291000, 2)
, (3, 'Maricopa County', 9200, 4485000, 3)
, (4, 'Pulaski County', 808, 395000, 4)
, (5, 'Los Angeles County', 4753, 9960000, 5)
, (6, 'Denver County', 155, 711000, 6)
, (7, 'Fairfield County', 625, 957000, 7)
, (8, 'New Castle County', 437, 574000, 8)
, (9, 'Miami-Dade County', 1898, 2675000, 9)
, (10, 'Fulton County', 534, 1084000, 10)
, (11, 'Honolulu County', 600, 1007000, 11)
, (12, 'Ada County', 1055, 518000, 12)
, (13, 'Cook County', 1635, 5120000, 13)
, (14, 'Marion County', 403, 970000, 14)
, (15, 'Polk County', 592, 500000, 15)
, (16, 'Johnson County', 480, 609000, 16)
, (17, 'Jefferson County', 385, 782000, 17)
, (18, 'Orleans Parish', 350, 383000, 18)
, (19, 'Cumberland County', 1216, 305000, 19)
, (20, 'Montgomery County', 507, 1067000, 20)
, (21, 'Suffolk County', 120, 810000, 21)
, (22, 'Wayne County', 612, 1752000, 22)
, (23, 'Hennepin County', 607, 1280000, 23)
, (24, 'Hinds County', 877, 216000, 24)
, (25, 'St. Louis County', 523, 990000, 25)
, (26, 'Yellowstone County', 2649, 168000, 26)
, (27, 'Douglas County', 331, 584000, 27)
, (28, 'Clark County', 7911, 2340000, 28)
, (29, 'Hillsborough County', 892, 417000, 29)
, (30, 'Bergen County', 246, 952000, 30)
, (31, 'Bernalillo County', 1167, 676000, 31)
, (32, 'Kings County', 70, 2550000, 32)
, (33, 'Mecklenburg County', 546, 1130000, 33)
, (34, 'Cass County', 1761, 187000, 34)
, (35, 'Cuyahoga County', 457, 1236000, 35)
, (36, 'Tulsa County', 587, 670000, 36)
, (37, 'Multnomah County', 465, 815000, 37)
, (38, 'Philadelphia County', 143, 1584000, 38)
, (39, 'Providence County', 410, 660000, 39)
, (40, 'Charleston County', 1358, 419000, 40)
, (41, 'Minnehaha County', 814, 202000, 41)
, (42, 'Davidson County', 526, 715000, 42)
, (43, 'Travis County', 1023, 1290000, 43)
, (44, 'Salt Lake County', 742, 1185000, 44)
, (45, 'Chittenden County', 619, 169000, 45)
, (46, 'Fairfax County', 407, 1140000, 46)
, (47, 'King County', 2126, 2300000, 47)
, (48, 'Kanawha County', 911, 177000, 48)
, (49, 'Milwaukee County', 241, 917000, 49)
, (50, 'Laramie County', 2686, 100000, 50);

insert into city (city_id, city_name, area_sq_mile, population, county_id) values
(1, 'Birmingham', 147, 197000, 1)
, (2, 'Anchorage', 1961, 291000, 2)
, (3, 'Phoenix', 517, 1650000, 3)
, (4, 'Little Rock', 121, 204000, 4)
, (5, 'Los Angeles', 503, 3890000, 5)
, (6, 'Denver', 155, 711000, 6)
, (7, 'Bridgeport', 19, 148000, 7)
, (8, 'Wilmington', 17, 71000, 8)
, (9, 'Miami', 56, 440000, 9)
, (10, 'Atlanta', 136, 498000, 10)
, (11, 'Honolulu', 68, 345000, 11)
, (12, 'Boise', 85, 240000, 12)
, (13, 'Chicago', 234, 2695000, 13)
, (14, 'Indianapolis', 368, 882000, 14)
, (15, 'Des Moines', 90, 214000, 15)
, (16, 'Overland Park', 75, 198000, 16)
, (17, 'Louisville', 325, 630000, 17)
, (18, 'New Orleans', 170, 383000, 18)
, (19, 'Portland', 21, 68000, 19)
, (20, 'Rockville', 13, 68000, 20)
, (21, 'Boston', 89, 675000, 21)
, (22, 'Detroit', 143, 640000, 22)
, (23, 'Minneapolis', 57, 425000, 23)
, (24, 'Jackson', 111, 149000, 24)
, (25, 'St. Louis', 66, 301000, 25)
, (26, 'Billings', 45, 119000, 26)
, (27, 'Omaha', 145, 486000, 27)
, (28, 'Las Vegas', 135, 653000, 28)
, (29, 'Manchester', 35, 115000, 29)
, (30, 'Newark', 25, 307000, 30)
, (31, 'Albuquerque', 189, 562000, 31)
, (32, 'Brooklyn', 70, 2550000, 32)
, (33, 'Charlotte', 309, 879000, 33)
, (34, 'Fargo', 50, 126000, 34)
, (35, 'Cleveland', 82, 372000, 35)
, (36, 'Tulsa', 201, 409000, 36)
, (37, 'Portland', 145, 652000, 37)
, (38, 'Philadelphia', 143, 1584000, 38)
, (39, 'Providence', 20, 189000, 39)
, (40, 'Charleston', 127, 156000, 40)
, (41, 'Sioux Falls', 80, 202000, 41)
, (42, 'Nashville', 475, 715000, 42)
, (43, 'Austin', 326, 965000, 43)
, (44, 'Salt Lake City', 111, 200000, 44)
, (45, 'Burlington', 16, 44500, 45)
, (46, 'Fairfax', 6, 24000, 46)
, (47, 'Seattle', 142, 740000, 47)
, (48, 'Charleston', 32, 48000, 48)
, (49, 'Milwaukee', 97, 577000, 49)
, (50, 'Cheyenne', 24, 65000, 50);

insert into weather_station (station_id, station_name, status, frequency, city_id) values
('WNG606', 'Oneonta', 'Normal', 162.425, 1)
, ('KEC43', 'Anchorage', 'Normal', 162.550, 2)
, ('KEC94', 'Phoenix', 'Normal', 162.550, 3)
, ('KXI91', 'Morrilton', 'Normal', 162.475, 4)
, ('KWO37', 'Los Angeles', 'Normal', 162.550, 5)
, ('KEC76', 'Denver', 'Normal', 162.550, 6)
, ('WXJ42', 'Bridgeport', 'Normal', 162.400, 7)
, ('KIH28', 'Wilmington', 'Normal', 162.475, 8)
, ('KHB34', 'Miami', 'Normal', 162.550, 9)
, ('KEC80', 'Atlanta', 'Normal', 162.550, 10)
, ('KBA99', 'Oahu', 'Normal', 162.550, 11)
, ('WXK68', 'Boise', 'Normal', 162.550, 12)
, ('KWO39', 'Chicago', 'Normal', 162.550, 13)
, ('KEC74', 'Indianapolis', 'Normal', 162.550, 14)
, ('WXL57', 'Des Moines', 'Normal', 162.550, 15)
, ('KID77', 'Overland Park', 'Normal', 162.550, 16)
, ('KIH43', 'New Albany', 'Normal', 162.475, 17)
, ('KHB43', 'New Orleans', 'Normal', 162.550, 18)
, ('KIG98', 'Portland', 'Normal', 162.550, 19)
, ('KEC83', 'Boltimore', 'Normal', 162.400, 20)
, ('KHB35', 'Boston', 'Normal', 162.475, 21)
, ('KEC63', 'Detroit', 'Normal', 162.550, 22)
, ('KEC65', 'Minneapolis/St. Paul', 'Normal', 162.550, 23)
, ('KIH50', 'Inverness', 'Normal', 162.425, 24)
, ('KDO89', 'St. Louis', 'Normal', 162.550, 25)
, ('WNG826', 'Billings Heights', 'Normal', 162.550, 26)
, ('KEC927', 'Omaha Downtown', 'Normal', 162.475, 27)
, ('KXI728', 'Las Vegas Strip', 'Normal', 162.550, 28)
, ('KWO629', 'Manchester North', 'Normal', 162.400, 29)
, ('WXJ730', 'Newark Bay', 'Normal', 162.475, 30)
, ('KIH631', 'Albuquerque Metro', 'Normal', 162.550, 31)
, ('KHB732', 'Brooklyn Central', 'Normal', 162.425, 32)
, ('KIG833', 'Charlotte Uptown', 'Normal', 162.550, 33)
, ('WXL734', 'Fargo Center', 'Normal', 162.475, 34)
, ('KID735', 'Cleveland West', 'Normal', 162.550, 35)
, ('WNG736', 'Tulsa North', 'Normal', 162.400, 36)
, ('KEC737', 'Portland Central', 'Normal', 162.475, 37)
, ('KWO738', 'Philadelphia Intl', 'Normal', 162.550, 38)
, ('WXJ739', 'Providence Bay', 'Normal', 162.425, 39)
, ('KXI740', 'Charleston Metro', 'Normal', 162.550, 40)
, ('KIH741', 'Sioux Falls North', 'Normal', 162.475, 41)
, ('KHB742', 'Nashville Downtown', 'Normal', 162.550, 42)
, ('KIG743', 'Austin Airport', 'Normal', 162.550, 43)
, ('WXL744', 'Salt Lake Central', 'Normal', 162.400, 44)
, ('KID745', 'Burlington North', 'Normal', 162.475, 45)
, ('WNG746', 'Fairfax East', 'Normal', 162.425, 46)
, ('KEC747', 'Seattle Harbor', 'Normal', 162.550, 47)
, ('KWO748', 'Charleston North', 'Normal', 162.475, 48)
, ('WXJ749', 'Milwaukee Harbor', 'Normal', 162.400, 49)
, ('KIH750', 'Cheyenne Central', 'Normal', 162.550, 50);

insert into temperature (temperature_id, date_recorded, avg_temp, high_temp, low_temp, station_id) values
(1, TO_DATE('2025-11-15','YYYY-MM-DD'), 63, 76, 46, 'WNG606')
, (2, TO_DATE('2025-11-15','YYYY-MM-DD'), 17, 22, 12, 'KEC43')
, (3, TO_DATE('2025-11-15','YYYY-MM-DD'), 71, 77, 59, 'KEC94')
, (4, TO_DATE('2025-11-15','YYYY-MM-DD'), 68, 75, 62, 'KXI91')
, (5, TO_DATE('2025-11-15','YYYY-MM-DD'), 60, 64, 59, 'KWO37')
, (6, TO_DATE('2025-11-15','YYYY-MM-DD'), 59, 73, 50, 'KEC76')
, (7, TO_DATE('2025-11-15','YYYY-MM-DD'), 40, 46, 26, 'WXJ42')
, (8, TO_DATE('2025-11-15','YYYY-MM-DD'), 48, 53, 41, 'KIH28')
, (9, TO_DATE('2025-11-15','YYYY-MM-DD'), 73, 80, 67, 'KHB34')
, (10, TO_DATE('2025-11-15','YYYY-MM-DD'), 57, 74, 38, 'KEC80')
, (11, TO_DATE('2025-11-15','YYYY-MM-DD'), 77, 86, 68, 'KBA99')
, (12, TO_DATE('2025-11-15','YYYY-MM-DD'), 51, 64, 43, 'WXK68')
, (13, TO_DATE('2025-11-15','YYYY-MM-DD'), 62, 70, 51, 'KWO39')
, (14, TO_DATE('2025-11-15','YYYY-MM-DD'), 64, 71, 58, 'KEC74')
, (15, TO_DATE('2025-11-15','YYYY-MM-DD'), 58, 66, 44, 'WXL57')
, (16, TO_DATE('2025-11-15','YYYY-MM-DD'), 56, 74, 40, 'KID77')
, (17, TO_DATE('2025-11-15','YYYY-MM-DD'), 67, 75, 62, 'KIH43')
, (18, TO_DATE('2025-11-15','YYYY-MM-DD'), 66, 72, 59, 'KHB43')
, (19, TO_DATE('2025-11-15','YYYY-MM-DD'), 50, 65, 38, 'KIG98')
, (20, TO_DATE('2025-11-15','YYYY-MM-DD'), 34, 42, 30, 'KEC83')
, (21, TO_DATE('2025-11-15','YYYY-MM-DD'), 40, 45, 34, 'KHB35')
, (22, TO_DATE('2025-11-15','YYYY-MM-DD'), 56, 66, 40, 'KEC63')
, (23, TO_DATE('2025-11-15','YYYY-MM-DD'), 49, 57, 38, 'KEC65')
, (24, TO_DATE('2025-11-15','YYYY-MM-DD'), 63, 78, 51, 'KIH50')
, (25, TO_DATE('2025-11-15','YYYY-MM-DD'), 67, 78, 57, 'KDO89')
, (26, TO_DATE('2025-11-10','YYYY-MM-DD'), 41, 48, 33, 'WNG826')
, (27, TO_DATE('2025-11-10','YYYY-MM-DD'), 46, 53, 35, 'KEC927')
, (28, TO_DATE('2025-11-10','YYYY-MM-DD'), 67, 74, 57, 'KXI728')
, (29, TO_DATE('2025-11-10','YYYY-MM-DD'), 43, 51, 34, 'KWO629')
, (30, TO_DATE('2025-11-10','YYYY-MM-DD'), 53, 59, 46, 'WXJ730')
, (31, TO_DATE('2025-11-10','YYYY-MM-DD'), 64, 70, 55, 'KIH631')
, (32, TO_DATE('2025-11-10','YYYY-MM-DD'), 51, 58, 45, 'KHB732')
, (33, TO_DATE('2025-11-10','YYYY-MM-DD'), 65, 71, 57, 'KIG833')
, (34, TO_DATE('2025-11-10','YYYY-MM-DD'), 34, 40, 24, 'WXL734')
, (35, TO_DATE('2025-11-10','YYYY-MM-DD'), 48, 55, 41, 'KID735')
, (36, TO_DATE('2025-11-10','YYYY-MM-DD'), 63, 69, 56, 'WNG736')
, (37, TO_DATE('2025-11-10','YYYY-MM-DD'), 51, 57, 44, 'KEC737')
, (38, TO_DATE('2025-11-10','YYYY-MM-DD'), 47, 54, 39, 'KWO738')
, (39, TO_DATE('2025-11-10','YYYY-MM-DD'), 52, 58, 46, 'WXJ739')
, (40, TO_DATE('2025-11-10','YYYY-MM-DD'), 68, 74, 60, 'KXI740')
, (41, TO_DATE('2025-11-10','YYYY-MM-DD'), 39, 46, 28, 'KIH741')
, (42, TO_DATE('2025-11-10','YYYY-MM-DD'), 61, 67, 53, 'KHB742')
, (43, TO_DATE('2025-11-10','YYYY-MM-DD'), 76, 83, 68, 'KIG743')
, (44, TO_DATE('2025-11-10','YYYY-MM-DD'), 48, 55, 40, 'WXL744')
, (45, TO_DATE('2025-11-10','YYYY-MM-DD'), 38, 44, 31, 'KID745')
, (46, TO_DATE('2025-11-10','YYYY-MM-DD'), 56, 63, 48, 'WNG746')
, (47, TO_DATE('2025-11-10','YYYY-MM-DD'), 50, 57, 43, 'KEC747')
, (48, TO_DATE('2025-11-10','YYYY-MM-DD'), 45, 52, 37, 'KWO748')
, (49, TO_DATE('2025-11-10','YYYY-MM-DD'), 45, 53, 36, 'WXJ749')
, (50, TO_DATE('2025-11-10','YYYY-MM-DD'), 38, 45, 29, 'KIH750');

select * from states;

select * from county;

select * from city;

select * from weather_station;

select * from temperature;

--Q1. Find WEATHER_STATION whose IDs begin with KEC, list which state, county, and city they're in. 
select station_id from WEATHER_STATION
where lower(station_id) like '%kec%';

select ws.station_id as "Station ID" , s.state_name as "State" , co.county_name as "County" , ci.city_name as "City"
from WEATHER_STATION ws
join CITY ci on ws.city_id = ci.city_id 
join COUNTY co on ci.county_id = co.county_id 
join STATES s on co.state_id = s.state_id
where lower(station_id) like 'kec%'; 

--Q2. For each state, count how many temperature records report a high of 70 degrees or more.
select high_temp from TEMPERATURE
where high_temp >= 70;

select s.state_name as "State" , count(*) as "High Temps >= 70"
from TEMPERATURE t
join WEATHER_STATION ws on t.station_id = ws.station_id 
join CITY ci on ws.city_id = ci.city_id 
join COUNTY co on ci.county_id = co.county_id
join STATES s on co.state_id = s.state_id 
where t.high_temp >= 70
group by s.state_name
order by "High Temps >= 70";