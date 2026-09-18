# GPU Capacity Planning

GPU capacity depends on more than parameter count.

Conceptually:

`VRAM = model weights + KV cache + runtime overhead + workspace memory`

Inspect hardware with:

```bash
nvidia-smi
nvidia-smi --query-gpu=name,memory.total,memory.used,memory.free,utilization.gpu --format=csv
```

Measure idle and active workloads. Validate estimates using the exact model, runtime, context, and concurrency you intend to operate.