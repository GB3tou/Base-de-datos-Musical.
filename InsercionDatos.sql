-- Active: 1776317310024@@127.0.0.1@3306@caso2
-- Active: 1776317310024@@127.0.0.1@3306@caso2
use caso2;

-- 1. artists
-- ============================================================
INSERT INTO artists (artist_id, artist_name) VALUES (1, 'Arctic Monkeys');
INSERT INTO artists (artist_id, artist_name) VALUES (2, 'Cage The Elephant');
INSERT INTO artists (artist_id, artist_name) VALUES (3, 'Tame Impala');
INSERT INTO artists (artist_id, artist_name) VALUES (4, 'The 1975');
INSERT INTO artists (artist_id, artist_name) VALUES (5, 'The Killers');
INSERT INTO artists (artist_id, artist_name) VALUES (6, 'The Strokes');

-- ============================================================
-- 2. songs
-- ============================================================
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (1, 'Mr Brightside', 'Hot Fuss', 'Alt Rock', 2004, 222, 5);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (2, 'Last Nite', 'Is This It', 'Alt Rock', 2001, 193, 6);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (3, 'Human', 'Day & Age', 'Alt Rock', 2008, 245, 5);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (4, 'Do I Wanna Know', 'AM', 'Alt Rock', 2013, 272, 1);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (5, 'Somebody Else', 'I Like It When You Sleep', 'Alt Rock', 2016, 347, 4);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (6, '505', 'Favourite Worst Nightmare', 'Alt Rock', 2007, 253, 1);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (7, 'The Less I Know The Better', 'Currents', 'Alt Rock', 2015, 216, 3);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (8, 'Cigarette Daydreams', 'Melophobia', 'Alt Rock', 2013, 210, 2);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (9, 'Borderline', 'The Slow Rush', 'Alt Rock', 2020, 230, 3);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (10, 'Reptilia', 'Room On Fire', 'Alt Rock', 2003, 217, 6);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (11, 'When You Were Young', 'Sams Town', 'Alt Rock', 2006, 220, 5);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (12, 'The Sound', 'I Like It When You Sleep', 'Alt Rock', 2016, 248, 4);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (13, 'I Wanna Be Yours', 'AM', 'Alt Rock', 2013, 183, 1);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (14, 'Someday', 'Is This It', 'Alt Rock', 2001, 187, 6);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (15, 'Aint No Rest for the Wicked', 'Cage The Elephant', 'Alt Rock', 2008, 172, 2);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (16, 'New Person Same Old Mistakes', 'Currents', 'Alt Rock', 2015, 360, 3);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (17, 'Love It If We Made It', 'A Brief Inquiry', 'Alt Rock', 2018, 274, 4);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (18, 'Read My Mind', 'Sams Town', 'Alt Rock', 2006, 240, 5);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (19, 'Chocolate', 'The 1975', 'Alt Rock', 2013, 240, 4);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (20, 'Come A Little Closer', 'Melophobia', 'Alt Rock', 2013, 220, 2);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (21, 'Feels Like We Only Go Backwards', 'Lonerism', 'Alt Rock', 2012, 200, 3);
INSERT INTO songs (song_id, song_name, album, genre, release_year, track_duration_sec, artist_id) VALUES (22, 'Snap Out Of It', 'AM', 'Alt Rock', 2013, 193, 1);

-- ============================================================
-- 3. users
-- ============================================================
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (301, 'leo23', 23, 'Mexico', 'CDMX', 'Premium', 129.00, 'Instagram', '2022-06-10', '2024-03-10', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (302, 'mia21', 21, 'Chile', 'Santiago', 'Free', 0.00, 'TikTok', '2024-01-20', '2024-03-08', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (303, 'daniel25', 25, 'Mexico', 'Guadalajara', 'Premium', 149.00, 'Referral', '2021-11-02', '2024-03-12', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (304, 'sara19', 19, 'Argentina', 'Buenos Aires', 'Free', 0.00, 'YouTube', '2024-02-14', '2024-03-07', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (305, 'pablo27', 27, 'Colombia', 'Medellin', 'Premium', 129.00, 'Referral', '2022-04-10', '2024-03-13', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (306, 'lucas22', 22, 'Mexico', 'Puebla', 'Free', 0.00, 'TikTok', '2024-02-25', '2024-03-09', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (307, 'emma24', 24, 'Chile', 'Santiago', 'Premium', 149.00, 'Instagram', '2023-03-01', '2024-03-11', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (308, 'mateo26', 26, 'Mexico', 'CDMX', 'Premium', 129.00, 'Referral', '2022-08-15', '2024-03-14', 'PayPal');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (309, 'vale20', 20, 'Peru', 'Lima', 'Free', 0.00, 'TikTok', '2024-03-01', '2024-03-10', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (310, 'nico28', 28, 'Mexico', 'Monterrey', 'Premium', 149.00, 'Referral', '2021-12-20', '2024-03-13', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (311, 'andres29', 29, 'Mexico', 'CDMX', 'Premium', 149.00, 'Instagram', '2023-01-10', '2024-03-12', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (312, 'sofia23', 23, 'Colombia', 'Bogota', 'Free', 0.00, 'YouTube', '2024-02-10', '2024-03-08', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (313, 'julio30', 30, 'Mexico', 'CDMX', 'Premium', 149.00, 'Referral', '2021-09-15', '2024-03-14', 'PayPal');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (314, 'clara21', 21, 'Argentina', 'Buenos Aires', 'Free', 0.00, 'TikTok', '2024-03-02', '2024-03-10', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (315, 'raul27', 27, 'Mexico', 'Monterrey', 'Premium', 129.00, 'Referral', '2022-07-10', '2024-03-13', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (316, 'lucia22', 22, 'Chile', 'Santiago', 'Free', 0.00, 'Instagram', '2024-02-18', '2024-03-09', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (317, 'ivan29', 29, 'Mexico', 'CDMX', 'Premium', 149.00, 'Referral', '2022-01-05', '2024-03-14', 'Tarjeta');
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (318, 'marco24', 24, 'Peru', 'Lima', 'Free', 0.00, 'TikTok', '2024-03-03', '2024-03-10', NULL);
INSERT INTO users (user_id, user_name, age, country, city, subscription_type, monthly_fee_mxn, acquisition_channel, signup_date, last_active_date, payment_method) VALUES (319, 'ana26', 26, 'Mexico', 'CDMX', 'Premium', 149.00, 'Instagram', '2023-04-01', '2024-03-12', 'Tarjeta');

-- ============================================================
-- 4. sessions
-- ============================================================
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s201', 55);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s202', 18);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s203', 65);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s204', 12);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s205', 50);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s206', 16);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s207', 60);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s208', 75);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s209', 10);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s210', 70);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s211', 45);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s212', 14);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s213', 80);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s214', 11);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s215', 60);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s216', 13);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s217', 85);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s218', 10);
INSERT INTO sessions (session_id, session_duration_min) VALUES ('s219', 58);

-- ============================================================
-- 5. devices
-- ============================================================
INSERT INTO devices (device_id, device_type, os, app_version, connection_type) VALUES ('d001', 'Desktop', 'MacOS', '1.4.0', 'WiFi');
INSERT INTO devices (device_id, device_type, os, app_version, connection_type) VALUES ('d002', 'Desktop', 'Windows', '1.4.0', 'WiFi');
INSERT INTO devices (device_id, device_type, os, app_version, connection_type) VALUES ('d003', 'Mobile', 'Android', '1.4.1', 'Datos');
INSERT INTO devices (device_id, device_type, os, app_version, connection_type) VALUES ('d004', 'Mobile', 'iOS', '1.4.1', 'WiFi');
INSERT INTO devices (device_id, device_type, os, app_version, connection_type) VALUES ('d005', 'Tablet', 'iOS', '1.4.1', 'WiFi');

-- ============================================================
-- 6. playlists
-- ============================================================
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl001', 'All Time Indie', 'Nostalgia');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl002', 'Chill Indie', 'Mood');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl003', 'Deep Focus', 'Focus');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl004', 'Evening Indie', 'Mood');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl005', 'Focus Indie', 'Focus');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl006', 'Heartbreak Indie', 'Mood');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl007', 'Indie Classics', 'Nostalgia');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl008', 'Indie Mix', 'Editorial');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl009', 'Indie Starter', 'Editorial');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl010', 'Moody Indie', 'Mood');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl011', 'Night Indie', 'Mood');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl012', 'Roadtrip', 'Commute');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl013', 'Viral Indie', 'Viral');
INSERT INTO playlists (playlist_id, playlist_name, playlist_category) VALUES ('pl014', 'Workout Indie', 'Workout');

-- ============================================================
-- 7. play_events
-- ============================================================
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (1, 301, 1, 's201', '2024-03-01', '08:00:00', 222, 100.0, FALSE, 6, 'Search', 'mr brightside', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (2, 301, 2, 's201', '2024-03-01', '08:05:00', 193, 100.0, FALSE, 5, 'Playlist', 'last nite', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (3, 301, 3, 's201', '2024-03-01', '08:10:00', 245, 100.0, FALSE, 2, 'Search', 'human', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (4, 302, 4, 's202', '2024-03-01', '09:00:00', 272, 100.0, FALSE, 3, 'Search', 'do i wanna know', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (5, 302, 5, 's202', '2024-03-01', '09:07:00', 120, 34.0, TRUE, 0, 'Autoplay', 'somebody else', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (6, 302, 6, 's202', '2024-03-01', '09:10:00', 253, 100.0, FALSE, 4, 'Search', '505', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (7, 303, 7, 's203', '2024-03-01', '10:10:00', 216, 100.0, FALSE, 7, 'Search', 'tame impala', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (8, 303, 8, 's203', '2024-03-01', '10:15:00', 210, 100.0, FALSE, 2, 'Playlist', 'cigarette daydreams', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (9, 303, 9, 's203', '2024-03-01', '10:20:00', 100, 43.0, TRUE, 0, 'Autoplay', 'borderline', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (10, 304, 10, 's204', '2024-03-01', '11:00:00', 110, 50.0, TRUE, 0, 'NewRelease', 'reptilia', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (11, 304, 6, 's204', '2024-03-01', '11:05:00', 253, 100.0, FALSE, 3, 'Search', '505', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (12, 305, 11, 's205', '2024-03-01', '12:00:00', 220, 100.0, FALSE, 5, 'Playlist', 'when you were young', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (13, 305, 12, 's205', '2024-03-01', '12:06:00', 120, 48.0, TRUE, 0, 'Autoplay', 'the sound', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (14, 306, 13, 's206', '2024-03-01', '13:00:00', 183, 100.0, FALSE, 6, 'Search', 'i wanna be yours', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (15, 306, 9, 's206', '2024-03-01', '13:05:00', 95, 41.0, TRUE, 0, 'Autoplay', 'borderline', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (16, 307, 14, 's207', '2024-03-02', '09:20:00', 187, 100.0, FALSE, 5, 'Search', 'someday', 'd005');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (17, 307, 15, 's207', '2024-03-02', '09:25:00', 172, 100.0, FALSE, 2, 'Playlist', 'aint no rest', 'd005');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (18, 308, 16, 's208', '2024-03-02', '10:30:00', 360, 100.0, FALSE, 8, 'Search', 'new person same old mistakes', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (19, 308, 3, 's208', '2024-03-02', '10:38:00', 245, 100.0, FALSE, 2, 'Playlist', 'human', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (20, 309, 6, 's209', '2024-03-02', '11:00:00', 253, 100.0, FALSE, 7, 'Search', '505', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (21, 309, 17, 's209', '2024-03-02', '11:05:00', 85, 31.0, TRUE, 0, 'Autoplay', 'love it if we made it', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (22, 310, 1, 's210', '2024-03-02', '12:00:00', 222, 100.0, FALSE, 9, 'Search', 'mr brightside', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (23, 310, 2, 's210', '2024-03-02', '12:05:00', 193, 100.0, FALSE, 7, 'Playlist', 'last nite', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (24, 311, 18, 's211', '2024-03-02', '13:00:00', 240, 100.0, FALSE, 4, 'Search', 'read my mind', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (25, 311, 19, 's211', '2024-03-02', '13:05:00', 120, 50.0, TRUE, 0, 'Autoplay', 'chocolate', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (26, 312, 14, 's212', '2024-03-02', '14:00:00', 187, 100.0, FALSE, 3, 'Search', 'someday', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (27, 312, 20, 's212', '2024-03-02', '14:05:00', 100, 45.0, TRUE, 0, 'Autoplay', 'come a little closer', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (28, 313, 21, 's213', '2024-03-02', '15:00:00', 200, 100.0, FALSE, 6, 'Search', 'tame impala', 'd002');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (29, 313, 3, 's213', '2024-03-02', '15:10:00', 245, 100.0, FALSE, 2, 'Playlist', 'human', 'd002');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (30, 314, 22, 's214', '2024-03-02', '16:00:00', 193, 100.0, FALSE, 5, 'Search', 'snap out of it', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (31, 314, 12, 's214', '2024-03-02', '16:05:00', 90, 36.0, TRUE, 0, 'Autoplay', 'the sound', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (32, 315, 1, 's215', '2024-03-02', '17:00:00', 222, 100.0, FALSE, 10, 'Search', 'mr brightside', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (33, 315, 10, 's215', '2024-03-02', '17:05:00', 217, 100.0, FALSE, 6, 'Playlist', 'reptilia', 'd004');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (34, 316, 13, 's216', '2024-03-02', '18:00:00', 183, 100.0, FALSE, 6, 'Search', 'i wanna be yours', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (35, 316, 9, 's216', '2024-03-02', '18:05:00', 95, 41.0, TRUE, 0, 'Autoplay', 'borderline', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (36, 317, 7, 's217', '2024-03-02', '19:00:00', 216, 100.0, FALSE, 9, 'Search', 'tame impala', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (37, 317, 18, 's217', '2024-03-02', '19:10:00', 240, 100.0, FALSE, 3, 'Playlist', 'read my mind', 'd001');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (38, 318, 2, 's218', '2024-03-02', '20:00:00', 193, 100.0, FALSE, 7, 'Search', 'last nite', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (39, 318, 19, 's218', '2024-03-02', '20:05:00', 80, 33.0, TRUE, 0, 'Autoplay', 'chocolate', 'd003');
INSERT INTO play_events (event_id, user_id, song_id, session_id, play_date, play_time, seconds_played, completion_rate, skipped, repeat_count, discovery_source, search_query, device_id) VALUES (40, 319, 4, 's219', '2024-03-02', '21:00:00', 272, 100.0, FALSE, 5, 'Search', 'do i wanna know', 'd004');

-- ============================================================
-- 8. interactions
-- ============================================================
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int001', 1, TRUE, TRUE, TRUE, FALSE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int002', 2, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int003', 3, TRUE, FALSE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int004', 4, TRUE, TRUE, TRUE, TRUE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int005', 5, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int006', 6, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int007', 7, TRUE, TRUE, TRUE, TRUE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int008', 8, TRUE, FALSE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int009', 9, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int010', 10, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int011', 11, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int012', 12, TRUE, TRUE, TRUE, TRUE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int013', 13, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int014', 14, TRUE, TRUE, TRUE, TRUE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int015', 15, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int016', 16, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int017', 17, TRUE, FALSE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int018', 18, TRUE, TRUE, TRUE, TRUE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int019', 19, TRUE, FALSE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int020', 20, TRUE, TRUE, TRUE, TRUE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int021', 21, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int022', 22, TRUE, TRUE, TRUE, FALSE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int023', 23, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int024', 24, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int025', 25, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int026', 26, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int027', 27, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int028', 28, TRUE, TRUE, TRUE, TRUE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int029', 29, TRUE, FALSE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int030', 30, TRUE, TRUE, TRUE, TRUE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int031', 31, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int032', 32, TRUE, TRUE, TRUE, FALSE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int033', 33, TRUE, TRUE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int034', 34, TRUE, TRUE, TRUE, TRUE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int035', 35, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int036', 36, TRUE, TRUE, TRUE, TRUE, TRUE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int037', 37, TRUE, FALSE, TRUE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int038', 38, TRUE, TRUE, TRUE, TRUE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int039', 39, FALSE, FALSE, FALSE, FALSE, FALSE);
INSERT INTO interactions (interaction_id, event_id, liked, saved_to_library, added_to_playlist, shared, downloaded) VALUES ('int040', 40, TRUE, TRUE, TRUE, FALSE, TRUE);

-- ============================================================
-- 9. ads
-- ============================================================
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad001', 4, 6);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad002', 5, 5);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad003', 6, 5);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad004', 10, 7);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad005', 11, 6);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad006', 14, 8);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad007', 15, 7);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad008', 20, 9);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad009', 21, 8);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad010', 26, 6);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad011', 27, 5);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad012', 30, 7);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad013', 31, 6);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad014', 34, 6);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad015', 35, 5);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad016', 38, 8);
INSERT INTO ads (ad_id, event_id, ads_watched) VALUES ('ad017', 39, 7);

-- ============================================================
-- 10. event_device
-- ============================================================
INSERT INTO event_device (event_id, device_id) VALUES (1, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (2, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (3, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (4, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (5, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (6, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (7, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (8, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (9, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (10, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (11, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (12, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (13, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (14, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (15, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (16, 'd005');
INSERT INTO event_device (event_id, device_id) VALUES (17, 'd005');
INSERT INTO event_device (event_id, device_id) VALUES (18, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (19, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (20, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (21, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (22, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (23, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (24, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (25, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (26, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (27, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (28, 'd002');
INSERT INTO event_device (event_id, device_id) VALUES (29, 'd002');
INSERT INTO event_device (event_id, device_id) VALUES (30, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (31, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (32, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (33, 'd004');
INSERT INTO event_device (event_id, device_id) VALUES (34, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (35, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (36, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (37, 'd001');
INSERT INTO event_device (event_id, device_id) VALUES (38, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (39, 'd003');
INSERT INTO event_device (event_id, device_id) VALUES (40, 'd004');

-- ============================================================
-- 11. event_playlist
-- ============================================================
INSERT INTO event_playlist (event_id, playlist_id) VALUES (1, 'pl007');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (2, 'pl007');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (3, 'pl007');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (4, 'pl010');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (5, 'pl010');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (6, 'pl010');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (7, 'pl003');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (8, 'pl003');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (9, 'pl003');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (10, 'pl008');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (11, 'pl008');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (12, 'pl012');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (13, 'pl012');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (14, 'pl013');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (15, 'pl013');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (16, 'pl002');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (17, 'pl002');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (18, 'pl003');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (19, 'pl003');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (20, 'pl006');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (21, 'pl006');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (22, 'pl001');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (23, 'pl001');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (24, 'pl004');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (25, 'pl004');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (26, 'pl009');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (27, 'pl009');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (28, 'pl005');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (29, 'pl005');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (30, 'pl013');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (31, 'pl013');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (32, 'pl014');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (33, 'pl014');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (34, 'pl002');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (35, 'pl002');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (36, 'pl011');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (37, 'pl011');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (38, 'pl013');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (39, 'pl013');
INSERT INTO event_playlist (event_id, playlist_id) VALUES (40, 'pl011');
