<div id="top"> </div>


<!---- PROJECT LOGO ----> 
<div align="center">

  <h2 align="center"> 
    Chatbox - Tags Server API 
  </h2>
  
  <p align="center">
    Application to save messages and return the most common words, developed with Elixir and Phoenix. <br/> 
    Explore <a href="https://hexdocs.pm/elixir/1.13.4/Kernel.html">Elixir</a> or <a href="https://hexdocs.pm/phoenix/Phoenix.html">Phoenix</a> docs &#187; <br/><br/>
    <a href="https://github.com/vihugoos/chatbox-server-tags/issues"> Report Bug </a> &nbsp;•&nbsp;
    <a href="https://github.com/vihugoos/chatbox-server-tags/issues"> Request Feature </a>
  </p>
</div>


<!---- TABLE OF CONTENTS ----> 
<details>
  <summary> Table of Contents </summary>
  <ol>
    <li>
      <a href="#about-the-project"> About The Project </a>
      <ul>
        <li><a href="#built-with"> Built With </a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started"> Getting Started </a>
      <ul>
        <li><a href="#prerequisites"> Prerequisites </a></li>
        <li><a href="#installation"> Installation </a></li>
      </ul>
    </li>
    <li><a href="#usage"> Usage </a></li>
    <li><a href="#tests"> Tests </a></li>
    <li><a href="#contributing"> Contributing </a></li>
    <li><a href="#contact"> Contact </a></li>
  </ol>
</details>


<!---- THE PROJECT ---->
## About The Project

<img src="https://user-images.githubusercontent.com/44311634/178651138-54b1b11c-0776-48d0-8ec8-436671eeab48.png" align="center" align="center" alt="Project Home Page">
An application to save messages in the database and count the most common words of the day. A scheduler is created to run the application every day. 


### Built With 

<div style="display: inline_block">
    <!-- Icon Elixir --> 
    <a href="https://elixir-lang.org/"> 
      <img align="center" alt="Icon-Elixir" height="35" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/elixir/elixir-original.svg"> 
    </a> &nbsp;
    <!-- Icon Phoenix --> 
    <a href="https://www.phoenixframework.org/"> 
      <img align="center" alt="Icon-Phoenix" height="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/phoenix/phoenix-original.svg"> 
    </a> &nbsp;
</div>

<br/>
<br/>


<!---- GETTING STARTED ----> 
## Getting Started

To get started, you need to have the package manager <strong>Chocolatey</strong> installed on your machine, for more information visit <a href="https://chocolatey.org/install">Installing Chocolatey</a>. You will also need to have <strong>PostgreSQL</strong> installed, for more information visit <a href="https://www.enterprisedb.com/downloads/postgres-postgresql-downloads"> PostgreSQL Downloads</a>. 

<strong>WARNING</strong>: Add PostgreSQL executable path to user <strong>environment variables</strong>, to be able to use the `psql` command in the terminal, or create a database called `chatbox_tags_dev` via graphical user interface using the pgAdmin, it's up to you what you think is best. <strong>Note:</strong> This installation guide is based on Windows systems. 


### Prerequisites 

First of all, we need to ensure that the database server is running, to do so, run the following commands in case you haven't created the database manually via pgAdmin, as mentioned above, if you have already created the database `chatbox_tags_dev`, just run the first command below. 

1. Open cmd terminal as <strong>administrator</strong> (<i>looking at psql version, in this case 14</i>)
   ```cmd
   net start postgresql-x64-14
   ```
2. Connect with psql 
   ```cmd
   psql -U postgres
   ```
3. Create a database 
   ```cmd
   CREATE DATABASE chatbox_tags_dev;
   ```
4. Quit psql 
   ```cmd
   \q
   ```
   
Now we are going to install <strong>Elixir</strong> and <strong>Phoenix</strong> to finish all the requirements to install the project. 

1. Open PowerShell terminal as <strong>administrator</strong> 
   ```cmd
   choco install elixir
   ```
2. Install the framework Phoenix (<i>if you ask something, just accept everything with</i> `Y`)
   ```cmd
   mix archive.install hex phx_new
   ```
<br/> 


### Installation 

1. Clone the repo 
   ```bash
   git clone https://github.com/vihugoos/chatbox-server-tags.git
   ```
2. Inside the project root directory install all project dependencies 
   ```cmd
   mix deps.get
   ```
3. Change the config in `.\config\dev.exs`, put your postgres password 
   ```elixir
   config :chatbox_tags, ChatboxTags.Repo,
    username: "postgres",
    password: "yourPassword",
    hostname: "localhost",
    database: "chatbox_tags_dev",
    stacktrace: true,
    show_sensitive_data_on_connection_error: true,
    pool_size: 10
   ```
4. Do the same procedure in `.\config\test.exs`, entering your database password 
   ```elixir
   config :chatbox_tags, ChatboxTags.Repo,
    username: "postgres",
    password: "yourPassword",
    hostname: "localhost",
    database: "chatbox_tags_test#{System.get_env("MIX_TEST_PARTITION")}",
    pool: Ecto.Adapters.SQL.Sandbox,
    pool_size: 10
   ```
5. Create and migrate your database 
   ```cmd
   mix ecto.setup  
   ```


<!---- USAGE EXAMPLES ----> 
## Usage

With the installation complete, we can start the project.

* Start Phoenix endpoint, after access [`localhost:4000`](http://localhost:4000) from your browser 
   ```bash
   mix phx.server 
   ```

Access [`localhost:4000/dashboard`](http://localhost:4000/dashboard) from your browser to see more information about your project. 
   
<br/> 


<!---- CONTRIBUTING ---->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
<br/> <br/>


<!---- CONTACT ---->
## Contact

Developer @vihugoos - victorhugoos@live.com 

<p align="right"><a href="#top"> &#129045; back to top </a></p> 
