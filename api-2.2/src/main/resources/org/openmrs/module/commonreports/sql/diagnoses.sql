select
    diagnosis_id,
    encounter_id,
    patient_id,
    diagnosis_coded,
    diagnosis_non_coded,
    diagnosis_coded_name,
    rank,
    certainty,
    creator,
    date_created,
    voided,
    voided_by,
    date_voided,
    void_reason,
    uuid
from
    encounter_diagnosis
where
    date_created >= :startDate
    OR date_created <= :endDate