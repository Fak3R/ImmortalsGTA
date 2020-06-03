Config = {}

Config.PlateText = 'RENTAS LIN' -- 🚔 rented car number 🚔

Config.MaxNoJob = 1 -- 🚜 maximum number of cars for rent without work 🚜
Config.MaxJob = 3 -- 🛸 maximum number of cars that can be rented while having a job 🛸

Config.DistanseSpawn = 50.0 -- 🗺 the distance at which the car will spawn 🗺
Config.DistanseLock = 5.0 -- 🔒 the distance at which the car will be closed 🔒

Config.CarLock = true -- 🔐 If "true" the rented car can be closed and opened 🔐

Config.VehiclePositions = {            
   -- Example: 🛵 Free car rental 🛵
	{x = -1010.71, y = -2696.58, z = 13.00, h = 81.69, model = 'faggio', price = false, job = 'none'},
	{x = -1010.06, y = -2694.96, z = 13.00, h = 84.48, model = 'faggio', price = false, job = 'none'},
	{x = -1009.44, y = -2693.55, z = 13.00, h = 76.99, model = 'faggio2', price = false, job = 'none'},
	{x = -1008.89, y = -2692.15, z = 13.00, h = 80.65, model = 'faggio2', price = false, job = 'none'},
	{x = -1007.13, y = -2688.77, z = 13.00, h = 79.70, model = 'faggio3', price = false, job = 'none'},
	{x = -1005.89, y = -2687.23, z = 13.00, h = 81.82, model = 'faggio3', price = false, job = 'none'},
	{x = -1004.96, y = -2685.47, z = 13.00, h = 84.86, model = 'tribike', price = false, job = 'none'},
	{x = -1004.33, y = -2684.0, z = 13.00, h = 76.25, model = 'tribike2', price = false, job = 'none'},
	{x = -1003.42, y = -2682.40, z = 13.00, h = 73.50, model = 'tribike3', price = false, job = 'none'},
	
	{x = -1020.50, y = -2690.93, z = 13.00, h = 223.85, model = 'faggio', price = false, job = 'none'},
	{x = -1019.57, y = -2689.42, z = 13.00, h = 225.41, model = 'faggio', price = false, job = 'none'},
	{x = -1018.65, y = -2687.41, z = 13.00, h = 225.44, model = 'faggio2', price = false, job = 'none'},
	{x = -1017.69, y = -2685.72, z = 13.00, h = 222.39, model = 'faggio2', price = false, job = 'none'},
	{x = -1016.08, y = -2682.52, z = 13.00, h = 227.78, model = 'faggio3', price = false, job = 'none'},
	{x = -1015.16, y = -2681.00, z = 13.00, h = 222.00, model = 'faggio3', price = false, job = 'none'},
	{x = -1014.21, y = -2679.60, z = 13.00, h = 226.37, model = 'tribike', price = false, job = 'none'},
	{x = -1013.51, y = -2678.31, z = 13.00, h = 231.22, model = 'tribike2', price = false, job = 'none'},
	{x = -1012.58, y = -2677.08, z = 13.00, h = 226.39, model = 'tribike3', price = false, job = 'none'},
	
	
  -- Example: 🚕 rent a car only for taxi drivers 🚕
   {x = 915.91, y = -170.71, z = 73.39, h = 99.52, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 918.04, y = -167.28, z = 73.63, h = 99.52, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 920.27, y = -163.68, z = 73.82, h = 99.52, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 916.48, y = -157.96, z = 74.12, h = 196.76, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 913.72, y = -160.06, z = 73.79, h = 196.76, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 911.55, y = -163.35, z = 73.24, h = 196.76, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 908.36, y = -183.05, z = 73.19, h = 59.02, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 906.69, y = -185.99, z = 73.10, h = 56.37, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 904.85, y = -188.73, z = 72.88, h = 56.39, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 903.14, y = -191.38, z = 72.78, h = 56.39, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 897.43, y = -183.44, z = 72.76, h = 238.03, model = 'priustaxi', price = false, job = 'taxi'},
   {x = 899.22, y = -180.53, z = 72.80, h = 239.05, model = 'priustaxi', price = false, job = 'taxi'},


  -- Example: 🚙 rent a car for money 🚙
   {x = -238.48, y = 6196.10, z = 30.48, h = 134.24, model = 'voodoo2', price = 600, job = 'none'},
   {x = -240.77, y = 6199.06, z = 30.48, h = 134.24, model = 'glendale', price = 600, job = 'none'},
   {x = -235.99, y = 6193.85, z = 30.48, h = 134.24, model = 'impaler', price = 600, job = 'none'},
   {x = -243.37, y = 6201.38, z = 30.48, h = 134.24, model = 'tampa', price = 600, job = 'none'},
   {x = -245.52, y = 6203.73, z = 30.48, h = 134.24, model = 'surge', price = 600, job = 'none'},
   {x = -247.97, y = 6206.30, z = 30.48, h = 134.24, model = 'dominator3', price = 600, job = 'none'},
   --POLICIAS-PALETO
   {x = -454.35, y = 6041.9, z = 31.04, h = 133.3, model = 'polgs350', price = 5, job = 'police'},
   {x = -457.4, y = 6045.12, z = 31.04, h = 133.3, model = 'polgs350', price = 6, job = 'police'},
   {x = -460.4, y = 6048.25, z = 31.04, h = 133.3, model = 'polgs350', price = 6, job = 'police'},
   {x = -469.47, y = 6039.18, z = 31.04, h = 227.91, model = 'polgs350', price = 6, job = 'police'},
   {x = -472.75, y = 6036.04, z = 31.04, h = 227.91, model = 'polgs350', price = 6, job = 'police'},
   {x = -476.3, y = 6032.17, z = 31.04, h = 227.91, model = 'polgs350', price = 6, job = 'police'},
   {x = -479.92, y = 6029, z = 31.04, h = 227.91, model = 'polgs350', price = 6, job = 'police'},
   {x = -483.62, y = 6025.13, z = 31.04, h = 227.91, model = 'polgs350', price = 6, job = 'police'},
   {x = -479.61, y = 6028.38, z = 31.04, h = 227.91, model = 'policeinsurgent', price = 6, job = 'police'},
   {x = -465.28, y = 6042.41, z = 31.04, h = 227.91, model = 'policeinsurgent', price = 6, job = 'police'},
   {x = -478.03, y = 6003.76, z = 31.22, h = 315.36, model = 'buzzard2', price = 6, job = 'police'},
    {x = -461.49, y = 5985.84, z = 31.22, h = 315.36, model = 'buzzard2', price = 6, job = 'police'},

--alquilar mecanico
   {x = -179.34, y = -1284.44, z = 31.05, h = 87.75, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -179.12, y = -1288.36, z = 31.05, h = 88.04, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -173.13, y = -1306.32, z = 31.05, h = 358.74, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -169.11, y = -1306.54, z = 31.06, h = 358.22, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -164.22, y = -1306.95, z = 31.08, h = 359.62, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -159.62, y = -1306.9, z = 31.09, h = 359.4, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -154.58, y = -1307.04, z = 31.08, h = 358.85, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -189.9, y = -1290.26, z = 31.05, h = 267.96, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -189.87, y = -1284.25, z = 31.01, h = 270.04, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -227.97, y = -1289.07, z = 31.05, h = 269.16, model = 'poltowtruck', price = 1, job = 'mechanic'},
   {x = -225, y = -1297.73, z = 31.1, h = 269.68, model = 'poltowtruck', price = 1, job = 'mechanic'},   
   --{x = -224.68, y = -1292.45, z = 31.06, h = 271.69, model = 'poltowtruck', price = 1, job = 'mechanic'},
   -- pesca 
   {x = 3794.13, y = 4444.38, z = 3.98, h = 359.68, model = 'dominator3', price = 450, job = 'none'},
   {x = 3777.49, y = 4444.15, z = 5.37, h = 1.06, model = 'guardian', price = 650, job = 'none'},
   {x = 3781.42, y = 4444.6, z = 5.18, h = 1.39, model = 'guardian', price = 650, job = 'none'},
   {x = 3784.76, y = 4444.66, z = 4.09, h = 357.41, model = 'dominator3', price = 450, job = 'none'},
   {x = 3788.09, y = 4444.55, z = 3.92, h = 358.78, model = 'dominator3', price = 450, job = 'none'},
   {x = 3791.02, y = 4444.35, z = 3.93, h = 0.11, model = 'dominator3', price = 450, job = 'none'},
   

}	

 --/ ☢️ Information ☢️ /--
-- x, y, z, h -> vehicle coordinates
-- model -> Car model
-- price -> Price per minute car rental (if "false" then rent is free)
-- job -> The name of the fraction only she can rent a transport(If "none" then everyone can rent a transpo)

--/ 🤕 Not a bug but a feature 🤕 /--
-- When a player gets in a car that he has not rented for others,
-- he disappears, if this is removed, the player will endlessly fall
-- under the map for others, although for himself everything will be in order.

--/ 😁 There are no bugs 😁 /-- 
-- Sometimes the rented car stops opening and closing, as I understand what
-- the problem will be fixed (but this is not accurate)