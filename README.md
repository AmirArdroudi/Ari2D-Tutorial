# Ari2D-Tutorial
 Ariyana 2Dsystem Tutorial in Beef
![](https://images.unsplash.com/photo-1448907503123-67254d59ca4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80)

# Prepare Project for using Ariyana in Beef

## Creating a workspace in Beef
---
Firstly, we should create a workspace for our game, as there are many other projects that should be added to workspace as dependencies.
* Run the Beef IDE
* Create a new workspace by selecting Files/new/new workspace

## Creating new project in Beef
here is the link for creating new project in
[Beef](https://www.beeflang.org/docs/getting-start/)


## Importing Ariyana Dependencies
---
![/assets/blog/GettingStartwithBeef&Ariyana/Untitled.png](/assets/blog/GettingStartwithBeef&Ariyana/Untitled.png)

Adding dependencies and project to workspace

**Add these projects to the game workspace :** 
      Ariyana_beef , CurlBeef, JSON_beef, BeefExtensionsLib

Projects are located in "../ariyana/Beef/deps/"
 

{% include elements/figure.html image="/assets/blog/GettingStartwithBeef&Ariyana/Untitled1.png" caption="Workspace layout after adding projects should be linke this" %}


|	Projects			|	Description								|
| ------------- 		| ----------------- 						|
|	Ari2D-Tutorial		|	This is your game project				|
|	Ariyana_beef		|  Ariyana Engine bindings for Beef			|
|	BeefExtensionsLib	|	Contains IO and Reflection Extensions	|
|   CurlBeef			|	Beef bindings for curl library 			|
|   JSON_Beef			|	JSON parser library for Beef  			|


![/assets/blog/GettingStartwithBeef&Ariyana/Untitled2.png](/assets/blog/GettingStartwithBeef&Ariyana/Untitled2.png)

adding linking dependencies to your project 

![/assets/blog/GettingStartwithBeef&Ariyana/Untitled3.png](/assets/blog/GettingStartwithBeef&Ariyana/Untitled3.png)

dependencies for your current game project

![/assets/blog/GettingStartwithBeef&Ariyana/Untitled4.png](/assets/blog/GettingStartwithBeef&Ariyana/Untitled4.png)

Ariyana_beef dependencies

![/assets/blog/GettingStartwithBeef&Ariyana/Untitled5.png](/assets/blog/GettingStartwithBeef&Ariyana/Untitled5.png)

BeefExtentionsLib Dependencies

## WorkSpaces in Beef
---

>All the workspace configs such as a list of projects' path and StartupProject in your workspace are in "BeefSpace.toml", which located in your project folder

##### here is the BeefSpace.toml of above workspace 

```jsx
FileVersion = 1
Projects = {Ari2D-Tutorial = {Path = "."}, Ariyana_beef = {Path = "../ariyana/Beef"}, JSON_Beef = {Path = "../ariyana/Beef/deps/JSON_Beef/lib"}, BeefExtensionsLib = {Path = "../ariyana/Beef/deps/Beef-Extensions-Lib"}, CurlBeef = {Path = "../ariyana/Beef/deps/CurlBeef"}}

[Workspace]
StartupProject = "Ari2D-Tutorial"
```

## GameApp class
---

GameApp handles all the main functionality of the engine This class will derive from Application in Ariyana_beef

```csharp
using ari;

namespace Ari2DTutorial
{
	class GameApp : Application
	{
		
	}
}
```


# Initializing Ariyana
---

# Creating a Chopping Board (I mean the window)
---
## World and Systems
First of all we should our world entity in our "GameApp.bf".

```csharp
class GameApp : Application
	{
		// Creating the world
		World world = new World();
		
```
Check out [World.bf ](https://github.com/kochol/ariyana/blob/master/Beef/src/en/World.bf) in Ariyana binding

As Ariyana is ECS(entiry component system) engine, all the main systems such as RenderSystem, SceneSystem and GuiSystem should be added to World Entity



**All of the code for this post is available [on Github](https://github.com/AmirArdroudi/Ari2D-Tutorial).**
