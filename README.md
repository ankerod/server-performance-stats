# Server Performance Stats

Hey there! This project is a simple **Bash script** designed to help you quickly check your server's performance. It runs a few commands and gives you a snapshot of key metrics directly in your terminal. Think of it as a super-fast health check for your digital buddy!

### What does it do?

This script executes a series of standard Linux commands to gather essential information about your server. It focuses on:

* **System Uptime:** How long your server has been running without a restart.
* **CPU Utilization:** How hard your server's processor is working right now.
* **Memory Usage:** The total, used, and free RAM.
* **Disk Usage:** The total, used, and free space on your main drive.
* **Top 5 Memory-Consuming Processes:** Which programs are using the most memory.
* **Top 5 CPU-Consuming Processes:** Which programs are hogging the CPU.

All this info helps you quickly spot potential issues or just keep an eye on things.

### Why is this useful?

* **Quick overview:** Get all critical stats in one go.
* **Spot resource hogs:** Easily identify processes consuming too much CPU or memory.
* **Troubleshoot on the fly:** A handy first step when something feels off.
* **No extra dependencies:** It uses standard Linux tools, so it's ready to run almost anywhere.

---

### How to get it running (Quick Start)

It's super easy, buddy! Since it's a Bash script, you just need to download it and make it executable.

1.  **Clone repository:**
   
    ```bash
    git clone https://github.com/ankerod/server-performance-stats.git

2.  **Make it executable:**
    Open your terminal, navigate to where you saved the file, and run:

    ```bash
    chmod +x server_stats.sh
    ```

3.  **Run the script:**
    Now, just execute it!

    ```bash
    ./server_stats.sh
    ```

### How to use it

Simply run the script as shown above. All the performance statistics will be displayed directly in your terminal, neatly organized by category.
