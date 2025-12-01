if [ $# -lt 1 ]; then
	echo "Usage:"
	echo
	echo "Run a HuggingFace model (replace model name with your choice):"
	echo "bash $0 --model google/gemma-3-4b-it"
	echo
	echo "Run a local model with a HuggingFace template (replace model name and path with your choices):"
	echo "bash $0 --model google/gemma-3-4b-it --local_model_path local_gemma4"
	echo
	exit 1
fi

rm -rf output stdout.log stderr.log
source .venv/bin/activate
# https://github.com/triton-lang/triton/issues/8539
TRITON_PTXAS_PATH=`which ptxas` python -m lcb_runner.runner.main --gpu_memory_utilization 0.65 --scenario codegeneration --evaluate --release_version release_v1 $@ 1>stdout.log 2>stderr.log &
