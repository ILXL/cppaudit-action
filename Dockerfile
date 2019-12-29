#Download base image ubuntu
FROM ilxl/ilxl-tuffix:19.04

# Copy ppr runner executable
COPY pprrunner /pprrunner

# run pprrunner
ENTRYPOINT ["/pprrunner"]
