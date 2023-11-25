import tensorflow as tf

def test_tensorflow_mps_support():
    # List all available devices and check for Apple M series chip
    devices = tf.config.list_physical_devices()
    mps_device = any("METAL" in str(device).upper() for device in devices)

    # Print the result
    if mps_device:
        print("Success: TensorFlow supports MPS acceleration on Apple M series chip.")
    else:
        print("Failure: TensorFlow does not support MPS acceleration on Apple M series chip.")

if __name__ == "__main__":
    test_tensorflow_mps_support()
