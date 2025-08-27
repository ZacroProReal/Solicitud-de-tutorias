USE clase;
SELECT * FROM estudiante;
SELECT * FROM solicitud_tutoria;
SELECT * FROM sesion;
SELECT nombre_est, telefono_est, id_estudiante FROM estudiante;
SELECT nombre_est FROM estudiante WHERE email_est = 'felipe@uni.edu';
SELECT id_solicitud FROM solicitud_tutoria WHERE fecha_hora_tutoria = '2024-04-04 09:00:00';
SELECT comentarios_seg, hora_fin, comentarios_seguimiento FROM sesion WHERE fecha_sesion = '2024-04-04';

-- Sentencia para borrar columnas
ALTER TABLE sesion 
DROP COLUMN comentarios_seg;

-- Ordenar id_esudiante de manera descendente
SELECT nombre_est, id_estudiante FROM estudiante ORDER BY id_estudiante DESC;

-- Limita los resultados  a solo 5
SELECT nombre_est, id_estudiante FROM estudiante LIMIT 5;

-- Muestran nombres que empiezan con andres coloacando % aparece unicamente el primer campo para filtrar por cualquier parte %{nombre}% 
SELECT nombre_est FROM estudiante WHERE nombre_est  LIKE 'Andres%';
SELECT nombre_est FROM estudiante WHERE nombre_est  LIKE '%Diaz%';

-- Sentencia para relizar un conteo de los campos 
SELECT id_solicitud,fecha_hora_tutoria,tema_tutoria, COUNT(*) AS id_solicitud FROM solicitud_tutoria GROUP BY id_solicitud;
SELECT hora_fin, COUNT(*) AS total_hora_fin FROM sesion GROUP BY hora_fin;

