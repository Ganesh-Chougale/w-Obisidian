# `Graphic APIs` 
(Graphics Application Programming Interfaces) are software interfaces that let programs communicate with your computer’s GPU (graphics card) to render images, animations, 2D/3D scenes, and visual effects efficiently.  

## What they do  
They act like a bridge between your code and the graphics hardware.  
Instead of manually telling the GPU every electrical instruction, you use a graphic API to:  

- Draw shapes (triangles, lines, meshes)
- Render 2D UI or 3D worlds
- Apply lighting, shadows, textures
- Handle shaders (GPU programs for visuals)
- Optimize performance using hardware acceleration

## Major Graphic APIs

**Final answer first:**
Here’s the expanded list — now including **Software rendering APIs / rasterizers** along with hardware Graphics APIs.

---

**Final answer first:**
Here’s your same list converted into a **clean classification table** showing platform/ecosystem ownership + primary usage.

---
# `GPU APIs`  
( GPU-based rendering )

## Graphics APIs (Hardware + Software) — Classification Table

| # | API Name               | Belongs To / Ecosystem | Platform Scope   | Primary Use                   |
| - | ---------------------- | ---------------------- | ---------------- | ----------------------------- |
| 1 | **OpenGL**             | Khronos Group          | Cross-platform   | General GPU graphics          |
| 2 | **Vulkan**             | Khronos Group          | Cross-platform   | High-performance GPU graphics |
| 3 | **DirectX** (Direct3D) | Microsoft              | Windows / Xbox   | Games, multimedia             |
| 4 | **Metal**              | Apple                  | macOS / iOS      | Apple GPU graphics            |
| 5 | **Mantle**             | AMD                    | Windows (legacy) | Precursor to Vulkan           |

---

## Mobile / Embedded

| # | API Name      | Belongs To    | Platform           | Primary Use                      |
| - | ------------- | ------------- | ------------------ | -------------------------------- |
| 1 | **OpenGL ES** | Khronos Group | Android / Embedded | Mobile GPU graphics              |
| 2 | **Vulkan**    | Khronos Group | Android / Mobile   | High-performance mobile graphics |
| 3 | **Metal**     | Apple         | iOS / iPadOS       | Apple mobile graphics            |

---

## Web Graphics

| #  | API Name   | Belongs To               | Runs On  | Primary Use             |
| -- | ---------- | ------------------------ | -------- | ----------------------- |
| 1  | **WebGL**  | Khronos / Web Consortium | Browsers | Web 3D graphics         |
| 2 | **WebGPU** | W3C + GPU vendors        | Browsers | Next-gen web GPU access |

---

# `Software Rendering APIs / Rasterizers`  
( CPU-based rendering )  

## A. General Software Rasterizers

| #  | API Name        | Belongs To         | Platform       | Use Case                   |
| -- | --------------- | ------------------ | -------------- | -------------------------- |
| 1 | **SwiftShader** | Google             | Cross-platform | CPU Vulkan/OpenGL renderer |
| 2 | **Mesa3D**      | Open-source (Mesa) | Linux / Cross  | Software drivers           |
| 3 | **LLVMpipe**    | Mesa               | Cross-platform | CPU rasterization          |
| 4 | **Softpipe**    | Mesa               | Cross-platform | Reference renderer         |

---

## B. DirectX Software Implementations

| #  | API Name                 | Belongs To | Platform | Use Case               |
| -- | ------------------------ | ---------- | -------- | ---------------------- |
| 1  | **WARP**                 | Microsoft  | Windows  | CPU Direct3D rendering |
| 2  | **Reference Rasterizer** | Microsoft  | Windows  | Accuracy testing       |

---

## C. Emulator / Specialized Software Renderers

| #  | Renderer                        | Emulator  | Platform     | Purpose                   |
| -- | ------------------------------- | --------- | ------------ | ------------------------- |
| 1  | **PCSX2 Software Renderer**     | PCSX2     | PC           | Accurate PS2 rendering    |
| 2  | **AetherSX2 Software Renderer** | AetherSX2 | Android      | Accurate PS2 rendering    |
| 3  | **Dolphin Software Renderer**   | Dolphin   | PC / Android | Accurate GC/Wii rendering |

---

# `Translation / Wrapper Layers`

| #  | Layer        | Converts                   | Platform        | Use Case                    |
| -- | ------------ | -------------------------- | --------------- | --------------------------- |
| 1  | **DXVK**     | Direct3D → Vulkan          | Linux / Windows | Game translation            |
| 2  | **MoltenVK** | Vulkan → Metal             | Apple           | Run Vulkan on Apple GPUs    |
| 3  | **ANGLE**    | OpenGL ES → DirectX/Vulkan | Cross           | Browser / app compatibility |

---

# `Compute + Graphics Hybrid APIs`

| #  | API               | Belongs To    | Platform       | Primary Use             |
| -- | ----------------- | ------------- | -------------- | ----------------------- |
| 1  | **CUDA**          | NVIDIA        | NVIDIA GPUs    | Compute + graphics      |
| 2  | **OpenCL**        | Khronos Group | Cross-platform | Parallel compute        |
| 3  | **DirectCompute** | Microsoft     | Windows        | GPU compute via DirectX |

---

## ecosystem summary

* **Khronos** → OpenGL, Vulkan, OpenGL ES, WebGL, OpenCL
* **Microsoft** → DirectX, DirectCompute, WARP
* **Apple** → Metal
* **Google** → SwiftShader, ANGLE (major contributor)
* **AMD** → Mantle
* **NVIDIA** → CUDA

---  