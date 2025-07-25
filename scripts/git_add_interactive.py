import subprocess
import re

def get_git_status():
    result = subprocess.run(['git', 'status', '--porcelain'], stdout=subprocess.PIPE, text=True)
    tracked, untracked = [], []

    for line in result.stdout.splitlines():
        status = line[:2]
        filepath = line[3:].strip()
        if re.match(r'^.[MD]', status):  # Tracked changes not staged
            tracked.append(filepath)
        elif status == '??':
            untracked.append(filepath)

    return tracked, untracked

def display_files(files, title):
    print(f"\n{title}")
    for idx, file in enumerate(files, start=1):
        print(f"{idx}. {file}")

def stage_files(files, selected_indexes):
    for idx in selected_indexes:
        file = files[idx - 1]
        subprocess.run(['git', 'add', file])
        print(f"Staged: {file}")

def prompt_for_untracked(untracked):
    if not untracked:
        print("No untracked files found.")
        return

    display_files(untracked, "Untracked files:")
    user_input = input("Enter numbers of untracked files to stage or 'a' to stage all: ").strip().lower()

    if user_input == 'a':
        selected_untracked = set(range(1, len(untracked) + 1))
    else:
        try:
            selected_untracked = {int(num) for num in user_input.split() if 1 <= int(num) <= len(untracked)}
        except ValueError:
            print("Invalid input. Skipping untracked files.")
            selected_untracked = set()

    stage_files(untracked, sorted(selected_untracked))

def main():
    tracked, untracked = get_git_status()

    if not tracked and not untracked:
        print("Nothing to stage.")
        return

    if not tracked:
        prompt_for_untracked(untracked)
        return

    # Show tracked files
    display_files(tracked, "Unstaged tracked files:")

    input_str = input("\nEnter numbers (e.g. '1 2'), 't' for all tracked, 'u' to choose untracked, 'a' for all: ").strip().lower()
    parts = input_str.split()

    # Flags
    stage_all = 'a' in parts
    stage_all_tracked = 't' in parts
    show_untracked = 'u' in parts

    # Remove non-numeric parts
    numbers = [p for p in parts if p.isdigit()]
    selected_tracked = set()

    if stage_all:
        selected_tracked = set(range(1, len(tracked) + 1))
        selected_untracked = set(range(1, len(untracked) + 1))
    elif stage_all_tracked:
        selected_tracked = set(range(1, len(tracked) + 1))
        selected_untracked = set()
    else:
        try:
            selected_tracked = {int(num) for num in numbers if 1 <= int(num) <= len(tracked)}
            selected_untracked = set()
        except ValueError:
            print("Invalid input.")
            return

    # Stage tracked
    stage_files(tracked, sorted(selected_tracked))

    # Handle untracked if needed
    if (show_untracked or stage_all) and untracked:
        if not stage_all:
            prompt_for_untracked(untracked)
        else:
            stage_files(untracked, sorted(selected_untracked))
    elif show_untracked and not untracked:
        print("No untracked files found.")

if __name__ == "__main__":
    main()

