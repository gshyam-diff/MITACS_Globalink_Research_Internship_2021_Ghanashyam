# Autonomous 6-DoF Robotic Welding System
### MITACS Globalink Research Internship 2021 | University of Manitoba

![ROS](https://img.shields.io/badge/ROS-Melodic%2FNoetic-orange) ![C++](https://img.shields.io/badge/Language-C%2B%2B-blue) ![Python](https://img.shields.io/badge/Language-Python-blue) ![Library](https://img.shields.io/badge/Lib-Open3D%2FPCL-green)

## 📖 Project Overview
This repository contains the perception and motion planning stack for an autonomous **6-Degree-of-Freedom (6-DoF) robotic manipulator** designed to weld helical augers. 

The core challenge of welding a helical geometry is the continuous change in the end-effector's required orientation. This project solves that kinematic limitation by **inverting the problem**: instead of forcing the robot to perform complex, singular-prone gymnastics, the system calculates the precise **Axis-Angle rotation** required to dynamically orient the auger, keeping the weld seam linear relative to the robot's end-effector.

> **Note:** For detailed setup and execution instructions, please refer to the [How to Run Simulation](https://github.com/gshyam-diff/MITACS_Globalink_Research_Internship_2021_Ghanashyam/blob/main/Readme_MITACS.docx.pdf) document.

---

## 📷 Visual Demonstration

| **Gazebo Simulation** | **Moveit Simulation** |
|:---:|:---:|
| ![Gazebo](https://github.com/gshyam-diff/MITACS_Globalink_Research_Internship_2021_Ghanashyam/blob/main/gazebo.gif) | ![Moveit](https://github.com/gshyam-diff/MITACS_Globalink_Research_Internship_2021_Ghanashyam/blob/main/moveit.gif) |
| *Approx linear execution* | *point cloud and end-effector rotation execution* |

---

## 🛠️ Technical Stack
* **Robotics Middleware:** ROS (Robot Operating System)
* **Motion Planning:** MoveIt! (Cartesian Path Planning)
* **Simulation:** Gazebo Physics Engine
* **Perception:** Open3D, PCL (Point Cloud Library)
* **Math Backend:** NumPy, SciPy (for Quaternion/Rotation Matrix calculations)

---

## 🧠 Methodology & Kinematics

The system operates on a **Perception-Calculation-Actuation** pipeline:

### 1. Geometric Perception (Open3D & PCL)
The system ingests a 3D scan of the workpiece. Using **Open3D**, we process the point cloud to:
1.  Filter noise and downsample the mesh.
2.  Extract the **intersection seam** between the helical flighting and the cylindrical shaft.
3.  Register the point cloud to the robot's base frame.

### 2. Kinematic Formulation (The Math)
To ensure the welding torch remains perpendicular to the seam (maintaining a constant "down-hand" welding position), we utilize **Rodrigues' Rotation Formula**.

For every point $P_i$ on the helical path, we calculate the rotation vector required to bring $P_i$ to the "Top-Dead-Center" $(0, R, Z)$ of the cylinder.

* **Axis-Angle Representation:** The rotation is parameterized by a unit vector $\mathbf{e}$ (axis) and an angle $\theta$.
    $$\mathbf{v}_{rot} = \mathbf{v} \cos\theta + (\mathbf{e} \times \mathbf{v}) \sin\theta + \mathbf{e} (\mathbf{e} \cdot \mathbf{v}) (1 - \cos\theta)$$
* **Quaternion Conversion:** These rotations are converted into **Quaternions** $(x, y, z, w)$ to avoid Gimbal lock during the MoveIt trajectory generation.

### 3. Deterministic Execution (ROS)
The calculated trajectory is stored as a series of waypoints. A custom ROS node acts as the orchestrator:
* **Auger Controller:** Rotates the workpiece to the calculated angle $\theta_i$.
* **Robot Controller:** Simultaneously moves the end-effector linearly along the $X$-axis.
* **Synchronization:** Ensures both motions complete at time $t_i$ to maintain a constant weld velocity.
