# open-and-run-project-scripts

In the company that I'm working, I have to run 7 apps to get the backend up (3 services -each with 2 apps- and the apollo gateway)

This meant that every time I had to do a task on the backend side my terminal ended up with a lot opened tabs (and a lot of repeated `cd Documents/workspace/...`, `/code ./yarn dev/yarn start:dev` commands!)

I hated repeating the same patreon each time I wanted to open the projects so I made a couple of bash scripts that help me open and run the stack easier.

The `open-vsc-project.sh` script takes as input the service name and opens the repo's containing folder in VSCode. The 3 services required for the apollo-gateway to start end its name with `...-service`, so the script will insert the project name in the path. If you pass the params `front` or `graphql` it will also open those repos.

The `run-project.sh` script takes as input the service and the app name. It select the path to the directory and also execute the appropriate start script.

Keep in mind that I'm using `yarn.cmd` as the start script because of Windows' OS paths. If you are using another OS you may have to remove the `.cmd` part in order to make it work.
