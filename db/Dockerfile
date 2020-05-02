FROM postgres:12-alpine
ENV POSTGRES_PASSWORD=postgres
COPY db/database_ogame_univese.sql /docker-entrypoint-initdb.d/

# docker build -f db/Dockerfile -t ogame_db .
# docker run -p 5433:5432 -v ogame_db_volume:/var/lib/postgresql/data ogame_db