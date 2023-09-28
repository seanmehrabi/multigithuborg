# Git Clone with Auth Script

This script allows for easy cloning of GitHub repositories using basic authentication. The script can accept both the repository URL and an optional destination folder.

## Usage

### 1. Setup

Before using the script, you need to set your GitHub username and personal access token.

Open the `clone_repo.sh` script and locate the following lines:

```bash
username="YOUR_USERNAME_HERE"
token="YOUR_PERSONAL_ACCESS_TOKEN_HERE"
```

Replace `YOUR_USERNAME_HERE` with your GitHub username and `YOUR_PERSONAL_ACCESS_TOKEN_HERE` with your personal access token. Save the file.

### 2. Execution

To use the script, you can run it in one of two ways:

1. Specifying both the repository URL and the destination:
   ```bash
   ./clone_repo.sh "https://github.com/ExampleUser/ExampleRepo.git" "destination-folder"
   ```

2. Specifying only the repository URL (it will use the repository name as the destination folder):
   ```bash
   ./clone_repo.sh "https://github.com/ExampleUser/ExampleRepo.git"
   ```

## Notes

- Ensure that the script has execute permissions. If not, you can grant them with `chmod +x clone_repo.sh`.
- The script checks for the correct format of the repository URL. If you encounter any issues, ensure your URL is correct.

## Contributing
If you have suggestions for improving this script or find any bugs, feel free to open an issue or make a pull request.
