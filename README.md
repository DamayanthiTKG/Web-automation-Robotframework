# Web-automation-Robotframework
Web Automation using Robot framework with Python


Introduction
Robot Framework ® is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA). It has simple plain text syntax and it can be extended easily with generic and custom libraries.
Robot Framework is operating system and application independent. It is implemented using Python which is also the primary language to extend it. The framework has a rich ecosystem around it consisting of various generic libraries and tools that are developed as separate projects. For more information about Robot Framework and the ecosystem, see http://robotframework.org.
Robot Framework project is hosted on GitHub where you can find source code, an issue tracker, and some further documentation. Downloads are hosted on PyPI.
Robot Framework development is sponsored by Robot Framework Foundation. If you are using the framework and benefiting from it, consider joining the foundation to help maintaining the framework and developing it further.

Latest version License
Installation
If you already have Python with pip installed, you can simply run:
pip install robotframework
For more detailed installation instructions, including installing Python, see INSTALL.rst.

Robot Framework requires Python 3.6 or newer and runs also on PyPy. If you need to use Python 2, Jython or IronPython, you can use Robot Framework 4.1.3.

Example
Below is a simple example test case for testing login to some system. You can find more examples with links to related demo projects from http://robotframework.org.

*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          login.resource

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
Usage

Tests (or tasks) are executed from the command line using the robot command or by executing the robot module directly like python -m robot .

The basic usage is giving a path to a test (or task) file or directory as an argument with possible command line options before the path:

robot tests.robot
robot --variable BROWSER:Firefox --outputdir results path/to/tests/
Additionally, there is the rebot tool for combining results and otherwise post-processing outputs:

rebot --name Example output1.xml output2.xml
Run robot --help and rebot --help for more information about the command line usage. For a complete reference manual see Robot Framework User Guide.

Documentation

Robot Framework User Guide
Standard libraries
API documentation
General documentation
Support and Contact
Slack (click for invite)
Forum
robotframework-users mailing list
@robotframework on Twitter
Contributing
Interested to contribute to Robot Framework? Great! In that case it is a good start by looking at the CONTRIBUTING.rst. If you do not already have an issue you would like to work on, you can check issues with good new issue and help wanted labels.

Remember also that there are many other tools and libraries in the wider Robot Framework ecosystem that you can contribute to!

License and Trademark
Robot Framework is open source software provided under the Apache License 2.0. Robot Framework documentation and other similar content use the Creative Commons Attribution 3.0 Unported license. Most libraries and tools in the ecosystem are also open source, but they may use different licenses.

Robot Framework trademark is owned by Robot Framework Foundation.
