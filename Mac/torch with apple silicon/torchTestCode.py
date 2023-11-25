import torch

def test_torch_mps_support():
    mps_available = torch.backends.mps.is_available()

    if mps_available:
        print("MPS is available.")
    else:
        print("MPS is not available.")

if __name__ == "__main__":
    test_torch_mps_support()