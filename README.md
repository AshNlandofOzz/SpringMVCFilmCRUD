## Spring MVC Film C.R.U.D. Project
In the mood to find out what year your favorite films staring Julia McQueen and 
Rip Crawford came out? Well, we are just dying of curiosity too. So, we present, 
the SPRING MVC Film CRUD site. This site brings hundreds and hundreds of films to 
you with a click of a mouse! Whether you're just browsing new films to watch, 
looking to add a new film to our list, or deleting a film you created , 
we're you're site to visit!


##Functionality
This site allows you to search by a filmID or a keyword. Once you are there, please feel free to 
add your favorite movies to this site. Just think of it as the Wikipedia of hilariously titled 
imaginary movies. If you really dislike the movie you added, feel free to delete it. Sorry, but you can't delete 
the core 1000 films no matter how much you dislike Lucille Tracy. 
That being said you can edit all the films. 


##Technologies Used
It feels like a litany of technology was used in this project. 
We used SpringToolSuite4 to build the project. In order to speed up the development 
process we utilized Gradle. The information of these wonderful films exists in a mySQL database.
We utilized gitHub for collaborative programming, along with Zoom in place of Slack in order to pair program. 

##Challenges
Where do I begin. Myself and Ruben probably put in more hours on this than we did on BlackJack. 
It consumed our entire weekend and we are struggling just to meet the requirements. 
We both went into the weekend excited to maybe use bootstrap or HTML to beautify our work, and that did not happen. 
I felt entirely ill prepared to make all the moving parts and pieces talk to  each other. 
I simply felt buried because I kept confusing all the different ways we learned about jsp and HTML and felt ill prepared to build out so many pages.
I feel like there is a chance I failed as a student this week. We just learned so many small little things, remembering them all and putting them together became a nightmare. 
Trying to update the films in the database took up almost an entire day alone because we just could not remember the proper syntax for all the pieces and looked in 3 to four different places trying to solve the problem. 
If it wasn't for the TA help we got on Saturday morning and the gracious team work of our team mates, who also appeared to be flailing most of the weekend, we would certainly have turned in a failed product. 
Keeping that in mind, please be kind during the grading process because if nothing else we put in SERIOUS hours on this simple project and somehow worked well together the whole time and kept our cool with each other. 

Building off of Ashley's comments, I can also agree this was by far the most challenging project to date, and I am desparately hoping this is the bottom of the rollercoaster 
we keep speaking of. The SQL portion of the project wasn't as issue, we breezed through that pretty easily. It was, as Ashley said, the connection between all of the pages and figuring out how to get our data to stick
when moving from page to page. I spent 25 hours total on this project, and I know Ashley is right there with me. While we learned from this project tremendously, it felt unbearably overwhelming. I think it would be 
amazing to get a brief overview of the big picture of what we're learning for the day so I'm able to compartmentalize where all of the info we're taking in should go. As I said, we learned soooo much from this project, and 
I think had we not gotten caught up on our Update functionality, we would have had time to make the site more aesthetically pleasing, however we did what we could!

##CAVEATS
We aren't sure what happened, we are still testing this issue:
- Our Add Film feature adds the user created film to the database, and directs the user to a showCreatedFilm page where it displays the film info that was just passed. From this page the user is able to update and 
delete the film that was just created. HOWEVER, when the user goes back to the main menu and attempts to search for the film they just created by Id, it returns a list of default values for the film with an id of 0. 
We aren't sure what the disconnect is. As stated, the functionality of actually creating, updating and deleting the film is possible from the page following the AddFilm.html, however if you try to search for the newly
created film by keyword or id, it will not display. 