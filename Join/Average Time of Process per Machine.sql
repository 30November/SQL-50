--MySQL, Oracle
SELECT  
    machine_id, 
    ROUND(AVG(e.timestamp - s.timestamp),3) processing_time
FROM 
    (Select machine_id, process_id, timestamp
    FROM Activity where activity_type = 'start') s
JOIN 
    (Select machine_id, process_id, timestamp
    FROM Activity where activity_type = 'end') e
USING
    (machine_id,process_id)

GROUP BY machine_id;


--Postgres
SELECT  
    machine_id, 
    ROUND(AVG(l.timestamp - r.timestamp)::numeric,3) processing_time -- datatype changed
FROM 
    (Select machine_id, process_id, timestamp
    FROM Activity where activity_type = 'start') r
JOIN 
    (Select machine_id, process_id, timestamp
    FROM Activity where activity_type = 'end') l
USING
    (machine_id,process_id)

GROUP BY machine_id;