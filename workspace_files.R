# R Workspace and Files

#################################

#Determine which directory your R session is using as its current working directory

getwd() 

#To view all the objects in your local workspace

ls() 

#Assign 9 to x using x <- 9.

x <- 9

#Now take a look at objects that are in your workspace using ls()

ls()

########################

#List all the files in your working directory using list.files() or dir().

list.files()

#To check out the help page for list.files with the command ?list.files

?list.files

#Using the args() function on a function name is also a handy way to see what arguments a function can take

args(list.files) #args() function to determine the arguments to list.files()

########################

#To create a directory in the current working directory called "testdir"

dir.create("testdir") 

#To set your working directory to "testdir" with the setwd() command.

setwd("testdir")

#Create a file in your working directory called "mytest.R" using the file.create() function

file.create("mytest.R")

#This should be the only file in this newly created directory. Let's check this by listing all the files in the current directory.

list.files()

########################

#Check to see if "mytest.R" exists in the working directory using the file.exists() function.

file.exists("mytest.R")

#Access information about the file "mytest.R" by using file.info(). Like size, isdir, mode, mtim, ctime

file.info("mytest.R")

file.info("mytest")$mode #You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab specific items.

########################

#Change the name of the file "mytest.R" to "mytest2.R" by using file.rename()

file.rename("mytest.R", "mytest2.R")

#You might now try to delete mytest.R using file.remove('mytest.R'), but that won't work since mytest.R no longer exists. You have already renamed it

file.remove("mytest.R")

#Make a copy of "mytest2.R" called "mytest3.R" using file.copy().

file.copy("mytest2.R", "mytest3.R")

########################

#Provide the relative path to the file "mytest3.R" by using file.path().

file.path("mytest3.R")

#You can use file.path to construct file and directory paths that are independent of the operating system your R code is running on. Pass 'folder1' and 'folder2'as arguments to file.path to make a platform-independent pathname

file.path("folder1", "folder2")

#In order to create nested directories, 'recursive' must be set to TRUE.
#Create a directory in the current working directory called "testdir2" and a subdirectory for it called "testdir3", all in one command by using dir.create() and file.path().

dir.create(file.path("testdir2", "testdir3"), recursive = TRUE)
