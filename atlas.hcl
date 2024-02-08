// Define an environment named "local"
env "local" {
  // Declare where the schema definition resides.
  // Also supported: ["multi.hcl", "file.hcl"].
  src = "./db/schema.hcl"

  // Define the URL of the database which is managed
  // in this environment.
  url = "postgres://postgres:password@localhost:5432/demo?sslmode=disable"

  // Define the URL of the Dev Database for this environment
  // See: https://atlasgo.io/concepts/dev-database
  dev = "docker://postgres/15.2"

  migration {
    dir = "file://db/migrations"

    format = atlas
  }
}

env "stage" {
  // Declare where the schema definition resides.
  // Also supported: ["multi.hcl", "file.hcl"].
  src = "./db/stage.schema.sql"

  // Define the URL of the database which is managed
  // in this environment.
  url = "postgres://postgres:password@localhost:5433/demo?sslmode=disable"

  // Define the URL of the Dev Database for this environment
  // See: https://atlasgo.io/concepts/dev-database
  dev = "docker://postgres/15.2"

  migration {
    dir = "file://db/stage-migrations"

    format = atlas
  }
}