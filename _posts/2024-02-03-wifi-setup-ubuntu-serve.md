---
title: Configure WiFi Connections in Ubuntu Using nmcli
date: 2024-02-03 01:00:00 +/-TTTT
categories: [DEVOPS, LINUX]
tags: [ubuntu, configure-wifi, wifi-connections, nmcli, networkmanager, command-line, wifi-interface, connect-to-wifi-network, hidden-network, wireless-networking, linux-networking, ubuntu-server, network-configuration, terminal-commands, nmcli-tutorial, network-management, wifi-troubleshooting]
image:
    path: assets/img/shubham-dhage-T9rKvI3N0NM-unsplash.jpg
    alt: Linux Networking
---

Ubuntu is a versatile open-source operating system that powers desktops, servers, and IoT devices. Managing WiFi connections via the command line can be a powerful skill, especially when dealing with servers or minimal installations without a graphical interface. This guide will walk you through establishing and managing WiFi connections using `nmcli`, Ubuntu's command-line tool for NetworkManager.

## Prerequisites

- **Ubuntu Operating System**: Ensure you are running Ubuntu on your machine.
- **Terminal Access**: You should be comfortable opening and using the terminal.
- **Administrative Privileges**: Some commands may require `sudo` to execute.

---
![Linux nmcli]({{ 'assets/img/lt45-05-nmcli-con-show-ens160.png' | relative_url }})
---

## Step 1: Identify Your WiFi Interface

First, you need to find out the name of your WiFi interface. This is essential for executing commands that interact with your WiFi hardware.

```bash
nmcli d
```

**Sample Output:**

```
DEVICE      TYPE      STATE         CONNECTION
eth0        ethernet  connected     Wired connection 1
wlan0       wifi      disconnected  --
lo          loopback  unmanaged     --
```

In this example, `wlan0` is the WiFi interface. Your interface might have a different name like `wlp2s0` or similar.

---

## Step 2: Ensure WiFi Radio is Turned On

Before attempting to connect to a network, make sure that the WiFi radio is enabled.

```bash
nmcli r wifi on
```

This command turns on the WiFi radio if it was off. You can verify the status by running `nmcli r`.

---

## Step 3: Scan for Available WiFi Networks

Now, let's scan for available WiFi networks to connect to.

```bash
nmcli d wifi list
```

**Sample Output:**

```
*  SSID            MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
   HomeNetwork     Infra  6     54 Mbit/s   75      ▂▄▆_  WPA2
   OfficeWiFi      Infra  11    130 Mbit/s  60      ▂▄__  WPA2
   CoffeeShop      Infra  1     195 Mbit/s  45      ▂▄__  --
```

Identify the SSID (network name) you wish to connect to.

---

## Step 4: Connect to a WiFi Network

To connect to a WiFi network, use the following command, replacing `<SSID>` with the network name and `<password>` with the WiFi password.

```bash
nmcli d wifi connect <SSID> password <password>
```

**Example:**

```bash
nmcli d wifi connect HomeNetwork password MySecretPassword
```

- `<SSID>`: The name of the WiFi network.
- `<password>`: The WiFi password (must be between 8-63 characters or 64 hexadecimal characters for a 256-bit key).

Upon successful connection, `nmcli` will create a connection profile that you can see with `nmcli c`.

---

## Connecting to a Hidden Network

Hidden networks do not broadcast their SSID, so they won't appear in the list of available networks. To connect to a hidden network, you need to create a connection profile manually.

### Step 1: Add a New WiFi Connection

```bash
nmcli c add type wifi ifname <interface> con-name <connection_name> ssid <SSID>
```

**Example:**

```bash
nmcli c add type wifi ifname wlan0 con-name HiddenNetwork ssid MyHiddenSSID
```

- `<interface>`: Your WiFi interface name (e.g., `wlan0`).
- `<connection_name>`: A name you choose for this connection profile.
- `<SSID>`: The SSID of the hidden network.

### Step 2: Configure Security Settings

If the hidden network is secured (which is usually the case), you need to specify the security type and password.

```bash
nmcli c modify <connection_name> wifi-sec.key-mgmt wpa-psk wifi-sec.psk <password>
```

**Example:**

```bash
nmcli c modify HiddenNetwork wifi-sec.key-mgmt wpa-psk wifi-sec.psk MyHiddenPassword
```

- `<connection_name>`: The name of the connection profile you created.
- `<password>`: The WiFi password.

### Step 3: Bring Up the Connection

Finally, activate the connection.

```bash
nmcli c up <connection_name>
```

**Example:**

```bash
nmcli c up HiddenNetwork
```

If everything is configured correctly, you should now be connected to the hidden network.

---

## Managing WiFi Connections

### Listing All Connection Profiles

To view all saved connection profiles, use:

```bash
nmcli c
```

### Deleting a Connection Profile

To delete a connection profile you no longer need:

```bash
nmcli c delete <connection_name>
```

**Example:**

```bash
nmcli c delete HiddenNetwork
```

---

## Tips and Troubleshooting

- **Incorrect Password**: If you enter the wrong password, the connection will fail. Re-run the `nmcli c modify` command with the correct password.
- **Interface Down**: If your WiFi interface is down, bring it up with `sudo ifconfig <interface> up` or ensure that the WiFi radio is on using `nmcli r wifi on`.
- **No WiFi Adapter Found**: Ensure your device has a WiFi adapter and that it's properly installed and recognized by the system.

---

## Further Information

For more advanced configurations and options, refer to the official `nmcli` documentation:

- [NetworkManager Reference Manual - nmcli](https://developer.gnome.org/NetworkManager/stable/nmcli.html)

---
![Linux Servers]({{ 'assets/img/vishnu-mohanan-rZKdS0wI8Ks-unsplash.jpg' | relative_url }})
---
By mastering `nmcli`, you gain powerful control over network connections directly from the terminal, which is especially useful for server management, scripting, or recovering network connectivity when the GUI is unavailable.