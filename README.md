
# Bieu

##Technologies used
1. Ruby on Rails
1. Postgresql database
1. Amazon Web Service & paperclip for file uploading

##the approach taken
This project was to do a web version of an app that one of my friend's, Andrea Diaz, is in the process of launchng. I worked with her to develop her idea for the product. To start, I created user stories. I discussed these user stories with her and we tweaked them as needed. I then created a Trello board to track my progress by following a timeline with tasks. Andrea was a part of this board as well and we were able to communicate about tasks through this means. I made a wireframe and, after a few days of working on the backend, created a few mockups of the site as well.

##installation instructions
Just log on to https://arcane-stream-7673.herokuapp.com/

##unsolved problems, etc
1. I started a password comparison and was receiving errors about the "comparison_password" and could not get it to function properly, so removed it. 
1. When I began the project, I set up the data tables. As I moved on with the project, relationships had to change, I needed to add columns, some columns were no longer needed, I had to change a table name, etc. While I did the migrations, it still seemed messy. On day 4 of the project, I followed the instructions on the Active Record website and destroyed the database. I created a new one with new tables and relationships. This would not successfully create or migrate. I had to roll back to the previous working application on Github.
1. Tagging - I began reading the documentation, but never had the chance to successfully put this in place. This is a vital step so that the reviewers can tag the salons and beauty products that they review.
1. Signing in as a salon is not complete. The database is set to do this, but the sign in and on-boarding process are not functional - this is for a later version.
1. As of Monday, Aug. 10th, the salons are hard-coded along with their images. This will be changed to come from the database once the salon sign in and onboarding process is finished.

##User stories
https://trello.com/b/L1V5O7dR/final-project-timeline

##Wireframes
![wireframe1](BieuWireframeFrontPage.pdf)
![Mockup](BieuMockUp1.pdf)
