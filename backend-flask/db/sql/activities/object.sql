SELECT 
    activities.uuid,
    activities.message,
    activities.created_at,
    activities.expires_at,
    users.display_name,
    users.handle
FROM public.activities
INNER JOIN public.users on users.uuid = activities.user_uuid
WHERE activities.uuid = %(uuid)s