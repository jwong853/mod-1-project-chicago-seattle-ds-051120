SELECT SUM(pwgtp) AS oy_count, n.puma_name
FROM pums_2017 p
JOIN puma_names_2010 n
ON p.puma = n.puma
WHERE p.puma BETWEEN '11610' AND '11615'
AND (p.esr = '3' OR p.esr = '6')
AND p.sch = '1'
AND p.agep BETWEEN '16' AND '24'
GROUP BY n.puma_name
;