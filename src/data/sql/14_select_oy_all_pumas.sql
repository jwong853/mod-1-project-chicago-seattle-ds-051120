SELECT 
serialno,
agep,
pwgtp,
sex,
schl,
puma,
puma_name
FROM pums_2017 p2
JOIN puma_names_2010 pn USING(puma)
WHERE agep BETWEEN '16' AND '24'
AND puma BETWEEN '11610' AND '11615'
AND (esr = '3' OR esr = '6')
AND sch = '1'
ORDER BY ageP DESC;