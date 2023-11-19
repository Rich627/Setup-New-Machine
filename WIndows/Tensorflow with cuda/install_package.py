# install_packages.py
import yaml
import subprocess

def install_packages_from_yaml(file_path):
    with open(file_path, 'r') as file:
        packages = yaml.safe_load(file)
        if 'packages' in packages:
            for package in packages['packages']:
                subprocess.call(['pip', 'install', package])

if __name__ == "__main__":
    yaml_file = 'requirements.yml'  
    install_packages_from_yaml(yaml_file)

