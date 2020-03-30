#StarBoard
###created by Tevin Hamilton

LINK
-----------------
  
 Click here to go to Repo [P-P5 Repo](https://github.com/TevinH14/HamiltonTevin_P-P5.git) 
 
Devices Needed
-----------------
Apple Watch emulator device 

IPhone emulator device 

 Main feature 1: display user info
-----------------

In this part of the application users will be able to see their favorite Star wars characters information 

Part 1: get data sources to get character data set i used the API called SWAPI (Star wars API). With this APi i will be able to pull detailed information on charaters that were in the star flims 1-8

Part 2: created a interfaceController in the Storyboard and Watch Extension folder, after doing that i added a table view to display the characters name to allow the user to make a selection on what character they will like to see in a the detail InterfaceController screen. Also in part to have parse the the Api url to get the data in the need to display user information 

part 3: created another interface controller and this where i display the character data to the user. i completed this by passing a custom object into the context to be able to display the selected data when entering into the next view.

Main feature 2: Play Character Quotes
-----------------
In this feature users will be able to play some of hand pick star wars quotes that have stood out from the movie due time i demo 4 buttons representing 4 characters and each character get 3 different qutous that play random when you click on their name.

part 1: during this part i creade a new interface controller along with a new interface controller class the main focus of part one is to get the ui together. when it came to making th UI i added 2 group to hold 2 buttons each, after  i size the buttons to fit the screen of the watch and after that i applied color to the view to finisf it off 

Part 2: Included the setup of the the new interface class where i connect the buttons to the controller and make IBActions. after that i make a new file that will be a protocol with an extension that holds a func to get the image from file i will go over more of that in
part 3, but to finish of the task to play sound the last thing i did was set create an array of the file names and randomly pick a file to play.

part 3: is where i looked on the internet to get free mp3 files, for education purposes. once i gather the images i put them in a folder and drag and drop in the watch extension folder.
