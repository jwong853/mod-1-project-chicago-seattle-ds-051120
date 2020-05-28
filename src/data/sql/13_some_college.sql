SELECT SUM(pwgtp) AS pop_count, n.puma_name, p.puma
FROM pums_2017 p
JOIN puma_names_2010 n
ON p.puma = n.puma
WHERE (agep BETWEEN '16' AND '18')
AND (p.puma BETWEEN '11610' AND '11615')
AND (p.sch = '1')
AND (p.schl = '18' OR p.schl = '19')
AND (p.esr != '1' AND p.esr != '4') 
AND (p.esr != '4')
GROUP BY n.puma_name, p.puma
;