DISCLAIMER: THIS PAGE WAS MADE AS A PERSONAL EDUCATIONAL PROJECT. This is NOT the official site of the company or brand identified on the page. The creator of this page is NOT affiliated with the company or brand in any way. This page is a personal project made in connection with an educational exercise.

---

### 🚀 RAAC Adventures Bot Setup Guide

Welcome to the bot setup guide! Follow the steps below to install and configure the bot correctly. This guide is designed for new users, with clear explanations for each step.

📱 **For Mobile Users (Termux):** [View the guide here](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

---

## Table of Contents

1. [System Requirements](#system-requirements)
2. [Installing the Bot](#installing-the-bot)
3. [Bot Configuration](#bot-configuration)
4. [Running the Bot](#running-the-bot)
5. [Updating the Bot](#updating-the-bot)
6. [Contact & Support](#contact--support)

---

## System Requirements

Before running the bot, make sure you have installed:

- **Node.js** (Version: `22.11.0`)
- **npm** (Version: `10.9.0`)
- **Git**
- **Docker** _(Optional)_

📥 **Node.js & npm:** [Download](https://t.me/KeoAirDropFreeNe/257/1462)

📥 **Git:** [Download](https://t.me/KeoAirDropFreeNe/257/60831)

---

## Installing the Bot

<details>
<summary><strong>🔧 Install via Git</strong></summary>

```bash
git clone https://github.com/MeoMunDep/RAAC Adventures.git
cd RAAC Adventures
npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ethers web3 ws
```

</details>

<details>
<summary><strong>🧰 Manual Installation</strong></summary>

1. Download and extract the bot manually.
2. Run the same `npm install` command as above.

</details>

<details>
<summary><strong>🐳 Install via Docker</strong></summary>

```bash
docker build -t RAAC Adventures-image .
docker run -d --name RAAC Adventures-container -v $(pwd)/logs:/app/logs RAAC Adventures-image
```

> 💡 On **Windows CMD**, use `%cd%` instead of `$(pwd)`

</details>

---

## Bot Configuration

<details open>
<summary><strong>📜 1. <code>configs.json</code> - Main Configuration</strong></summary>

```json
{
  "proxy_mode": "round",
  "rotate_proxy": false,
  "skip_invalid_proxy": true,
  "proxy_rotation_interval": 2,
  "delay_each_account": [1, 1],
  "time_to_restart_all_accounts": 300,
  "how_many_accounts_run_in_one_time": 1,
  "do_tasks": false,
  "play_games": {
    "enabled": true,
    "count": 5
  }
}
```

| **Parameter Name**                  | **Type**           | **Default**                       | **Description**                                  |
| ----------------------------------- | ------------------ | --------------------------------- | ------------------------------------------------ |
| `rotate_proxy`                      | `boolean`          | `false`                           | Enable proxy rotation between accounts           |
| `proxy_mode`                        | `string`           | `static`                          | Adjust proxy type for all accounts               |
| `skip_invalid_proxy`                | `boolean`          | `false`                           | Skip account if its proxy is invalid             |
| `proxy_rotation_interval`           | `number`           | `2`                               | Minutes between proxy rotations                  |
| `delay_each_account`                | `[number, number]` | `[5, 8]`                          | Random delay range (in seconds) between accounts |
| `time_to_restart_all_accounts`      | `number`           | `300`                             | Time (in seconds) before restarting all accounts |
| `how_many_accounts_run_in_one_time` | `number`           | `100`                             | Number of accounts to run in parallel            |
| `do_tasks`                          | `boolean`          | `true`                            | Whether to perform main tasks                    |
| `play_games`                        | `object`           | `{ "enabled": true, "count": 5 }` | Config for auto-playing games and session count  |

</details>

<details>
<summary><strong>🗂️ 2. <code>datas.txt</code> - User Data</strong></summary>

📥 [Guide from Telegram](https://t.me/KeoAirDropFreeNee/1586)

```txt
query_id.../user...
query_id.../user...
query_id.../user...
```

</details>

<details>
<summary><strong>🌐 3. <code>proxies.txt</code> - Proxy List</strong></summary>

📥 [Free proxy from Webshare](https://www.webshare.io/?referral_code=4l5kb3glsce7)

```txt
host:port
http://host:port
socks5://user:pass@host:port
...
```

</details>

<details>
<summary><strong>💼 4. <code>wallets.txt</code> - Wallet List</strong></summary>

📥 [Generate wallets here](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

```txt
0xabc123...
0xdef456...
...
```

</details>

---

## Running the Bot

<details open>
<summary><strong>🪟 Run on Windows (.bat)</strong></summary>

1. Double-click `run.bat`
2. It auto-updates, installs dependencies, and runs the bot.

> If it fails, right-click → **Run as Administrator**
> Or run from CMD:

```cmd
run.bat
```

</details>

<details>
<summary><strong>🐧 Run on Linux/macOS (.sh)</strong></summary>

```bash
chmod +x run.sh
./run.sh
```

</details>

<details>
<summary><strong>🐳 Run with Docker</strong></summary>

```bash
docker stop RAAC Adventures-container 2>/dev/null && docker rm RAAC Adventures-container 2>/dev/null
docker build -t RAAC Adventures-image .
docker run -d --name RAAC Adventures-container -v $(pwd)/logs:/app/logs RAAC Adventures-image
```

> Later restart:

```bash
docker start RAAC Adventures-container
```

</details>

---

## Updating the Bot

<details>
<summary><strong>🔄 If installed via Git</strong></summary>

```bash
cd RAAC Adventures
git pull origin main
npm install
```

</details>

<details>
<summary><strong>🐳 If using Docker</strong></summary>

```bash
docker stop RAAC Adventures-container
docker rm RAAC Adventures-container
docker build -t RAAC Adventures-image .
docker run -d --name RAAC Adventures-container RAAC Adventures-image
```

</details>

---

## Contact & Support

- **Support me via** [Referral Link](https://t.me/RaacAdventuresBot/RaacAdventures?startapp=6713068747)
- **Donate:** [Donate Here](https://t.me/KeoAirDropFreeNe/312/27801)
- **Contact (Work):** [@MeoMunDep](https://t.me/MeoMunDep)
- **Support Group:** [Join here](https://t.me/KeoAirDropFreeNe)
- **Updates Channel:** [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube:** [Watch here](https://www.youtube.com/@keoairdropfreene)
- **Instagram:** [Follow](https://www.instagram.com/meomundep)
- **Tiktok:** [Follow](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**

This project was created solely as a **personal educational exercise**.  
It is **not an official product**, website, or service of any company or brand referenced in this repository.  
The creator is **not affiliated, associated, endorsed by, or connected** with any such company or brand in any way.

The code is provided **"as is"** without any warranties or guarantees.  
Certain parts of the source are intentionally **obfuscated** to protect personal research, custom logic, and implementation techniques developed during learning and experimentation.

Use this project responsibly and at your own risk.  
**Redistribution, resale, or commercial use** of any part of this code—whether original or modified—is **not permitted**.

<p align="center">
  <sub>✨ Created by <b>@MeoMunDep</b> | ✨ Thank you for using the bot, hope you earn from my scripts! Good luck! 🚀
</sub>
</p>
