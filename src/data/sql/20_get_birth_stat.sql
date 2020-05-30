SELECT SUM(pwgtp) AS oy_count, puma
FROM pums_2017 
WHERE puma BETWEEN '11610' AND '11615'
AND (esr = '3' OR esr = '6')
AND sch = '1'
AND sex = '2'
AND fer = '1'
AND agep BETWEEN '16' AND '24'
GROUP BY puma
;