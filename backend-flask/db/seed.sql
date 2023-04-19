-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Sathya Pandalai', 'ab@ab.com' ,'SNP' ,'MOCK'),
  ('Sathya P', 'bb@ab.com','mailsforsat' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'mailsforsat' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )