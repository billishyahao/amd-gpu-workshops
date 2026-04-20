export VLLM_ROCM_USE_AITER=1
export HF_HUB_CACHE=/models
MODEL=openai/gpt-oss-120b
TP=8
vllm serve $MODEL \
  --tensor-parallel-size=$TP \
  --gpu-memory-utilization 0.9 \
  --block-size=64  \
  --tool-call-parser openai \
  --api-key openclaw
