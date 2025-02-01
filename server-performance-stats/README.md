# Server Performance Stats

This project includes a script that analyzes basic server performance statistics. The script provides insights into CPU usage, memory usage, disk usage, and the top processes consuming resources.

## Features

- Total CPU usage
- Total memory usage (Free vs Used including percentage)
- Total disk usage (Free vs Used including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- Additional stats (optional):
  - OS version
  - Uptime
  - Load average
  - Logged in users
  - Failed login attempts

## Requirements

- Linux operating system
- Bash shell

## How to Run the Script

1. Clone the repository or download the script.
2. Navigate to the project directory:
   ```
   cd server-performance-stats
   ```
3. Make the script executable:
   ```
   chmod +x server-stats.sh
   ```
4. Run the script:
   ```
   ./server-stats.sh
   ```

## Dependencies

No external dependencies are required to run this script, but it is recommended to have basic Linux utilities available.

## License

https://roadmap.sh/projects/server-stats
This project is licensed under the MIT License.
