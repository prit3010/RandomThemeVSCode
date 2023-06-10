# RandomThemeVSCode

Tired of having the same old theme for your VSCode? This extension will help you to randomize your theme every day.
This Bash script is designed to update the color theme in a JSON file using the `jq` tool. It randomly selects a color theme from a predefined list and modifies the JSON file accordingly.

## Pre-requisites

- Bash: The script is written in Bash, so ensure that Bash is installed on your system.
- jq: The `jq` tool is required to manipulate the JSON file. Make sure `jq` is installed and accessible in your system's PATH.

## Usage

1. Clone the repository or copy the script file to your desired location.

2. Open the script file in a text editor and set the correct path to the JSON file you want to update. Modify the `json_file` variable to specify the path to your JSON file.

3. Modify the `themes` array to include the list of themes you want to randomly select from. You can find the list of available themes in the VSCode Marketplace.

4. Run the script using the following command:

   ```bash
   bash themeChanger.sh
   ```

   You can also run the script using the following command:

   ```bash
   ./themeChanger.sh
   ```

   Make sure the script has the execute permission. If not, run the following command:

   ```bash
   chmod +x themeChanger.sh
   ```

5. You can add the script to your crontab to run it automatically at a specific time. For example, to run the script every day at 9:00 AM, add the following line to your crontab:

   ```bash
    0 9 * * * /path/to/themeChanger.sh
   ```
