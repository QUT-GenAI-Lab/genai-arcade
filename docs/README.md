# Internal Documentation for GenAI Lab Arcade

This directory contains internal documentation for the GenAI Lab Arcade project. It is intended for use by developers and contributors to the project. The documentation includes design decisions, architecture overviews, and other technical details that are relevant to the development of the GenAI Lab Arcade.

Please note that this documentation is not intended for public consumption and may contain sensitive information. It should be used as a reference for those working on the project and should not be shared outside of the development team without proper authorization.

## Development Setup

To set up a development environment for the GenAI Lab Arcade, GitHub Codespaces is recommended, which provides a cloud-based development environment that can be easily configured and accessed from anywhere. It is also recommended to open the Codespace in Visual Studio Code for a better development experience.

Once a Codespace is created, the following steps can be followed to set up the development environment:

1. Install `ruby` with `sudo apt update && sudo apt install ruby-full`.
2. Install `bundler` with `gem install bundler`.
3. Install project dependencies with `bundle install`.

Once the dependencies are installed, you can start the development server with `bundle exec jekyll serve`. 

This will build the site and make it available at `http://localhost:4000`. If you are using Visual Studio Code, the port should be forwarded automatically, and you can access the site at `http://localhost:4000` in your browser.