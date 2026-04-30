# Personal Coding Projects

A multi-language collection of personal coding projects exploring web/cloud, game development, machine learning, infrastructure-as-code, algorithms, and more. Each subdirectory under `Projects/` is an independent, self-contained project with its own toolchain — there is no repo-wide build or dependency manifest.

## 🚀 Projects

### AIM Submission
A Node.js / Express REST API for an Automated Inventory Management (AIM) system, backed by MongoDB (Mongoose schemas for `Customer`, `Item`, `Kit`) with seed data in `mongofile.json`. Ships with a full AWS Terraform stack (`eks.tf`, `cognito.tf`, `route53.tf`, `vpc.tf`, `waf.tf`, `kubernetes.tf`, `secrets_manager.tf`) and an architecture diagram. Run the API with `node server.js`.

### Custom GPT
Jupyter notebook (`bigram.ipynb`) following the freeCodeCamp "Create a Large Language Model from Scratch" course, using `wizard_of_oz.txt` as the training corpus.

### Go_Projects
Small Go programs from *The Go Programming Language* book: `helloworld`, `echo1`/`echo2`/`echo3`, `dup1`/`dup2`/`dup3`, `fetch`, `fetchall`, and `lissajous`. Each is a single-file `package main` — run with `go run <file>.go` from inside the subfolder. `lissajous` writes a GIF to stdout (`go run lissajous.go > out.gif`).

### HackerRank Code Solutions
Standalone solution files (mostly Python, plus one C++ for Day 21) covering the *30 Days of Code* track and assorted Python practice problems (string handling, sets, list comprehensions, etc.).

### Hattengaard – Civilization VI Mod
A Civilization VI civilization mod ("Hattengaard – Top Hats and Champagne"). Contains XML/SQL gameplay data (`Core/`), `ArtDefs/`, `Textures/`, `Platforms/`, `XLPs/`, a `.modinfo` manifest, and a Visual Studio / ModBuddy solution under `Hattengaard/`.

### Kerbal Space Program Rocket To Orbit
kRPC client scripts that automate a rocket launch in Kerbal Space Program. `RocketLaunch.py` is the working orbital launch (with first-stage recovery), `ExperimentalRocketLaunch.py` is a WIP Duna mission. Requires KSP 1.5.1, kRPC 0.4.8, Python 3.9.1, and the bundled `OrbitRocket.craft`.

### Kotlin Scripts
Standalone `.kt` practice files: Calculator, MadLibs, Shape Maker, Animal Sanctuary, DIY Functions, and a Self Grading Quiz. Compile/run individually with `kotlinc` + `kotlin` or via an IDE.

### Leetcode Code Solutions
Per-problem solution files (Python, plus a Bash one-liner for problem 193 *Valid Phone Numbers*). Covers two-pointer, linked list, binary search, tree, and array problems.

### Machine Learning Projects
- **Admissions Predictions** — graduate admissions regression model (`Graduate Admissions Prediction Model.py`) over `admissions_data.csv`.
- **Stolen Car License Plate Detection** — computer-vision script (`vision_algorithm.py`) for plate detection.

### Pong In Python
Classic Pong implemented with pygame. `main.py` is the entry point; `solution.py` is a reference implementation.

### Python Scripts
A large grab-bag of algorithm and data-structure practice: searches (Linear, Binary, BFS, DFS, A\*, Dijkstra), sorts (Bubble, Merge, Quicksort, Radix), data structures (Hash Map, Stack, Min-Heap, Linked List utilities), and small applied projects (Maze Explorer, Towers of Hanoi, SkyRoute, Deli Queue, Portfolio Optimizations, Tourism Recommendation Engine, Thread Shed, Choose Your Own Adventure, Veneer Art Marketplace, etc.).

### Raycast_Kinematic_Function
Single-file C++ program (`Raycast_Kinematic_Function.cpp`) implementing raycasting / kinematic calculations for game physics.

### Terraform Files
Loose AWS Terraform configuration: `main.tf`, `opensearch_cluster.tf`, `secrets_manager.tf`. Standard workflow — `terraform init`, `terraform plan`, `terraform apply`. The `.terraform/` provider cache is intentionally checked in.

### Unquote Android Game
A Gradle-based Android mobile game about matching quotes with notable people. Build with the included `gradlew` wrapper.

### VBS 3 Benchmark
Virtual Battlespace 3 mission/benchmark assets: SQF scripts (`init.sqf`, `mission.sqf`, `missionIB.sqf`), editor files (`mission.biedi`, `mission.sqm`), `missionDrawing.chl`, plus PNG result screenshots from scenario and video benchmark runs. Loaded inside the VBS3 editor.

## 🔧 Technologies Used
- **Languages:** Python, Go, Kotlin, C++, JavaScript (Node.js), Bash, SQF, XML/SQL (Civ VI modding)
- **Web / Backend:** Express, Mongoose, MongoDB
- **Cloud / IaC:** Terraform, AWS (EKS, Cognito, Route53, WAF, OpenSearch, Secrets Manager, VPC)
- **ML / Data:** Jupyter, computer vision, regression modeling
- **Game / Sim:** pygame, kRPC (Kerbal Space Program), VBS3, Civilization VI Modding SDK / ModBuddy
- **Mobile:** Android (Gradle)

## 📝 Project Structure
```
.
└── Projects/
    ├── AIM Submission/
    ├── Custom GPT/
    ├── Go_Projects/
    ├── HackerRank Code Solutions/
    ├── Hattengaard - Civilization VI Mod/
    ├── Kerbal Space Program Rocket To Orbit/
    ├── Kotlin Scripts/
    ├── Leetcode Code Solutions/
    ├── Machine Learning Projects/
    ├── Pong In Python/
    ├── Python Scripts/
    ├── Raycast_Kinematic_Function/
    ├── Terraform Files/
    ├── Unquote Android Game/
    └── VBS 3 Benchmark/
```

## 🌐 Portfolio
Check out my personal portfolio for more details about my work and experience:
[Eric Fernald's Portfolio](https://ejf4595.wixsite.com/ericfernald)

## 📫 Contact
Feel free to reach out to me through my portfolio website for collaborations or questions about any of these projects.

## 📄 License
This repository contains personal projects. All rights reserved unless otherwise specified in individual project directories.

---
Created and maintained by Eric Fernald

