Dice
====

Do this project with your paired programming team partner. You may want to assign parts of the code to each partner and swap the code to critique and debug! Once you have the basic structure working, you can choose to deviate by making it your own by adding your own creative twist! Update to your own github with separate and unique files and make it functional. When complete post the Github link into Slack and the Google Assignment as your submission.  

In this project we'll practice using OOP (Object Oriented Programming) techniques. We'll create a `class` to model what a single die has and does, and then we will create at least 9 *instances* of that class arranged in a grid shape. Note that for full credit your program must display the total of all the dice and draw the dice with dots or similar marks. Also, you must customize the title, header and footer of `index.html`. Prerequisites for the Dice project are:

* Slides 51-73 of the [Unit 4 & 5 Loops and Objects Assignment](https://docs.google.com/presentation/d/1HC_K5tqfny5QYTdENnDpsQO-nGAAWua_YOQRc18V2IU/edit#slide=id.g9e087dd4d3_0_2)
* Slides 38 to 86 of the [Units 1 2 and 3](https://classroom.google.com/c/NTQ1NzY1MjYwMzc0/a/NDkwODYyNjUwNzQ3/details) which you should have already completed in full!

You will find that completing the above helpful for success on this project.

Suggested steps to start the project
------------------------------------------   
1. [Start by forking the CPJava Dice Repository](https://github.com/chandrunarayan/Dice). Clone the repository and Open it in Processing using these instructions]. Open the `Dice.pde` file and you should see the following code:

```java
    void setup()
	{
	    noLoop();
	}
	void draw()
	{
	    //your code here
	}
	void mousePressed()
	{
	    redraw();
	}
	class Die //models one single dice cube
	{
	    //member variable declarations here
	    
	    Die(int x, int y) //constructor
	    {
	        //variable initializations here
	    }
	    void roll()
	    {
	        //your code here
	    }
	    void show()
	    {
	        //your code here
	    }
	}
````
2. Write the member variable declarations for the `Die` class
2. Then, write code in the constructor to initialize the member variables
2. Next, complete the `draw()` function. For now it should:  
     - clear the screen
     - declare and initialize one instance of the `Die` class
     - Call the `show()` function for that `Die` (even though we won't see anything yet)
3. Now lets work on the `show()` function. 
     - Notice that the constructor takes arguments. We'll use those arguments to position the individual die cubes. Don't worry about the dots at first, just get the shape of the dice on the screen for now. 
     - Once you like the shape of your die, go back to `show()` and add some `if` statements to check how many dots you need to put on the die. Start by "forcing" the die to always roll a one. Check to see that you can get one dot where it is suppose to be, and move on to two, and so on. If you are clever, you can combine some of the ifs and avoid duplicate code. 
4. Now, use nested loops to display at least nine instances of the `Die` class. This is the power of OOP. It's not that much more work to make 1000 dice as it is just to make one. Make sure the dots are on the dice. Your `show()` function will need to position the dots by adding some small amount to the x and y coordinates of the `rect()` of the `Die`
5. Finally, add code to the `draw()` function so that your program displays the total for the roll to the screen. You may find the `Coin` and `Token` programs on the slide presentation helpful. 

Dice Project requirements
-----------------------
The steps above are provided as a step-by-step process suggestion to accomplsh the project goals. At the end, your program needs to:
1. Use a `class` to model a **single** `Die` cube 
2. The `Die` constructor needs to use the two arguments to position the x and y coordinates of the `Die` cube
3. Create at least 9 *instances* of the `Die` class
4. Use `Math.random()` for *all* random numbers in the assignment 
5. Display the total of all the dice and draw the dice with dots or similar marks
6. Personalize the title, header and footer of `index.html`  

Other than that, your dice program doesn't have to work or look like any other. Have fun and be creative!

Optional Extras
---------------
For a challenge, you can also keep track of the number of rolls. You could display the average roll, or maybe a graph that shows how often each of the numbers from 2 to 12 have come up. This design is used in dice games like [Settlers](https://cs.stanford.edu/people/nick/settlers/DiceOddsSettlers.html) as taught in the first year CS program at Stanford! 

