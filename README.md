# elt-pipeline-dbt
I have created a pipeline using dlt (Extract), Google BigQuery (Load) and dbt (Transform) to give an easy overview of using these big data tools to create a smooth data pipeline at scale

Directory Tree
.
├── .dlt/
│   └── .sources/
│       ├── config.toml
│       └── secrets.toml
├── dlt-nba-team-game-pipeline
├── your-dlt-service-account-file.json
├── dbt-project/
│   ├── analyses
│   ├── logs
│   ├── macros
│   ├── models/
│   │   ├── schema.yml
│   │   └── your-dbt-model.sql
│   ├── seeds
│   ├── snapshots
│   ├── target
│   ├── tests
│   ├── .gitignore
│   ├── dbt_project.yml
│   ├── README.md
│   ├── sources.yml
│   └── logs
├── .cache
├── .gitignore
└── requirements.txt
