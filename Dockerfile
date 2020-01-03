#Download base image ubuntu
FROM ilxl/ilxl-tuffix:19.04

# Copy ppr runner executable
COPY cppaudit-runner /cppaudit-runner

# run pprrunner
ENTRYPOINT ["/cppaudit-runner"]
