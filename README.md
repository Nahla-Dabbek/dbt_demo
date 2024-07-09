# dbt_demo

Install dbt

There are several methods to install dbt, depending on your system and preferences. Using Homebrew to install dbt is a convenient option if you are using macOS and are familiar with using Homebrew. Using docker is a good option if you want to use dbt in a containerized environment, or if you want to isolate dbt from the rest of your system.

For this purpose, I simply use pip (the Python package manager) to install dbt by running the following command:

pip install dbt

If dbt is installed, running the command will display the version number of the dbt installation:

dbt --version

Initialize a new project
The dbt init command is used to initialize a new dbt project. When you run the dbt init command, dbt will create a new directory with the necessary structure and configuration files for a dbt project. To initialize a new dbt project, navigate to the directory where you want to create the project and run the dbt init command. For example:

cd dbt_demo
dbt init


This will create a new dbt project in the dbt_project directory, with the following structure:

myproject/
├── dbt_project.yml
├── models/
├── seeds/
├── sources/
├── tests/
├── macros/
├── analysis/
└── docs/

Connection profiles
![image](https://github.com/Nahla-Dabbek/dbt_demo/assets/38220613/d2af9c4e-bf9d-400e-be82-c3040b08b696)

In a dbt project, the profiles.yml file is used to store connection information and other settings for different environments or profiles. This file is typically located in the ~/.dbt directory, which is the default location for dbt configuration files.

To create profiles.yml file, you can use a text editor (I use VSC) to create a new file in the ~/.dbt directory and save it as profiles.yml.

The profiles.yml file should contain a list of profiles, each with its own set of connection and configuration settings. Myprofiles.yml file looks like this (using my local postgres db):
Test connection with your database
The only thing left to do is to check if we can establish a connection with our database. Make sure that your database is running, open a terminal window and navigate to the directory where your project is located. Run the dbt debug command to check your database connection and see if your dbt project is set up correctly. The dbt debug command will check your database connection and display any errors or warnings that it finds. If the dbt debug command runs successfully, it will output a message indicating that the connection was successful.
