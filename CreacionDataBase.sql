
-- 1. Crea la base de datos solo si no está ahí
create database caso2;
-- 2. Usa la base de datos
use caso2;
-- 3. Crea la tabla de clientes

CREATE TABLE artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    city VARCHAR(50),
    subscription_type VARCHAR(50),
    monthly_fee_mxn DECIMAL(10, 2),
    acquisition_channel VARCHAR(50),
    signup_date DATE,
    last_active_date DATE,
    payment_method VARCHAR(50)
);

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(50) NOT NULL,
    album VARCHAR(50),
    genre VARCHAR(50),
    release_year INT,
    track_duration_sec INT,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE sessions (
    session_id VARCHAR(50) PRIMARY KEY,
    session_duration_min INT
);

CREATE TABLE devices (
    device_id VARCHAR(50) PRIMARY KEY,
    device_type VARCHAR(50),
    os VARCHAR(100),
    app_version VARCHAR(50),
    connection_type VARCHAR(50)
);

CREATE TABLE playlists (
    playlist_id VARCHAR(50) PRIMARY KEY,
    playlist_name VARCHAR(50) NOT NULL,
    playlist_category VARCHAR(50)
);

CREATE TABLE play_events (
    event_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    session_id VARCHAR(50) NOT NULL,
    play_date DATE,
    play_time TIME,
    seconds_played INT,
    completion_rate DECIMAL(5, 2),
    skipped BOOLEAN,
    repeat_count INT,
    discovery_source VARCHAR(50),
    search_query VARCHAR(50),
    device_id VARCHAR(50),
    FOREIGN KEY (user_id)    REFERENCES users(user_id),
    FOREIGN KEY (song_id)    REFERENCES songs(song_id),
    FOREIGN KEY (session_id) REFERENCES sessions(session_id),
    FOREIGN KEY (device_id)  REFERENCES devices(device_id)
);

CREATE TABLE interactions (
    interaction_id VARCHAR(50) PRIMARY KEY,
    event_id INT NOT NULL,
    liked BOOLEAN,
    saved_to_library BOOLEAN,
    added_to_playlist BOOLEAN,
    shared BOOLEAN,
    downloaded BOOLEAN,
    FOREIGN KEY (event_id) REFERENCES play_events(event_id)
);

CREATE TABLE ads (
    ad_id VARCHAR(50) PRIMARY KEY,
    event_id INT NOT NULL,
    ads_watched INT,
    FOREIGN KEY (event_id) REFERENCES play_events(event_id)
);

CREATE TABLE event_device (
    event_id  INT NOT NULL,
    device_id VARCHAR(50) NOT NULL,
    PRIMARY KEY (event_id, device_id),
    FOREIGN KEY (event_id)  REFERENCES play_events(event_id),
    FOREIGN KEY (device_id) REFERENCES devices(device_id)
);

CREATE TABLE event_playlist (
    event_id INT NOT NULL,
    playlist_id VARCHAR(50) NOT NULL,
    PRIMARY KEY (event_id, playlist_id),
    FOREIGN KEY (event_id) REFERENCES play_events(event_id),
    FOREIGN KEY (playlist_id) REFERENCES playlists(playlist_id)
);



