# auto-setup

This repository provides an automated way to set up your Mac for development using Homebrew. It includes a curated list of tools and applications commonly used in web and mobile development, as well as terminal customization. This setup will help you get up and running with your preferred development environment quickly.

## Prerequisite

You can create the necessary files manually if you prefer not to clone the repository.

```bash
# Create necessary files
touch Brewfile install.sh
```

Alternatively, clone the repository to your local machine. Ensure that Git is installed on your Mac. If Git is not installed, you can install it directly from the [Git website](https://git-scm.com/).

### Clone the Repository

To get started, clone the repository to your local machine:

```bash
git clone https://github.com/zaiyou12/auto-setup.git
cd auto-setup
```

## Setup Instructions

Once you've created the necessary files or cloned the repository, run the following command to begin the installation:

```bash
bash install.sh
```

### Installation Steps

The install.sh script will handle the following tasks in order:

1. Install Homebrew: If Homebrew is not installed, the script will install it.
2. Install Homebrew packages: The Brewfile will be used to install a curated list of packages, apps, and terminal tools.
3. Install Oh-My-Zsh: The script will install oh-my-zsh to customize your Zsh shell.
4. Git Configuration: You will be prompted to enter your Git user name and email for global Git configuration. If you already have existing configurations, you can choose whether to update them.

### Homebrew Bundle

The Brewfile contains a list of packages and apps for development, including tools like:

- Terminal Tools: vim, zsh, tmux, starship, fzf, etc.
- Developer Tools: git, nvm, docker, awscli, visual-studio-code, etc.
- App Development: flutter, fastlane, cocoapods, android-studio, etc.
- Apps: Common utilities like google-chrome, discord, steam, figma, and more.

You can customize the Brewfile to suit your own needs or leave it as is for a well-rounded development environment.

### Git Configuration

During the installation, you will be prompted to enter your Git user name and email. These are essential for configuring Git globally on your system.

If Git is already configured, the script will detect this and ask whether you want to update the existing configuration.

If Git is not configured, the script will automatically set up your user name and email based on your input.

### VSCode Configuration

Once the installation is complete, you need to configure your Visual Studio Code **manually** with the following settings from setting.json:

- Themes: Snazzy Light for light mode and Snazzy Operator for dark mode.
- Fonts: Uses 'Fira Code' with font ligatures enabled for a better coding experience.
- Extensions: Includes essential extensions for Git, Tailwind CSS, GraphQL, Dart/Flutter, and Java development.

These settings ensure a consistent and productive environment tailored for web and mobile development.

## Backup and Restore Homebrew Packages

If you are using Homebrew on another Mac or plan to migrate to a new machine, it's a good idea to back up your Homebrew packages. You can do this with the following commands:

### Backup

To back up your Homebrew packages:

```bash
# Dump the list of installed packages into a Brewfile
brew bundle dump

# View the contents of your Brewfile
bat Brewfile
```

### Restore

To restore your Homebrew packages on a new machine:

```bash
# Install the packages from the Brewfile
brew bundle
```

This ensures that your development environment can be quickly recreated on any Mac.

## Conclusion

By following these instructions, you will have a fully customized and optimized development environment on your Mac. The combination of Homebrew, VSCode settings, and terminal tools will streamline your workflow and ensure consistency across different projects.

Feel free to modify the Brewfile, setting.json, or the installation script to suit your own preferences. If you encounter any issues, please open an issue on this repository.
