This is a fork of the LiveCodeBench repo: https://github.com/LiveCodeBench/LiveCodeBench

I've replaced the uv installer with requirements.txt and made an install script, so that the code works with more recent module versions:

- PyTorch 2.9.0
- Transformers 4.57.3
- vLLM 0.11.2

The venv is compatible and was tested with CUDA 13.0.

Run `install.sh` to create the venv and populate it with modules.

After completing the installation, you will have relatively new Python modules installed, and the code will run on new GPUs such as the Blackwell chip used by the NVIDIA DGX Spark.

Use `run.sh` as a headless runner script.
