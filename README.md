# commits_list_test

A new Flutter project to display commits for this repository, this is a test to apply as Flutter developer in Fulltime Force company.

## How to run the project

After cloning the repository, some steps are needed to get the commits correctly. It is needed to add a private key for the github API service.

First of all open the project and create a .env file at the root of the project and add the following variable:

`GITHUB_PVKEY_JOCGOMEZ = 'XXXX'`

The 'XXXX' are replaced with the Github API Key received via email.

After that, open terminal command in the project folder and run the following commands.

1. `flutter pub get`
2. `dart run build_runner build`
