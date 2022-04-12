export AWS_ACCOUNT_ID=${AWS_ACCOUNT_ID:-883127560329}
export AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION:-us-west-2}
export AWS_PROFILE=${AWS_PROFILE:-dev/vault}

aws ecr get-login-password --region "${AWS_DEFAULT_REGION}" | docker login --username AWS --password-stdin "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"