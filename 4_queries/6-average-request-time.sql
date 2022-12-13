SELECT AVG(assistance_requests.started_at - assistance_requests.created_at) as average_assistance_time
FROM assistance_requests
ORDER BY average_assistance_time DESC
LIMIT 1;