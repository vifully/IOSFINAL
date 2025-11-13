
VIDEO : https://www.youtube.com/watch?v=-HUdW3DgPss&feature=youtu.be
---
# Muse Me - Nafin Vwich
---

## Table of Contents

* Overview
* App Evaluation
* Product Spec

  * User Stories
  * Screen Archetypes
  * Navigation
* Wireframes
* Schema

---

## Overview

**Description**
Muse Me is a mobile first creative writing app that gives users daily timed writing prompts. Users must continue the prompt within a set time and can post their responses to a personal timeline. Friends or followers can read, comment, and engage with the shared content. The app encourages daily writing practice, creativity, and social interaction.

---

## App Evaluation

* **Category:** Writing / Creativity / Social
* **Mobile:** Mobile-first; designed for short, timed writing exercises and social sharing.
* **Story:** Users receive daily writing prompts and write responses under a time limit, then post to their timeline for friends/followers to read.
* **Market:** Aspiring writers, students, hobbyists, and anyone interested in creative writing or improving writing skills.
* **Habit:** Encourages daily engagement via prompts and social interaction. Users develop a consistent writing habit and receive feedback from the community.
* **Scope:** Starts as a timed writing prompt and social sharing platform; can expand to competitions, themed challenges, AI-assisted prompts, and rating/comment systems.

---

## Product Spec

### 1. User Stories

**Required Must-have Stories**

* As a user, I can receive a daily writing prompt.
* As a user, I can write a response to the prompt within a set time limit.
* As a user, I can post my response to a personal timeline or not.
* As a user, I can view responses from people I follow.
* As a user, I can like or comment on responses.

**Nice-to-have Stories**

* As a user, I can track my daily streaks for writing.
* As a user, I can follow AI-generated prompts or suggestions.
* As a user, I can receive notifications for new prompts or comments.

---

### 2. Screen Archetypes

**Home / Prompt Screen** X
- created a logo
- Created the background

- made associated labels to it

* Associated Stories: View responses from people you follow, like and comment on posts.

**Daily Timeline Screen**
- created background

* Associated Stories: Receive a daily writing prompt, write a response within the time limit, submit the response.

**Profile Screen**
-created background

* Associated Stories: Edit profile, view own posts and stats, track writing streaks.
---

### 3. Navigation

**Tab Navigation (Tab to Screen)**

**YOU ARE ABLE TO CLICK AND NAVIGATE TO EACH SCREEN**
* Home - Daily Prompt Writing - 
* Timeline - 
* Profile - User Profile / Streaks
* Notifications - Social Interactions
* Challenges - Optional Challenges & Rankings

**Flow Navigation (Screen to Screen)**

* Daily Prompt Screen → Submit → Timeline Screen → View Post / Comments
* Timeline Screen → Select User → Profile Screen → Back to Timeline
* Profile Screen → Edit Profile → Profile Screen

---



## Schema

### Models

| Model     | Attributes                                                | Description                                 |
| --------- | --------------------------------------------------------- | ------------------------------------------- |
| User      | username, email, password, streakCount | Stores user information and profile details |
| Prompt    | text, genre, date                                         | Stores daily writing prompts                |
| Post      | userId, promptId, content, timestamp, likes, comments     | Stores user responses to prompts            |
| Comment   | postId, userId, text, timestamp                           | Stores comments on posts                    |
| Like      | postId, userId                                            | Tracks likes on posts                       |


### Networking

* **Screens / Requests**

  * Timeline - Fetch posts by followed users
  * Daily Prompt - Fetch today’s prompt
  * Post Response - Submit user post
  * Profile → Fetch user data, update profile
  * Notifications - Fetch likes/comments
  



