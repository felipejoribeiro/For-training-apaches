# For-training-apaches
---

A strange piece of software that uses FORTRAN code to automate boring apache2 tasks like set a new root directory for the apache server. (others things might be considered, but, for know, only this comes to mind).

The fortran binaries must be called with root adm privileges. It checks if there's already a config file for the current project. If it's already there it starts the server in the current project. If it isn't then the program creates the file and it configures apache2 to use it.

- The fortran routine creates the prject with the same name as the projects directory.
- It is necessary to add this directory to path, or create a alias on the .bachrc file for the executable. (for now, i pretend to automate that too in near future). 
