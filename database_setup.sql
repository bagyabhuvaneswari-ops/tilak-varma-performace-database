-- 1. Create Teams Table
CREATE TABLE teams (
    team_id INT PRIMARY KEY, 
    team_name VARCHAR(50) NOT NULL 
);

-- 2. Create Players Table
CREATE TABLE players (
    player_id INT PRIMARY KEY, 
    player_name VARCHAR(100) NOT NULL, 
    team_id INT, 
    batting_style VARCHAR(30), 
    bowling_style VARCHAR(30), 
    FOREIGN KEY (team_id) REFERENCES teams(team_id) 
);

-- 3. Create Matches Table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY, 
    match_date DATE, 
    opponent_team_id INT, 
    venue VARCHAR(100), 
    match_result VARCHAR(50), 
    is_tilak_captain BOOLEAN DEFAULT FALSE, 
    FOREIGN KEY (opponent_team_id) REFERENCES teams(team_id) 
);

-- 4. Create Match Performances Table (Completely Fixed Typo!)
CREATE TABLE match_performances (
    performance_id INT PRIMARY KEY, 
    match_id INT, 
    player_id INT, 
    runs_scored INT DEFAULT 0, 
    balls_faced INT DEFAULT 0, 
    strike_rate DECIMAL(5, 2), 
    wickets_taken INT DEFAULT 0, 
    overs_bowled DECIMAL(3, 1) DEFAULT 0.0, 
    runs_conceded INT DEFAULT 0, 
    is_not_out BOOLEAN DEFAULT FALSE, 
    FOREIGN KEY (match_id) REFERENCES Matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id) 
);

-- =========================================================
-- INSERTING DATA
-- =========================================================

-- Add Teams
INSERT INTO teams (team_id, team_name) VALUES 
(1, 'India A'), 
(2, 'srilanka A');

-- Add Players
INSERT INTO players (player_id, player_name, team_id, batting_style, bowling_style) VALUES 
(101, 'Tilak Varma', 1, 'Left-hand bat', 'Right-arm offbreak'),
(102, 'Ruturaj Gaikwad', 1, 'Right-hand bat', 'Right-arm offbreak');

-- Add Matches
INSERT INTO Matches (match_id, match_date, opponent_team_id, venue, match_result, is_tilak_captain) VALUES 
(1, '2026-06-09', 2, 'Dambulla', 'India A won', TRUE);

-- Add Match Performances
INSERT INTO match_performances (performance_id, match_id, player_id, runs_scored, balls_faced, strike_rate, wickets_taken, is_not_out) VALUES 
(1001, 1, 101, 60, 45, 133.33, 0, FALSE),
(1002, 1, 102, 101, 70, 144.28, 0, FALSE);
-- Query to generate a quick summary report for management
SELECT 
    p.player_name AS Player,
    SUM(mp.runs_scored) AS Total_Runs,
    ROUND(AVG(mp.strike_rate), 2) AS Avg_Strike_Rate
FROM match_performances mp
JOIN players p ON mp.player_id = p.player_id
GROUP BY p.player_name;
