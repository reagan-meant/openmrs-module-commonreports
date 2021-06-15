SELECT 
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Serial sputum bacilloscopy' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded IS NOT NULL THEN 1 ELSE 0 END) as sputum,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Serial sputum bacilloscopy' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Positive' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) THEN 1 ELSE 0 END) as sputumPositive,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Malaria' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Positive' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) OR value_coded =(select DISTINCT concept_id from concept_name where name = 'Negative' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Indeterminate' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0)  THEN 1 ELSE 0 END) as malariaRapid,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Malaria' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Positive' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) THEN 1 ELSE 0 END) as malariaRapidPositive,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Malaria' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Zero' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'One plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) OR value_coded =(select DISTINCT concept_id from concept_name where name = 'Two plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Three plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Four plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) THEN 1 ELSE 0 END) as malariaMicro,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Malaria' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'One plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) OR value_coded =(select DISTINCT concept_id from concept_name where name = 'Two plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Three plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Four plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) THEN 1 ELSE 0 END) as malariaMicroPositive,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Malaria' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded IS NOT NULL THEN 1 ELSE 0 END) as malariaTotal,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Malaria' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Positive' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'One plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) OR value_coded =(select DISTINCT concept_id from concept_name where name = 'Two plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Three plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) or value_coded=(select DISTINCT concept_id from concept_name where name = 'Four plus' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) THEN 1 ELSE 0 END) as malariaPositive,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Complete Blood Count' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) and visit_type.uuid='35ba9aff-901c-49dc-8630-a59385480d18'  THEN 1 ELSE 0 END) as CBC,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Sickling Test' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded IS NOT NULL and visit_type.uuid='35ba9aff-901c-49dc-8630-a59385480d18' THEN 1 ELSE 0 END) as sickling,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Sickling Test' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Positive' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) and visit_type.uuid='35ba9aff-901c-49dc-8630-a59385480d18' THEN 1 ELSE 0 END) as sicklingPositive,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Blood Group' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded IS NOT NULL and visit_type.uuid='35ba9aff-901c-49dc-8630-a59385480d18' THEN 1 ELSE 0 END) as bloodGroup,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Urinalysis' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) THEN 1 ELSE 0 END) as urinalysis,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Sickling Test' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded IS NOT NULL and visit_type.uuid<>'35ba9aff-901c-49dc-8630-a59385480d18' THEN 1 ELSE 0 END) as otherSickling,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Sickling Test' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded=(select DISTINCT concept_id from concept_name where name = 'Positive' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) and visit_type.uuid<>'35ba9aff-901c-49dc-8630-a59385480d18' THEN 1 ELSE 0 END) as otherSicklingPositive,
sum(CASE WHEN concept_id=(select DISTINCT concept_id from concept_name where name = 'Blood Group' and locale='en' and concept_name_type='FULLY_SPECIFIED' and voided = 0) AND value_coded IS NOT NULL and visit_type.uuid<>'35ba9aff-901c-49dc-8630-a59385480d18' THEN 1 ELSE 0 END) as otherbloodGroup
FROM obs inner join encounter ON obs.encounter_id=encounter.encounter_id inner join visit ON  encounter.visit_id=visit.visit_id inner join visit_type ON visit.visit_type_id=visit_type.visit_type_id
where obs.voided = 0 
AND date(obs.obs_datetime) BETWEEN :startDate AND :endDate ;