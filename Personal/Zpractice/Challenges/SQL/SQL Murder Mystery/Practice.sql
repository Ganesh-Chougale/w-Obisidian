select 

	PSN.id AS P_ID,
	PSN.NAME AS P_NAME,
	PSN.address_number AS P_ADD_NO,
	PSN.address_street_name AS P_ADDRESS,
	PSN.ssn AS P_SSN,
	DL.id AS CAR_LICENCE_ID,
	DL.age AS P_AGE,
	DL.height AS P_HEIGHT,
	DL.hair_color AS P_HAIR_COLOR,
	DL.gender AS P_GENDER,
	DL.plate_number AS CAR_PLATE_NO,
	DL.car_make AS CAR_BRAND,
	DL.car_model AS CAR_MODEL,
    GYM.id AS GYM_ID,
	GYM.name AS GYM_Name,
	GYM.membership_start_date AS GYM_START_DATE,
	GYM.membership_status AS GYM_TIER,
	G_TIME.check_in_date AS GYM_CHECK_IN_DATE,
	G_TIME.check_in_time AS GYM_IN_TIME,
	G_TIME.check_out_time AS GYM_OUT_TIME

FROM 
	person AS PSN
	
	JOIN drivers_license AS DL
	ON PSN.license_id = DL.id
	
	JOIN get_fit_now_member AS GYM
    ON GYM.person_id = PSN.id	
	
	JOIN get_fit_now_check_in AS G_TIME
	ON GYM.id = G_TIME.membership_id	

WHERE
	GYM.id LIKE  '%48Z%'
	AND GYM.membership_status = 'gold'
	AND G_TIME.check_in_date = '20180109'
    AND DL.plate_number LIKE '%H42W%'
    -- AND DL.gender = 'male'
    