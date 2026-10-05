# Yen-Chieh Huang (黃彥傑)

## Contact

- Email: r13921038 [at] ntu.edu.tw
- [CV](https://lashhw.github.io/cv/yen-chieh-huang.pdf)
- [GitHub](https://github.com/lashhw)
- [LinkedIn](https://www.linkedin.com/in/lashhw)

## About

I am interested in **building efficient computing systems**, across machine learning systems, embedded systems, and hardware accelerators. Beyond that, I am also curious about **intelligence itself** — where it comes from, and what makes learning possible at all — which keeps me close to areas such as probabilistic modeling, information theory, and statistics.

I received my M.S. in [Electrical Engineering](https://web.ee.ntu.edu.tw/) from [National Taiwan University](https://www.ntu.edu.tw/) in 2026, where I was fortunate to be advised by [Prof. Pi-Cheng Hsiu](https://homepage.citi.sinica.edu.tw/pages/pchsiu/) and [Prof. Ming-Syan Chen](https://arbor.ee.ntu.edu.tw/~mschen/). Prior to that, I received my B.S. in [Computer Science](https://www.cs.nycu.edu.tw/) from [National Yang Ming Chiao Tung University](https://www.nycu.edu.tw/) in 2024, where I did my undergraduate research with [Prof. Tsung Tai Yeh](https://people.cs.nycu.edu.tw/~ttyeh/).

I will be available for full-time positions starting in early 2027, after completing my mandatory military service. More details can be found in my [CV](https://lashhw.github.io/cv/yen-chieh-huang.pdf). Feel free to reach out!


## Publications

Listed in reverse chronological order.

### KV Admission: Learning What to Write for Efficient Long-Context LLM Inference

**Authors:** Yen-Chieh Huang; Pi-Cheng Hsiu; Rui Fang; Ming-Syan Chen

**Venue:** To appear in Conference on Empirical Methods in Natural Language Processing (EMNLP)

**Year:** 2026

**Abstract:** Long-context LLM inference is bottlenecked by the quadratic attention complexity and linear Key-Value (KV) cache growth. Prior approaches mitigate this via post-hoc selection or eviction but overlook the root inefficiency: indiscriminate token admission. In this paper, we formalize KV management as a causal system of three primitives: KV Admission, Selection, and Eviction. We instantiate KV Admission via Write-Gated KV (WG-KV), a lightweight mechanism that learns to predict token utility before cache entry. By filtering out redundant states early to maintain a compact global cache alongside a sliding local cache, WG-KV significantly reduces memory usage and accelerates both prefill and decode phases. Our results demonstrate that learning what to write is a principled and practical recipe for efficient long-context inference. Code is available at https://github.com/EMCLab-Sinica/WG-KV.

- [Paper](https://doi.org/10.48550/arXiv.2512.17452)
- [Code](https://github.com/EMCLab-Sinica/WG-KV)

### Splitting Bottlenecks: Memory-Aware Neural Architecture Search for Multi-Branch TinyML

**Authors:** Chia-Yin Liu; Hashan Roshantha Mendis; Yen-Chieh Huang; Yi-Jung Chen; Pi-Cheng Hsiu

**Venue:** To appear in IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems (TCAD)

**Year:** 2026

**Abstract:** Bringing modern intelligence to tiny devices is challenging because severe on-chip memory limits fundamentally constrain the multi-branch architectures prevalent in modern neural networks. Tensor splitting is a common technique to reduce peak memory usage. However, existing splitting strategies designed for single-branch networks fail to effectively reduce memory from retained tensors in multi-branch networks, where operator scheduling dominates the peak and splitting effectiveness varies widely across architectures. We present DupNAS, a framework that jointly optimizes neural architecture and multi-branch tensor splitting to enable higher-accuracy architectures under tighter memory constraints. In multi-branch networks, combinatorial operator schedules induce a vast splitting configuration space, making direct integration with neural architecture search intractable. DupNAS addresses this challenge by aggressively shrinking the configuration space without sacrificing peak memory optimality, while incrementally exploring configurations that resolve memory bottlenecks. We evaluate DupNAS across diverse vision models and memory constraints, as well as deploy the resulting networks on STM32 microcontrollers. By substantially reducing peak memory, DupNAS improves accuracy by 5 percentage points on average over existing splitting strategies at comparable optimization time, while achieving superior on-device accuracy-latency trade-offs.

- [Video](https://youtu.be/o5U5cnoETkI)
- [Code](https://github.com/EMCLab-Sinica/DupNAS-AE)

### AQB8: Energy-Efficient Ray Tracing Accelerator through Multi-Level Quantization

**Authors:** Yen-Chieh Huang; Chen-Pin Yang; Tsung Tai Yeh

**Venue:** International Symposium on Computer Architecture (ISCA)

**Year:** 2025

**Abstract:** Ray tracing (RT) is a rendering technique that produces high-fidelity images by simulating how light physically interacts with objects in a scene. This realism comes at a high computational and memory cost, largely driven by the need to find numerous ray-object intersections. To accelerate this process, scenes are typically structured using bounding volume hierarchy (BVH) trees, where objects are grouped within bounding boxes to minimize the number of required intersection tests. Specialized hardware, known as RT accelerators, accelerates BVH processing to boost computational speed, yet memory traffic persists as a major bottleneck, largely due to the bandwidth consumed by standard 32-bit floating-point (FP32) bounding boxes. Consequently, previous work has aimed to reduce memory traffic by compressing these boxes into low-bit (e.g., 8-bit) representations. However, existing compression techniques typically require decompressing bounding boxes back to FP32 for intersection tests, thus failing to eliminate the computational burden and energy cost associated with complex FP32 arithmetic during BVH traversal. This work introduces AQB8, an RT accelerator designed to operate on a quantized BVH tree constructed using a novel multi-level quantization technique. This approach enables RT to operate directly on low-bit integers using simpler, area-efficient hardware units, thereby drastically reducing the need for FP32 arithmetic during BVH traversal while mitigating overheads associated with reduced precision. As a result, across various scenes, AQB8 achieves a 70% reduction in DRAM accesses, a 49% reduction in energy consumption, a 27% hardware area reduction, and a 1.82x performance speedup over modern GPU RT accelerators. Our code is publicly available at https://github.com/nycu-caslab/AQB8.

- [Paper](https://doi.org/10.1145/3695053.3731104)
- [Code](https://github.com/nycu-caslab/AQB8/tree/RTL)

## Projects

Listed in reverse chronological order.

### WG-KV: Learned KV Admission for Efficient Long-Context LLM Inference

**Context:** Master's Thesis, NTU

**Year:** 2026

Built the training and serving stack behind our EMNLP 2026 paper, which introduces KV Admission alongside KV Selection and Eviction. Trained a lightweight per-head write gate by self-distillation from the frozen full-attention model, then built a dual-cache paged manager and sparse attention kernels over the resulting ragged caches, turning theoretical sparsity into 2.6–4.2x prefill and 1.6–2.6x decode speedups.

**Related publication:** KV Admission: Learning What to Write for Efficient Long-Context LLM Inference

- [Paper](https://doi.org/10.48550/arXiv.2512.17452)
- [Code](https://github.com/EMCLab-Sinica/WG-KV)

### STM32 Deployment and Benchmarking Toolchain for Multi-Branch TinyML

**Context:** Research Project, Embedded and Mobile Computing Lab (Prof. Pi-Cheng Hsiu), Academia Sinica

**Year:** 2026

Built the deployment and benchmarking toolchain for our TCAD 2026 paper on DupNAS, a framework that jointly optimizes neural architecture and multi-branch tensor splitting to fit vision models onto resource-constrained microcontrollers. The toolchain turns the searched networks into real STM32 measurements via tile-by-tile ONNX rewriting and deployment through TensorFlow Lite Micro and STM32Cube.AI.

**Related publication:** Splitting Bottlenecks: Memory-Aware Neural Architecture Search for Multi-Branch TinyML

- [Code](https://github.com/EMCLab-Sinica/DupNAS-AE)

### Linux Kernel Programming: Syscall Interception and Page-Table Manipulation

**Context:** Course Team Project, Advanced Topics in Software Systems Design and Implementation (Prof. Shih-Wei Li), NTU

**Year:** 2025

Built a loadable kernel module that hides itself from the module list, masquerades process names, and filters syscalls per-process by hooking the syscall table. Also added a custom ARM64 Linux syscall that exposes a process's page tables to user space, and built a `userfaultfd` handler that walks the page-table hierarchy to translate addresses and install page-table entries on demand.

- [Write-up 1](https://github.com/lashhw/ssdi-hw/blob/main/hw1/write-up.md)
- [Write-up 2](https://github.com/lashhw/ssdi-hw/blob/main/hw2/write-up.md)
- [Code](https://github.com/lashhw/ssdi-hw)

### AQB8 Ray Tracing Accelerator: From Algorithm to FPGA and ASIC

**Context:** Research Project, Computer Architecture System Laboratory (Prof. Tsung Tai Yeh), NYCU

**Year:** 2025

Led the algorithm and hardware design behind our ISCA 2025 paper on AQB8, a ray tracing (RT) accelerator that replaces FP32 with low-bit integer arithmetic during BVH traversal. Prototyped it on a Xilinx Zynq FPGA with Vitis HLS, Vivado, and PetaLinux, then took the same design through a TSMC 40nm standard-cell ASIC flow with Catapult HLS, Design Compiler, QuestaSim, and PrimePower, for 49% lower energy and 27% less area than modern GPU RT accelerators.

**Related publication:** AQB8: Energy-Efficient Ray Tracing Accelerator through Multi-Level Quantization

- [Paper](https://doi.org/10.1145/3695053.3731104)
- [Code](https://github.com/nycu-caslab/AQB8/tree/RTL)

### Multimodal Perception and Comprehension of Corner Cases in Autonomous Driving

**Context:** Course Team Project, Deep Learning for Computer Vision (Prof. Yu-Chiang Frank Wang), NTU

**Year:** 2024

Led the team to 1st place (out of 12 teams) on multimodal understanding of autonomous driving corner cases. Enhanced LLaVA with LoRA fine-tuning plus cross-attention layers that fuse segmentation, instance, depth, and ViT features, enabling the model to reason over complex driving scenarios. Also built a self-critiquing augmentation loop where a frozen LLaVA compares the fine-tuned model's predictions with the ground truth and turns each missed detail into a new QA pair targeting the model's blind spots.

- [Poster](https://github.com/lashhw/DLCV-Fall-2024-Final-1-uber603/blob/main/poster.pdf)
- [Code](https://github.com/lashhw/DLCV-Fall-2024-Final-1-uber603)

### Dataflow Graph Extraction in LLVM for High-Level Synthesis

**Context:** Course Project, Advanced Compiler Design (Prof. Shih-Wei Liao), NTU

**Year:** 2024

Built a custom LLVM compiler pass that turns C++ functions into dataflow graphs, making explicit the computational dependencies that hardware designers rely on to pipeline a design. Working on LLVM's intermediate representation rather than the syntax tree lets the pass compose with existing optimizations such as dead code elimination (DCE) and common subexpression elimination (CSE).

- [Report](https://github.com/lashhw/ntu-advanced-compiler-hw4/blob/main/report.pdf)
- [Code](https://github.com/lashhw/ntu-advanced-compiler-hw4)

### Design and Implementation of a RISC CPU: From RTL to GDSII

**Context:** Course Project, Integrated Circuit Design Laboratory (Prof. Chen-Yi Lee), NYCU

**Year:** 2024

Independently designed a 16-bit single-core CPU with a MIPS-like ISA and AXI4 interfaces for instruction and data memory, then carried it through the entire ASIC design flow from RTL to GDSII, covering logic synthesis, floorplanning, automatic place & route (APR), and final layout generation. Verified with RTL, gate-level, and post-layout simulation, plus STA, LVS, and DRC using industry-standard CAD tools.

**Note:** Source code is not publicly available due to course policy.

### Domain-Specific Accelerator for MLP Inference on an FPGA SoC

**Context:** Course Project, Microprocessor Systems: Principles and Implementation (Prof. Chun-Jen Tsai), NYCU

**Year:** 2023

Designed a domain-specific accelerator that offloads handwritten-digit MLP inference from an FPU-less soft-core CPU on a Xilinx Artix-7 FPGA. Reordered the computation to keep the floating-point multiply-adder saturated, replicated the datapath for data parallelism, and used BRAM-backed FIFOs to overlap host transfers with computation, resulting in a combined 309× speedup over the software-only baseline.

- [Report](https://github.com/lashhw/mspi-dsa/blob/main/report.pdf)
- [Code](https://github.com/lashhw/mspi-dsa)

### Parallel Ray Tracer with SIMD, OpenMP, MPI, and CUDA

**Context:** Course Team Project, Parallel Programming (Prof. Yi-Ping You), NYCU

**Year:** 2023

Built a ray tracer from scratch, then parallelized it with SIMD intrinsics, OpenMP, MPI, and CUDA, guided by a loop-level analysis of where parallelism actually pays off across pixels, samples, bounces, objects, and vector components. Tuned the CUDA implementation further with coalesced memory access and a split-kernel design that lowers register pressure to improve occupancy.

- [Slides](https://github.com/lashhw/parallel-ray-tracer/blob/main/slides.pdf)
- [Report](https://github.com/lashhw/parallel-ray-tracer/blob/main/report.pdf)
- [Code](https://github.com/lashhw/parallel-ray-tracer)

### Memory-Efficient Attention Operator for TensorFlow Lite Micro

**Context:** Summer Internship, Embedded and Mobile Computing Lab (Prof. Pi-Cheng Hsiu), Academia Sinica

**Year:** 2023

Investigated the challenges of deploying Transformer models on microcontrollers (TinyML) through TensorFlow Lite for Microcontrollers (TFLM), and identified the Multi-Head Attention layer as the critical SRAM bottleneck during on-device inference. Developed and implemented a custom TFLM operator that reduces peak SRAM requirement by over 90% (from 17MB to ~1MB) for the MobileViT-XXS model.

- [Code](https://github.com/lashhw/tflm-transformer)

### Mixed-Precision Ray Tracing for Mobile Platforms

**Context:** Research Project, NYCU and MediaTek Advanced Research Center (MARC)

**Year:** 2023

Collaboration with MediaTek on reducing the memory bandwidth demand of ray tracing (RT) accelerators on mobile platforms. Built a ray tracer supporting physically-based rendering and parallel BVH traversal, then designed a novel mixed-precision traversal algorithm validated via SystemC TLM simulation, achieving 20% memory savings for key RT data structures.

**Note:** Source code is not publicly available due to NDA restrictions.

### Channel, Global, and Detailed Routers for VLSI

**Context:** Course Project, The Applications of Algorithms on Routing Problems (Prof. Yih-Lang Li), NYCU

**Year:** 2023

Implemented three routers spanning the VLSI routing flow: a greedy channel router, a global router driven by negotiation-based rip-up and reroute, and a detailed router that turns routability into a CNF formula solved by a MaxSAT solver. Together they trace how routing scales, from complete search on small grids to heuristics that handle the ISPD 2008 contest benchmarks.

- [Code](https://github.com/lashhw/routing-lab)

### Linux API Sandbox and Instruction-Level Debugger

**Context:** Course Project, Advanced Programming in the UNIX Environment (Prof. Chun-Ying Huang), NYCU

**Year:** 2023

Built two low-level Linux tools from scratch. The first enforces an API blacklist on unmodified binaries, preloading a shared library that hijacks `__libc_start_main()` and parses the ELF to rewrite GOT entries, so file, network, and shell calls can be interposed. The second is a ptrace-based debugger with on-the-fly disassembly, gdb-style `int3` breakpoints, and a time-travel command backed by `fork()` snapshots.

- [Code](https://github.com/lashhw/unixprog-hw)

### Mini-Pascal Compiler: From Source Code to JVM Bytecode

**Context:** Course Project, Introduction to Compiler Design (Prof. Wuu Yang), NYCU

**Year:** 2022

Independently designed a compiler for Mini-Pascal, a Pascal subset, covering a flex-based scanner, a bison LALR parser that builds the AST, semantic analysis over a scoped symbol table with static type checking, and a code generator emitting Jasmin assembly that is further assembled into JVM bytecode. The resulting compiler correctly compiles and runs non-trivial programs like quicksort and recursive Fibonacci.

- [Code](https://github.com/lashhw/mini-pascal-compiler)

### Real-time Parking Vacancy Forecasting System

**Context:** Course Team Project, Introduction to Artificial Intelligence (Prof. Wen-Chih Peng), NYCU

**Year:** 2022

Led the team to Best Project (out of 249 students) with a system that forecasts vacancy at New Taipei City's public parking lots in real time. Designed the full architecture covering automated data collection, time-series model training, and a Vue frontend with interactive forecast charts. The LSTM model achieved low prediction error, with serverless inference on Azure Functions fast enough for live requests.

- [Slides](https://github.com/lashhw/AI-Final-Project/blob/main/Presentation_Team07.pdf)
- [Video](https://www.youtube.com/watch?v=wCParWOSb5I)
- [Code](https://github.com/lashhw/AI-Final-Project)

### Object Detection of Water-Holding Containers for Dengue Mosquito Control

**Context:** Course Project, Introduction to Deep Learning and Applications (Prof. Hung-Hsun Chen), NYCU

**Year:** 2021

Ranked 1st (out of 27 teams) on an AIdea object detection challenge for locating water-holding containers, the breeding sites of dengue-carrying mosquitoes. Fine-tuned COCO-pretrained YOLOv5 detectors and synthesized extra training images by pasting cut-out objects onto backgrounds, countering the severe class imbalance in the provided data.

- [Report](https://github.com/lashhw/Intro-to-DL-Final-Project/blob/main/report.pdf)
- [Code](https://github.com/lashhw/Intro-to-DL-Final-Project)

### Web-Based Search Tool for College Admission Requirements

**Context:** Side Project

**Year:** 2019

Built a web tool that lets Taiwanese high school students look up which entrance-exam subjects and score thresholds each university department counts toward admission, consolidating information that is otherwise scattered across hundreds of pages on the official admission committees' sites. Since 2019, it has served 64,000 page views from 24,000 unique visitors.

- [Website](https://applytool.netlify.app/)
- [Code](https://github.com/lashhw/applytool)

## Misc

Away from work, I listen mostly to classical music, especially chamber music and orchestral works from the Romantics through the early twentieth century. I'm also drawn to exploring the fundamental nature of things, from the inner workings of computers to questions about intelligence, consciousness, and the meaning of life.
