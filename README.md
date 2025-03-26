# 🛠️ Setup Guide

## Use **Godot v4.3**

---

## 1️⃣ Import Project to Godot

1. Open **Godot v4.3**.  
2. Click **Import** and select the project folder.  

---

## 2️⃣ How to Use

- To run the project, **press F6** (not F5).  
- All captured sprites are stored in the **"Sprites"** folder.  
- All models are positioned at:  
  - **X:** `0`  
  - **Y:** `0.225`  
  - **Z:** `-0.062`  

---

## 🔄 Changing Models for Capture

- Go to **"SpriteViewport"** in the **Inspector** tab.  
- Change the model as needed.  

---

## 📏 Adjusting the Capture Size

1. Select **"Camera3D"** in the scene hierarchy.  
2. In the **Inspector** tab (top-right corner), locate the **"Perspective"** section.  
3. Enable **"Preview"** to see real-time adjustments.  
4. Modify the **"Size"** parameter to customize the desired POV for capturing the model.  
   - **Default Size Used:** `3m`  

---

## 3️⃣ Adding Models

- Place new models inside the **"Models"** folder in **GLB format**.  
- ❗ **Note:** Other formats such as **OBJ** and **FBX** are **not compatible** with Godot.  
- To add a model:  
  1. Drag the desired **GLB** model into the **3D scene**.  
  2. Place it under **SpriteViewport > Camera3D**.  
