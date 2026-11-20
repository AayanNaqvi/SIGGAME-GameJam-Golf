# SIGGAME Fall 26 GameJam: GOLF
### 2D Mini-Golf Game

<div align="center">
  <img src="Golf ScreenShot.png" width="650" />
  <br/>
  <sub><I>[Screenshot from the project]</i></sub>
</div>

<br/>


![Godot Engine](https://img.shields.io/badge/Godot-4.x-478CBF?style=for-the-badge&logo=godot-engine&logoColor=white)
![GDScript](https://img.shields.io/badge/Language-GDScript-355570?style=for-the-badge&logo=godot-engine&logoColor=white)
![Status](https://img.shields.io/badge/Status-Game_Jam_Build-4c1?style=for-the-badge)

## Table of Contents
* [Overview](#overview)
* [Contributors](#contributors-and-my-role)
* [Technical Specs](#technical-specs)
* [General Gameplay Showcase](#general-gameplay)
* [Key Reflections](#key-reflections)
* [Conclusion](#conclusion)


## Overview
Created for a the SIGGAME @ UIC Fall 2026 GameJam, this Godot project sets out to recreate mini-golf.
* **Core Gameplay Loop:** Spawn in > Use the mouse to hit the ball into the hole > Advance to the next level!
* **What this Repo Has:** This repo contains only the scripts I contributed to the project and omits all art and assets

## Contributors and My Role
This game was built collaboratively for the Fall 2026 GameJam at [**ACM @ UIC**:](https://acm-uic.github.io)

* **Aayan Naqvi:** (Programmer & Sprite Artist)
* **[@Bjimen](https://github.com/bjimen)** (Programmer)
* **[@mooonn004](https://github.com/mooonn004)**(Main Sprite Artist)
* **[lukedeany](https://github.com/lukedeany)**(GameJam Host)


## Technical Specs
* **Constraints:** 3 Hours per contributor allowed (Async across 3 weeks)
* **Engine & Language:** Godot, Gdscript
* **Other Tools Used:**
  * Aseprite (Art)
* **Core Systems:**
  * Golfball bounce physics
  * Level progression
  * Hit tracking
  * Godot Signals
  * Smooth Camera Follow
* **Repository Scope:** Gdscript source scripts (`Scripts/`) and documentation (`README.md`).

## General Gameplay
The ball spawns in and the player clicks anywhere on the screen to hit the golfball forward. The direction and force applied to the ball is based on the mouse cursor's position relative to the golfball. Each hit increases the counter on the left. Once the ball goes into the hole (the flag), the hits reset to 0 and the player advances to the next level. Here is a short gameplay video:

[Media/Golf Silent Gameplay-compressed.mp4](https://github.com/user-attachments/assets/a67d7008-4c0b-4ad8-956a-8fd7c81160a3)
<div align="center">
  <sub><I>[Short Gameplay Footage]</i></sub>
  <br/>
</div>
<br/>

## Key Reflections
There are a few key points/reflections regarding the development of this game and the repo:
* **Time Limit:**
  * Being able to only work an hour a week across 3 meetings was challenging
  * As a result, many features (Like a hit direction indicator) had to be cut
* **Godot From Unity:**
  * Transitioning from Unity 2D to Godot was a decent learning curve
  * Despite that, Godot is still fairly easy to learn
  * GDScript is a very easy language to work with as it is very similar to Python
  * Many things, such as signals/events, were much easier to implement
* **The Contents of This Repo:**
  * Only the scripts I (Aayan Naqvi) created are in this repo
  * All other scripts, and art are omitted from this repo in respect for my teammates and to keep the repo lightweight

## Conclusion
As my first Game Jam, this was very fun to work on! The jump from Unity to Godot was a decent one, but I still enjoyed every step of it! Thank you for checking out this repo!


