# Git Clone with Auth Script

## Problem Statement

When collaborating with multiple organizations or projects, you might find yourself in a situation where different entities require you to create distinct GitHub accounts. This can be cumbersome, especially when it comes to cloning repositories. Git, by default, might not understand which credentials should be used with which repository, leading to authentication errors or unexpected behaviors.

### Solution

With this script, the challenge of managing multiple GitHub accounts becomes a breeze. For each organization or project, simply:

1. Clone this script with a distinct name (e.g., `clone_for_companyA.sh`, `clone_for_companyB.sh`).
2. Insert the respective GitHub credentials directly into the script.
3. Use the script to clone repositories associated with that specific account without confusion.

This ensures that you always use the correct credentials for the correct repository, avoiding any potential conflicts or misconfigurations.

## Usage

### 1. Setup

Before using the script, you need to set your GitHub username and personal access token.

Open the respective script (e.g., `clone_for_companyA.sh`) and locate the following lines:

```bash
username="YOUR_USERNAME_HERE"
token="YOUR_PERSONAL_ACCESS_TOKEN_HERE"
```

Replace `YOUR_USERNAME_HERE` with your GitHub username and `YOUR_PERSONAL_ACCESS_TOKEN_HERE` with your personal access token. Save the file.

**Important**: Be cautious with your personal access tokens. Do not share them and make sure not to push scripts or files containing them to public repositories.

### 2. Execution

To use the script, you can run it in one of two ways:

1. Specifying both the repository URL and the destination:
   ```bash
   ./clone_for_companyA.sh "https://github.com/ExampleUser/ExampleRepo.git" "destination-folder"
   ```

2. Specifying only the repository URL (it will use the repository name as the destination folder):
   ```bash
   ./clone_for_companyA.sh "https://github.com/ExampleUser/ExampleRepo.git"
   ```

## Notes

- Ensure that the script has execute permissions. If not, you can grant them with `chmod +x clone_for_companyA.sh`.
- The script checks for the correct format of the repository URL. If you encounter any issues, ensure your URL is correct.

## Contributing

If you have suggestions for improving this script or find any bugs, feel free to open an issue or make a pull request.

