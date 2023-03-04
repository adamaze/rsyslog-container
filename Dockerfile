# Use the Rocky 9 base image
FROM rocky:9

# Install rsyslog
RUN dnf update -y && dnf install -y rsyslog

# Start rsyslog service
ENTRYPOINT ["rsyslogd", "-n"]
