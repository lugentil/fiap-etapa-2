kubectl create secret generic aws-credentials \
  --from-literal=AWS_ACCESS_KEY_ID="$(aws configure get aws_access_key_id)" \
  --from-literal=AWS_SECRET_ACCESS_KEY="$(aws configure get aws_secret_access_key)" \
  --from-literal=AWS_SESSION_TOKEN="$(aws configure get aws_session_token)" -n evaluation-service
