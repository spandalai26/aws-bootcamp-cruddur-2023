INSERT INTO public.activities 
(user_uuid, message, expires_at)
VALUES (
(SELECT uuid FROM public.users where users.handle = %(handle)s), 
%(message)s, 
%(expires_at)s
)
RETURNING uuid;