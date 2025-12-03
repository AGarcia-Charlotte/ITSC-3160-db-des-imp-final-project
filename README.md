# Relational Weather Database
## What the Project Does
This project implements a fully normalized relational database that stores daily U.S. weather information collected from National Weather   Service locations. It models a complete geographic hierarchy—State, County, City, Weather Station, and Temperature—allowing users to query   weather patterns by location, date, and temperature values. The database includes a full schema, sample data inserts for all 50 states, and  example SQL queries for analysis.

## Why the Project Is Useful
- Provides a clean, organized way to store weather data for analysis or reporting  
- Ensures data integrity using foreign keys and 3NF design  
- Lets users answer real questions such as:
  - Which states had high temperatures above 70°F?
  - What city a particular weather station belongs to
  - How temperatures vary across different regions  
- Acts as a strong template for any geographic or sensor-based data model
## Known Issues
- Time Constraints
  - Time is a major factor in why this project looks the way it does. This assignment was released to use a week from when it was due, and
    around midterms, so you could imagine how cut for time we were to complete this.
- Rubric Satisfication
  - Another major factor in why this project looks the way it does is that at the end of the day, this is an assignment for school. The
    professor had provided us a rubric, and fufilling the rubric would how we were graded. My team needed to have atleast five tables and        these five tables needed 50 records each. 
  - Because of this, there are maybe non-essential tables (I believe that you do not need both the County and the City tables, it is rather
    redundant and perhaps tricky when considering that cities can be in multiple counties). A bulk of the data may also be considered
    non-essential, seeing as 3/5 tables datas are about the location themselves (and not the weather), providing surface level information       about population.
- Scope of My Knowledge
    - This project showcases the information I had obtained from taking this course. I am sure there are plenty of more efficient ways I
      could have retrieved the weather data (for reference, I had pulled all 50 records individually using available data).   
## Lessons Learned
- Team Communication
  - The class was divided into groups of roughly three or four students to complete this assignment. My group consisted of only three,
    including myself. Communication was a big flaw in my group that ultimately led me to drop whatever I was doing the night of the project's
    submission, in order to complete one of my partner's work load. Of course, I can not blame my partner for not understanding his part and
    I only blame myself for failing to communicate it better.
- ER diagram modeling
- 3NF Process 
- Query testing and validation
