<h1 align="center">
  <img src="https://avatars.githubusercontent.com/u/41749659?s=200&v=4" alt="µStreamer">
  <br />
  µStreamer
</h1>

<p align="center"><b>This is the snap for µStreamer</b>, <i>“Lightweight and fast MJPEG-HTTP streamer”</i>. It works on Ubuntu, Fedora, Debian, and other major Linux
distributions.</p>

<a href="https://snapcraft.io/ustreamer">
  <img alt="ustreamer" src="https://snapcraft.io/ustreamer/badge.svg" />
</a>
<a href="https://snapcraft.io/ustreamer">
  <img alt="ustreamer" src="https://snapcraft.io/ustreamer/trending.svg?name=0" />
</a>

![ustreamer](screenshot.png?raw=true "ustreamer")

## About

µStreamer is a lightweight and very quick server to stream MJPEG video from any V4L2
device to the net. All new browsers have native support of this video format, as well
as most video players such as mplayer, VLC etc. µStreamer is a part of the
[PiKVM](https://github.com/pikvm/pikvm) project designed to stream VGA and HDMI
screencast hardware data with the highest resolution and FPS possible.

## Install

```bash
sudo snap install ustreamer
```

To let µStreamer access a connected camera, connect the `camera` interface:

```bash
sudo snap connect ustreamer:camera
```

You can then start a stream, for example:

```bash
ustreamer --device=/dev/video0 --host=0.0.0.0 --port=8080
```

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/ustreamer)

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

## Links

- [Snap Store listing](https://snapcraft.io/ustreamer)
- [Upstream project](https://github.com/pikvm/ustreamer)
