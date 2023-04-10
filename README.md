### Taks Completed:
- Step 1: Create an Ubuntu VM with Terraform on Azure. This is going to be the CI Server. This step needs to only run once.
    - [x] Task 1: Install Jenkins on this VM and any tool required to complete the next steps.
    - [x] Task 2: All the following steps that are controlled by Jenkins are to be run on this VM as a pipeline.
- Step 2: Setup the Java source code of the application within your GitHub account.
    - [x] Task 1: The GitHub repository of the web application is the following: https://github.com/codehub-learn/toDoAppWithLogin-Regeneration-CyberSecurity-DevOps
    - [x] Task 2: Fork this repository into a GitHub account of your own.
- Step 3: Create a JAR file from the Java source code.
    - [x] Task 1: Configure Jenkins to generate a JAR file (using Maven) for the Java project on manual demand.
- Step 4: Build a Docker image from the JAR file.
    - [x] Task 1: Configure Jenkins to generate a Docker image from the JAR. The Dockerfile has been provided to you and is located within the root directory of the GitHub repository.
    - [x] Task 2: Upload the docker image on Docker Hub, as a public image.
- Step 5: : Use Terraform to create a virtual machine on Azure through Jenkins. This is going to be one of the node machines.
    - [ ] Task 1: Configure Jenkins to trigger Terraform to build a VM on Azure where the docker containers should be hosted. The virtual machine should be publicly accessible on port 8080.
    - [ ] Task 2: Configure Jenkins to deploy new infrastructure changes if the Terraform code is updated.
- Step 6: Configure Jenkins to trigger Ansible to execute the following configurations to the node:
    - [ ] Task 1: Install Docker, download the appropriate images (Web Application & MySQL Database) and start the containers.
    - [ ] Task 2: Create a Docker network to connect the MySQL container with the Application container.
    - [ ] Task 3: When running, ensure that MySQL starts first so that the Application can see it when it starts. The MySQL server version should be 5.
    - [ ] Task 4: For the Web Application, the following environment variables can be set:
                    a. DB_HOST, default value is localhost,
                    b. DB_PORT, default value is 3306,
                    c. DB_USER, default value is root,
                    d. DB_USER_PASSWORD, default value is root
    - [ ] Task 5: The application process listens to port 8080, therefore the internal container port should be set to 8080.
    - [ ] Task 6: If everything is running, check from a browser that the application has been deployed on Azure and is accessible. To login into the application, use the following credentials:
                    a. Username: admin,
                    b. Password: admin
- Step 7: Setup Jenkins so that when a change takes place in your Java code on GitHub, then the new version of the application is automatically deployed on Azure and is reflected in the production instance. In order to test this functionality, add a comment within any of the Java files. You can add comments by typing “//” followed by your comment, i.e. “// This is a comment.”.


