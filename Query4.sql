use AnalisisCaso2;


-- VIEW 4.1 Completion rate y skips por fuente de discovery
CREATE VIEW v_calidad_por_fuente AS
SELECT 
    discovery_source,
    ROUND(AVG(completion_rate), 2) AS avg_completion,
    ROUND(AVG(seconds_played), 2)  AS avg_segundos,
    SUM(skipped)                   AS total_skips
FROM play_events
GROUP BY discovery_source
ORDER BY avg_completion DESC;


-- VIEW 4.2 Calidad por tipo de suscripción
CREATE VIEW v_calidad_por_suscripcion AS
SELECT 
    u.subscription_type,
    ROUND(AVG(pe.completion_rate), 2) AS avg_completion,
    ROUND(AVG(pe.repeat_count), 2)    AS avg_repeticiones,
    SUM(pe.skipped)                   AS total_skips
FROM play_events pe
JOIN users u ON pe.user_id = u.user_id
GROUP BY u.subscription_type;


-- VIEW 4.3 Artistas con mejor calidad de escucha
CREATE VIEW v_calidad_por_artista AS
SELECT 
    a.artist_name,
    ROUND(AVG(pe.completion_rate), 2) AS avg_completion,
    ROUND(AVG(pe.repeat_count), 2)    AS avg_repeticiones,
    SUM(pe.skipped)                   AS total_skips
FROM play_events pe
JOIN songs   s ON pe.song_id  = s.song_id
JOIN artists a ON s.artist_id = a.artist_id
GROUP BY a.artist_name
ORDER BY avg_completion DESC;


-- VIEW 5.1 Fuentes por completion rate y repetición
CREATE VIEW v_discovery_engagement AS
SELECT 
    discovery_source,
    COUNT(*)                          AS total_plays,
    ROUND(AVG(completion_rate), 2)    AS avg_completion,
    ROUND(AVG(repeat_count), 2)       AS avg_repeticiones
FROM play_events
GROUP BY discovery_source
ORDER BY avg_completion DESC;


-- VIEW 5.2 Fuentes por saves y shares
CREATE VIEW v_discovery_interacciones AS
SELECT 
    pe.discovery_source,
    SUM(i.saved_to_library) AS total_saves,
    SUM(i.shared)           AS total_shares,
    SUM(i.liked)            AS total_likes
FROM play_events pe
JOIN interactions i ON pe.event_id = i.event_id
GROUP BY pe.discovery_source
ORDER BY total_saves DESC;


-- VIEW 5.3 Fuentes por tipo de usuario
CREATE VIEW v_discovery_por_suscripcion AS
SELECT 
    u.subscription_type,
    pe.discovery_source,
    COUNT(*)                          AS total_plays,
    ROUND(AVG(pe.completion_rate), 2) AS avg_completion
FROM play_events pe
JOIN users u ON pe.user_id = u.user_id
GROUP BY u.subscription_type, pe.discovery_source
ORDER BY u.subscription_type, avg_completion DESC;