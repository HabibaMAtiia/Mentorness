SELECT COUNT(Booking_ID) as Total_Reservations 
FROM hotel_reservation_dataset;

SELECT type_of_meal_plan, COUNT(type_of_meal_plan) as meal_plan_count FROM hotel_reservation_dataset
GROUP BY type_of_meal_plan
ORDER BY meal_plan_count DESC
LIMIT 1;

SELECT avg_price_per_room FROM hotel_reservation_dataset
WHERE no_of_children > 0;

SELECT count(Booking_ID) as reservations_of_2017 FROM hotel_reservation_dataset
WHERE arrival_date LIKE '%2017';

SELECT room_type_reserved, COUNT(room_type_reserved) AS room_type_count
FROM hotel_reservation_dataset
GROUP BY room_type_reserved
ORDER BY room_type_count DESC
LIMIT 1;

SELECT COUNT(Booking_ID) as Total_weekend_Reservation FROM hotel_reservation_dataset
WHERE no_of_weekend_nights > 0 ;

SELECT MAX(lead_time) as heighest_lead_time, MIN(lead_time) as lowest_lead_time
FROM hotel_reservation_dataset;

SELECT market_segment_type, COUNT(market_segment_type) as market_segment_count FROM hotel_reservation_dataset
GROUP BY market_segment_type
ORDER BY market_segment_count DESC
LIMIT 1;

SELECT COUNT(booking_status) as Confirmed_reservations FROM hotel_reservation_dataset
WHERE booking_status = 'Not_Canceled' ;

SELECT SUM(no_of_children) as Total_children,
SUM(no_of_adults) as Total_adults
FROM hotel_reservation_dataset;



SELECT AVG(no_of_weekend_nights) as average_weekend_nights
FROM hotel_reservation_dataset 
WHERE no_of_children > 0 ;

SELECT EXTRACT(MONTH FROM arrival_date) AS month, COUNT(Booking_ID) AS reservations_count
FROM hotel_reservation_dataset
GROUP BY month
ORDER BY month;

SELECT room_type_reserved, AVG(no_of_week_nights) AS average_weekday, AVG(no_of_weekend_nights) AS average_weekend
FROM hotel_reservation_dataset
GROUP BY room_type_reserved ;

SELECT room_type_reserved, avg_price_per_room
FROM hotel_reservation_dataset
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY COUNT(room_type_reserved) DESC
LIMIT 1;

SELECT market_segment_type
FROM hotel_reservation_dataset
WHERE avg_price_per_room = ( SELECT MAX(avg_price_per_room)
                            FROM hotel_reservation_dataset);
