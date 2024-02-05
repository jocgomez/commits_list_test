# commits_list_test

A new Flutter project to display commits for this repository, this is a test to apply as Flutter developer in Fulltime Force company.

## How to run the project

First of all, to get the commits correctly it is necessary to add the private API key for the github API service, so its needed to create a .env file at the root of the project and add the next variable:

GITHUB_PVKEY_JOCGOMEZ = 'XXXX'

The 'XXXX' are replaced with the Github API Key received via email.

After that, open terminal command in the project folder and run the following commands.

1. flutter pub get
2. dart run build_runner build