select *
from
    person
    join get_fit_now_member on person.id = get_fit_now_member.person_id
    join get_fit_now_check_in on get_fit_now_member.membership_start_date = get_fit_now_check_in.check_in_date
    join drivers_license on person.license_id = drivers_license.id
where
    membership_id like '48Z%'
    and membership_status = 'gold';
