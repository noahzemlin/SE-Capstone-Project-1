# compute_python

See it running at http://34.84.95.192/

## Install

Create a new GCP Compute Engine Virtual Machine. Select an image that uses `apt` such as Ubuntu 16.04/18.04 or Debian 9/10. Make sure to check the `Allow HTTP traffic` checkbox.

Run the following commands in your vm's console to run the project

```bash
sudo apt install python3 python3-pip git
git clone https://github.com/noahzemlin/SE-50-Shades-Project-1.git
cd SE-50-Shades-Project-1/compute_python/
sudo python3 -m pip install flask
```

## Run

Run either of the following commands in your vm's console to run the project.

### Basic

```bash
sudo python3 main.py
```

### Always on

```bash
tmux new
sudo python3 main.py
```

then press CTRL+b then d to detach.
