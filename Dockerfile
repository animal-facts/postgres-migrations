FROM flyway/flyway:9.22.0

# Copy local migrations into the default Flyway SQL directory
COPY migrations/ /flyway/sql/

# Install PostgreSQL client tools
RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*
