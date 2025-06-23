curl -X POST \
    https://cloud-run-url/apps/greeter-agent-app/users/bigquery-user/sessions/session_abc12345 \
    -H "Content-Type: application/json" \
    -d '{"state": {"preferred_language": "English", "visit_count": 5}}'


curl -X POST \
    https://cloud-run-url/run_sse \
    -H "Content-Type: application/json" \
    -d '{
    "app_name": "greeter-agent-app",
    "user_id": "sample-user",
    "session_id": "session_abc12345",
    "new_message": {
        "role": "user",
        "parts": [{
        "text": "How are you today? Can you tell me the capital of Canada?"
        }]
    },
    "streaming": false
    }'