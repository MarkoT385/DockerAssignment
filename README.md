# Assignment #4: Application Containerization

This is a simple Node.js web application designed for learning Docker containerization concepts.

## Application Overview

This application is a basic Express.js web server that:
- Serves a static HTML page at the root (`/`)
- Provides an API status endpoint at `/api/status`
- Includes a health check endpoint at `/health`
- Runs on port 3000 by default (configurable via PORT environment variable)

## What's Included

- **app.js**: Main application server file
- **package.json**: Node.js dependencies and project configuration
- **public/index.html**: Static HTML page that confirms successful containerization
- **public/style.css**: Styling for the web page

## Running Without Docker (for reference only)

If you wanted to run this application directly (not required for assignment):
```bash
npm install
npm start
```

## Your Docker Assignment

**DO NOT MODIFY THE APPLICATION CODE**

Your task is to containerize this existing application using Docker. You need to:

1. Create a `Dockerfile` that properly containerizes this Node.js application
2. Build a Docker image from your Dockerfile
3. Run a container from your image
4. Verify the application works by accessing it in your browser

## Starting the Application

- To build the docker image run the command:

```bash
docker build -t my-node-app .
```

- To run your docker container in port 3000 run the command:

```bash
docker run -d -p 3000:3000 my-node-app
```

## Reflection Question
**Answer the following question in the space below**: How does containerization with Docker differ from using virtual machines, and why might a development team choose Docker containers over VMs for deploying applications like the one you just containerized?

Virtual Machines run their own compleate Operating System on top of virtual hardware, so VMs are usually quite large, gygabites in size, and take a long time to boot up. Docker containers on te other hand use the same OS as the host machine, so they are much smaller than VMs and take much less thime to start up. Each Docker cntainer only packages the app and its dependencies. 
Docker Containers a re a better option for deploying because they define the exact enviroment, so it shoulld work on any machine. They are also much more efficient that VMs as they can run on the same server using less resources, and they start almost instantly unlike VMs. Another reason why a development team might use this way of deploying applications is a simple setup, as a potential new team member would only need Docker, not Node or any other tools. 

## Screenshots of a working application and API Status

### Screenshot of a working app
![Screenshot of a working app](Images/Screenshot1.png)

### Screenshot of a API response
![Screenshot of a API response](Images/Screenshot2.png)

### Screenshot of a  start, stop, and delete containers using docker commands
![Screenshot of a  start, stop, and delete containers using docker commands](Images/Screenshot3.png)


## Application Requirements for Docker

Your Dockerfile should ensure:
- The application has Node.js runtime available
- All application files are copied into the container
- Dependencies are installed (`npm install`)
- Port 3000 is exposed
- The application starts with `npm start`
- The container can be accessed from your host machine

## Verification

When your Docker container is running correctly:
- Navigate to `http://localhost:3000` (or whatever port you mapped)
- You should see a success page confirming containerization worked
- The `/api/status` endpoint should return JSON status information

## Troubleshooting Tips

- Make sure your port mapping is correct in the `docker run` command
- Check that all files are copied into the container
- Verify Node.js dependencies are installed in the container
- Use `docker logs <container-name>` to see application output

## File Structure Expected
```
docker-assignment/
├── Dockerfile          # You create this
├── app.js              # Provided
├── package.json        # Provided
├── public/             # Provided
│   ├── index.html      # Provided
│   └── style.css       # Provided
└── README.md           # This file
```

Good luck with your Docker containerization!