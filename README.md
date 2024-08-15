# ff-compare-wr-rb
We explore the best fantasy football strategy: a WR-RB or a double RB strategy for the first 2 rounds. We use data analytic skills to answer this question.

This repo shows the sql script used to clean our data before exploring it. Duties included:
- filtering the fields that we are using: rank, tier, player name, FPTS
- added a new field to specify each player's position
- added a new field to get the average FPTS for the season by dividing FPTS by the 17 games played
- changed the format of the player name string and trimming out unnecessary characters
- join the projected 2024 rank table with the filtered 2023 performance table by the player name
- use a union to join the new WR table and RB table

Datasets: [2023 Performance](https://www.fantasypros.com/nfl/stats/wr.php?year=2023&scoring=PPR) and [2024 Projected Rank](https://www.fantasypros.com/nfl/rankings/ppr-wr-cheatsheets.php)

The finished Analysis can be found on [tableau](https://public.tableau.com/app/profile/victor.garay/viz/FantasyFootballWRRB/Dashboard1?publish=yes)
