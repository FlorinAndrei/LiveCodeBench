python3.12 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install --upgrade wheel setuptools pipdeptree
pip install torch==2.9.0 torchvision==0.24.0 torchaudio==2.9.0 --index-url https://download.pytorch.org/whl/cu128
pip install -r requirements.txt
