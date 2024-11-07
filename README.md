# elt-pipeline-dbt
I have created a pipeline using dlt (Extract), Google BigQuery (Load) and dbt (Transform) to give an easy overview of using these big data tools to create a smooth data pipeline at scale

Directory Tree

┣ .dlt/
┃ ┣ .sources
┃ ┣ config.toml
┃ ┗ secrets.toml
┣ dbt_project/
┃ ┣ analyses/
┃ ┃ ┗ .gitkeep
┃ ┣ logs/
┃ ┃ ┗ dbt.log
┃ ┣ macros/
┃ ┃ ┗ .gitkeep
┃ ┣ models/
┃ ┃ ┗ example/
┃ ┣ seeds/
┃ ┃ ┗ .gitkeep
┃ ┣ snapshots/
┃ ┃ ┗ .gitkeep
┃ ┣ target/
┃ ┣ tests/
┃ ┣ .gitignore
┃ ┣ README.md
┃ ┣ dbt_project.yml
┃ ┗ sources.yml
┣ logs/
┃ ┗ dbt.log
┣ .cache
┣ .gitignore
┣ app.py
┣ dlt-pipeline.py
┣ dlt-service-account-file.json
┣ requirements.txt
