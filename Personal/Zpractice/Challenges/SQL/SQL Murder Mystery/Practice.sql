SELECT 

    -- // Personal Info = person table + drivers_license table
	PSN.id AS P_ID,
	PSN.NAME AS P_NAME,
	DL.gender AS P_GENDER,
	DL.age AS P_AGE,
	DL.height AS P_HEIGHT,
	DL.hair_color AS P_HAIR_COLOR,
	PSN.address_number AS P_ADD_NO,
	PSN.address_street_name AS P_ADDRESS,
	PSN.ssn AS P_SSN,

    -- // Car Info = drivers_license table
	DL.id AS CAR_LICENCE_ID,
	DL.plate_number AS CAR_PLATE_NO,
	DL.car_make AS CAR_BRAND,
	DL.car_model AS CAR_MODEL,

    -- Gym Info = get_fit_now_member table + get_fit_now_check_in table
    GYM.id AS GYM_ID,
	GYM.name AS GYM_Name,
	GYM.membership_start_date AS GYM_START_DATE,
	GYM.membership_status AS GYM_TIER,
	G_TIME.check_in_date AS GYM_CHECK_IN_DATE,
	G_TIME.check_in_time AS GYM_IN_TIME,
	G_TIME.check_out_time AS GYM_OUT_TIME,

    -- // Interview info = interview table
    I_VIEW.transcript AS I_VIEW,

    -- // FB info = facebook_event_checkin table
    FB_E.event_id AS FB_E_ID,
    FB_E.event_name AS FB_E_NAME,
    FB_E.date AS FB_E_DATE,

    -- // Income Info = income table
    IC.annual_income

FROM 
	person AS PSN
	
	LEFT JOIN drivers_license AS DL
	ON PSN.license_id = DL.id
	
	LEFT JOIN get_fit_now_member AS GYM
    ON GYM.person_id = PSN.id	
	
	LEFT JOIN get_fit_now_check_in AS G_TIME
	ON GYM.id = G_TIME.membership_id	

    LEFT JOIN interview AS I_VIEW
    ON I_VIEW.person_id = PSN.id

	LEFT JOIN facebook_event_checkin AS FB_E
	ON FB_E.person_id = PSN.id    

    LEFT JOIN income AS IC
	ON PSN.ssn = IC.ssn

WHERE
	PSN.id IN (14887, 16371, 67318)