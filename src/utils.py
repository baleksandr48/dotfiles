from builtins import OSError
from pathlib import Path
import os
from shutil import copyfile
import errno


def get_project_root() -> Path:
    return Path(__file__).parent.parent


def exist_in_home_dir(dotfile: str) -> bool:
    return os.path.isfile(os.path.join(os.path.expanduser('~'), dotfile))


def backup_dotfile(dotfile: str, timestamp: str):
    destination_dir = os.path.join(get_project_root(), 'backups', timestamp)
    os.makedirs(destination_dir, exist_ok=True)
    source = os.path.join(os.path.expanduser('~'), dotfile)
    destination_file = os.path.join(destination_dir, dotfile)
    copyfile(source, destination_file, follow_symlinks=True)


def create_symlink(dotfile: str):
    source_file = os.path.join(get_project_root(), 'dotfiles', dotfile)
    destination_file = os.path.join(os.path.expanduser('~'), dotfile)
    try:
        os.symlink(source_file, destination_file)
    except OSError as e:
        if e.errno == errno.EEXIST:
            os.remove(destination_file)
            os.symlink(source_file, destination_file)
        else:
            raise e
