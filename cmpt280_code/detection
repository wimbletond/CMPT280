# Hash Detection System
# Author: Shweta Sharma
# This detects if a file was changed using SHA-256 hash

import hashlib

# Make a hash from a file
def make_hash(filename):
    # Open the file and read it
    file = open(filename, 'rb')
    content = file.read()
    file.close()

    # Make SHA-256 hash
    hash_result = hashlib.sha256(content).hexdigest()
    return hash_result


# Check if two files are the same
def check_files(file1, file2):
    print("=" * 50)
    print("    File Tampering Detection System")
    print("=" * 50)
    print()

    # Get hash for first file
    print("Checking first file:", file1)
    hash1 = make_hash(file1)
    print("Hash:", hash1)
    print()

    # Get hash for second file
    print("Checking second file:", file2)
    hash2 = make_hash(file2)
    print("Hash:", hash2)
    print()

    # Compare the hashes
    print("=" * 50)
    if hash1 == hash2:
        print("RESULT: Files are the SAME")
        print("No tampering detected!")
    else:
        print("RESULT: Files are DIFFERENT")
        print("WARNING: File has been tampered with!")
    print("=" * 50)


# Run the checker
print("\nStarting detection...\n")
  
original_file = "bank_statement.txt"
tampered_file = "bank_statement_tampered.txt"

# For demo, we compare the file with itself first to show the system works
print("TEST 1: Comparing file with itself (should be same)")
check_files(original_file, original_file)

print("\n" + "=" * 50)
# ------------------ TEST 2 -----------------------------
print("\nTEST 2: Comparing original vs tampered file")
check_files(original_file, tampered_file)


