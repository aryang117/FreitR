# FreitR
## Table of Contents
* [Overview](#overview)
* [Building the Project](#building-the-project)
* [Preview](#preview-gifs-and-screenshots)
* [Modules](#modules)
* [What did I learn from this](#what-did-i-learn-from-this)

## Overview
The idea with this app was to create a platform for your average person to connect with logistic carrier, whether it be a trucker or just an average person with a car who wishes to earn money by transporting stuff from one place to another, without the need of a middle-man or a company to handle the interaction. 

This app was created for a Project Exhibition held in 2019-2020.

The general workflow of the app is [here](https://whimsical.com/project-exhibition-review-1-app-flowchart-WkBbxCB1ZVCzKatnn5iByt@7YNFXnKbYmcV8qgaMBNvs).

### Goals
  The goal with this app was to provide the following functionality to the user -
  - User Accounts, so that users can be authenticated and verified, including profiles for the said users so that they can provide more details about themselves
  - User Authentication.
  - Modify their Profile.
  - Allow Users to post jobs and search for them.
  - View their Job History.

## Building the Project
To build this project, please make sure that you have flutter installed and once you're ready, 
- navigate to the Project root directory and,
- run ``flutter run`` command in your terminal.

## Preview GIFS and ScreenShots
<div>
<img src="/ssGifs/sample.gif" alt="sample" width="25%" height="25%"/>
</div>

## Modules
### Login
Allows the user to login as a Driver or as a Client. The user can login via e-mail (and password) or directly via Google Sign In. 

All of the login mechanism is being handled by Firebase Authenitcation system. 

### Driver
Once logged in as a driver, the user can -
- View route of the current job
- Search for Nearby Jobs 
- View their job history
- View / edit their profile
 
### Client
Once logged in as a client, the user can -
- View the progress of the delivery
- Post a new job for drivers to take 
- View their job history
- View / edit their profile

## What did I learn from this?
  Whilst working on this project, I came across some amazing things (in Flutter) and some of them are -
 - StreamProvider.
 - Firebase.
 - Cloud Firestore.
 - Firebase Authentiication
 - State Management.
 - Future (FutureBuilder, Future Functions).
 - Async/Await.
 - Dart DevTools.
 - Custom Widgets (Modifying already existing material widgets).
 - 3rd Party Dependencies.

 As I continue to work on this project, I will keep learning new things.
