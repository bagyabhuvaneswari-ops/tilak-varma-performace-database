# 🏏 Athlete Performance & Value Tracking Database: Tilak Varma

This data intelligence project tracks player execution and leadership metrics for the **India A Tri-Nation Series (2026)**. The relational database maps on-field statistics into executive, management-ready insights to evaluate player form and brand equity.

---

## 🗂️ How the Database is Built (Architecture)
The backend runs on a 4-table relational architecture designed to process professional sports analytics cleanly:
* **Teams Table:** Tracks tournament nations (*India A, Sri Lanka A, Afghanistan A*).
* **Players Table:** Maps individual athlete styles and profiles.
* **Matches Table:** Logs fixtures, venues, results, and structural variables like **Captaincy Status**.
* **Match Performances:** The analytical core tracking runs, balls faced, strike rates, and wickets.

---

## 📊 Live Management Dashboard (Match Date: June 9, 2026)
Below is the output calculated automatically by the database for the opening victory against **Sri Lanka A** in Dambulla:

| Player Name | Match Role / Tactical Impact | Runs Scored | Balls Faced | Strike Rate |
| :--- | :--- | :---: | :---: | :---: |
| **Ruturaj Gaikwad** | Opening Anchor (Century) | 101 | 70 | 144.28 |
| **Tilak Varma** | Captain / Mid-Over Stabilizer | 60 | 45 | 133.33 |

---

## 💡 Executive Insights for Talent Management

* **The Anchor Value:** While Ruturaj Gaikwad provided explosive opening power (144.28 SR), Tilak Varma played the definitive anchor role. His steady 60 off 45 balls stabilized the innings under pressure, allowing the top order to attack freely.
* **Captaincy Advantage:** Under Tilak's tactical on-field captaincy, the squad maintained an aggressive, unified striking rate of **138.80+**, completely overwhelming the opponent's bowling plans.

---

## 🛠️ Technical Implementation
For data engineers and technical verification teams, the underlying structure, relational constraints, and data compilation queries are fully documented and accessible. 

👉 **[View the Raw SQL Database Script Here](./database_setup.sql)**
