from nba_api.stats.static import teams
from nba_api.stats.endpoints import leaguegamefinder
import dlt
import pandas as pd

# Retrieve all NBA teams
nba_teams = teams.get_teams()

# Set up the dlt pipeline
pipeline = dlt.pipeline(
    pipeline_name="nba_team_game_data",
    destination="bigquery",
    dataset_name="nba_team_games"
)

# Create a list to hold all the resources and a combined list for all game data
all_resources = []
all_games = []  # For storing all games across teams

for team in nba_teams:
    team_id = team['id']
    team_name = team['full_name']

    #Fetch data for team
    gamefinder = leaguegamefinder.LeagueGameFinder(team_id_nullable=team_id)
    games_df = gamefinder.get_data_frames()[0]
    
    #Transform
    games_df.columns = games_df.columns.str.lower()  # Convert column names to lowercase
    
    #Convert to dictionary
    games_data_dict = games_df.to_dict(orient='records')
    
    #Add the list
    all_games.extend(games_data_dict)
    
    #Table name for team
    table_name = team_name.lower().replace(" ", "_") + "_games"

    # Create a resource for the team's data with write disposition set to append
    resource = dlt.resource(games_data_dict, name=table_name, write_disposition="append")

    # Add the resource to the list of all resources
    all_resources.append(resource)

# Create a DataFrame from combined data and drop duplicates
combined_games_df = pd.DataFrame(all_games)
combined_games_df.drop_duplicates(subset=['game_id'], inplace=True)  # Replace 'game_id' with your unique column

# Convert the deduplicated DataFrame to a dictionary format
all_games_distinct = combined_games_df.to_dict(orient='records')

# Create a resource for the combined games data and add it to the pipeline
combined_resource = dlt.resource(all_games_distinct, name="all_games", write_disposition="replace")
all_resources.append(combined_resource)

# Run the pipeline with all resources
info = pipeline.run(all_resources)

print(info)
