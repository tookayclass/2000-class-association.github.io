# Getting Started

Developing for this site has been made as straightforward as it can be but is still a complex undertaking if you are unfamiliar with software development and the technologies used.

This guide will cover the basics from a high level and direct you to resources that can allow you to learn the full amount you need to.

# Setting up your environment

This guide assumes you are using Windows, if you aren't the same basic steps can be followed but you will need to confirm the best way to do them on your OS.

The high level steps are:

1. Install Visual Studio Code (VS Code)
2. Install Docker
4. Clone and Open the repository in VS Code
5. Install the suggested plugins automatically with VS Code
6. Allow VS Code to set up a development Container
7. Run a start command so you can preview the site

## 1. Install Visual Studio Code (VS Code)

VS Code is a multi-platform development environment that works across Windows, Linux and Mac. It is developed by Microsoft and designed to be as user friendly as development tools can be.

It can be downloaded and installed from [here](https://code.visualstudio.com/download).

There are no special requirements for installing VS Code and the default install options are usually appropriate for our needs.

## 2. Install Docker

Docker is a containerized development and deployment platform that allows standardised software development and deployment across teams and infrastructure. In plain English (or as close as possible) this means that Docker lets you set up isolated "virtual" environments on your machine that can be used to temporarily do things like edit a website or develop software code. By using Docker your code runs in exactly the same way as the code of other people developing the site and you don't have to go through more complicated set up procedures.

​	*In this context the term virtual refers to the fact that such things would previously have required dedicated computers/servers and can now run inside another machine in a "virtual" way.*

To install Docker visit [Dockerhub](https://hub.docker.com/editions/community/docker-ce-desktop-windows/), more details about running and installing Docker can be found [here](https://docs.docker.com/docker-for-windows/install/).

There is no special configuration of Docker required.

## 3. Clone and Open the repository in VS Code

Cloning a repository essentially means getting a copy of the files used by the site.

To clone in VS Code (with any VS Code window open):

1. Press **F1** and note the command pallete opening at the very top of the window.
2. Type ```Git: Clone``` and hit enter on that option.
3. If you have the 2000 Class Github Login
   1. Select ```Clone From Github```
   2. Login if requested
   3. Select the 2000-class-association.github.io repository
4. If you don't have the 2000 Class Github Login (or don't want to use it to prevent mistakes affecting the live site)
    1. Paste this URL in the box: ```https://github.com/samfoley88/2000-class-association.github.io.git```
    2. Hit Enter
5. Select a folder to clone the files to, this can be anywhere you want. The clone process creates a single subfolder holding all the site data.
6. The files will now be cloned.
7. Github will offer to open the cloned repository, select yes.

## 4. Install the suggested plugins

VS Code allows the suggesting and installation of plugins, the repository is pre-configured to suggest the plugins you need to start developing for the site.

When you open the repository folder in VS Code it will ask (in a popup in the bottom right of your window) ```Do you want to install the recommended extensions for this repository?``` Simply click ```Install``` to install them.

## 5. Allow VS Code to set up a development Container

In addition to the message above you will also be prompted to open the repository in a development container using Docker by this message:

```Folder contains a Dev Container configuration file. Reopen folder to develop in a container learn more. Or: Clone repository in Docker volume for better I/O performance.```

1. Click ```Reopen in Container``` (it has slightly worse performance but is simpler to use)
2. You will see a popup in the bottom right and the message: ```Starting DevContainer: Show Log```. This process can take some time but eventually the pop up will go away.
   1. You can click this to view the startup logs if you'd like.
   2. If you view startup logs you may need to click the green button in the bottom left of the window and select ```Rebuild-Container``` from the menu that opens at the top of the window before you can complete the other steps.
3. You may be prompted to install extension again. Allow it to do so.

You should now have a running development container linked to your VS Code. To confirm its status you can check the symbol in the bottom left of the window. It should be green and say something similar to ```Dev Container: Jekyll (Community)```.

## 6. Run the start command

Now that your container is started you need to start the test server inside the container.

If you look to the bottom of your window you should see a lower pane and tab in it called Terminal. If you don't see it go to ```View -> Terminal```.

In this box you need to type ```bundle exec jekyll serve```. It may present an error message, if it does follow the provide instructions (usually to run ```bundle install```).

The server should now be running, if you visit [http://localhost:4000](http://localhost:4000) in your preferred web browser you should see the site.

### Auto-Regenerating

Whenever you update the site Jekyll should automatically update. To test this open any file and add a space or new line and then save it. You should see something like the below appear in the Terminal window.

```
Jekyll Feed: Generating feed for posts
...done in 23.2945748 seconds.
```

If you don't see this on every save you will need to use the alternative command below to force the system to check for changes and update (there will be a small delay of up to 15 seconds for saved changes to register).

```bash
bundle exec jekyll server --force-polling
```



# Troubleshooting

You may get a number of known issues when trying the above so please try these fixes in the first instace.

## Seeing ```fatal: cannot chdir to...No such file or directory vs code devcontainers``` in the Terminal in VS Code

This is caused by a bug in VS Code cloning your repository. Open the file ```config``` in the ```.git``` folder in your repository folder.

Delete the line ```worktree = C:/Users/myuser/Documents/2000-class-association.github.io``` or similar (your path will be different)

## Regenerating the site after changes is taking too long

This can occur because of the size of the regeneration, the machine its being done on, and the configured environment.

The best solution (currently) is to add ```--incremental``` to the bundle exec command at the end.

HOWEVER this may mean changes aren't always properly applied to use with caution and if you believe they haven't been applied properly click on the terminal window and press ```ctrl + C``` and rerun the bundle exec command to force a regeneration of the site.