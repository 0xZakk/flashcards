General Assembly
Web Development Immersive
Project 1

Flashcards

The following application was developed as a project for General Assembly's Web Development Immersive course. The original assignment can be found here (https://github.com/ga-students/wdi_dc5/blob/master/w03/project/flash_cards.md) and is summarized below.

Summary of the Assignment

The application should allow a user to (1) create new flashcards, (2) view all flashcards, (3) edit a flashcard, (4) delete a flashcard and (5) view their score for flashcards. Because we've been learning about database, SQL and Active Record, the user's data (flashcards and scores) should persist, so that when they leave the game, they can return later and see the results of previous sessions. Flashcards should probably be broken up into categories of flashcards and the user should be able to view all the cards associated with a category.

My Approach

I took the organization one step further and organized flashcards in to decks (like categories) using a has_many and belongs_to association. Furthermore, I developed towards an organization of the application around decks, rather than individual cards. I thought this would be more intuitive for the user (who will pretty much exclusively be me...) and I wanted to keep the command line UI neat and easy to use. Five cagetories with 20 cards each is 100 cards, which is a lot to print to the command line when the user requests to see all cards!

Main Focus

Generally speaking for this assignment, I focused on (1) clean, DRY code (2) readability and (3) seperation of concerns. For a previous homework assignment, the code for which ended up having a similar structure, I wrote almost 300 lines of code when the instructor's solution was just over 120! This application is doing functionally about as much as the code I wrote for that homework assignment, but it is substantially easier to read and with half the number of lines (not that that's everything). I put a lot of thought into the code that I was writing. I finished up an 'alpha' with all the basic functionality very early on and spent the rest of the time alotted for this assignment refactoring and thinking about how to clean up the code.  






