#!/usr/bin/env bash
# Setup script: creates Part 05 & Part 06 chapter stub files.
# Run once from the repository root: bash create-chapter-stubs.sh

BASE="wiki/chapters"

# Part 05 – Divided We Face Our Sins
mkdir -p "$BASE/Part-05-Divided-We-Face-Our-Sins"
echo "## Chapter 33: Divide and Conquer"             > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-33-Divide-And-Conquer.md"
echo "## Chapter 34: When the Fire Goes Out"         > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-34-When-The-Fire-Goes-Out.md"
echo "## Chapter 35: Where Brilliance Burns Itself Out" > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-35-Where-Brilliance-Burns-Itself-Out.md"
echo "## Chapter 36: Toss a Coin to Your King"       > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-36-Toss-A-Coin-To-Your-King.md"
echo "## Chapter 37: Break Through It All"           > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-37-Break-Through-It-All.md"
echo "## Chapter 38: A Throne Built On Envy"         > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-38-A-Throne-Built-On-Envy.md"
echo "## Chapter 39: Desire Has No Mercy"            > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-39-Desire-Has-No-Mercy.md"
echo "## Chapter 40: The Proudest Sin"               > "$BASE/Part-05-Divided-We-Face-Our-Sins/Chapter-40-The-Proudest-Sin.md"

# Part 06 – Divided We Find Our Virtue
mkdir -p "$BASE/Part-06-Divided-We-Find-Our-Virtue"
echo "## Chapter 33: Divide and Conquer"             > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-33-Divide-And-Conquer.md"
echo "## Chapter 34: Not One Day but Day One"        > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-34-Not-One-Day-But-Day-One.md"
echo "## Chapter 35: The Bridge Between Goals"       > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-35-The-Bridge-Between-Goals.md"
echo "## Chapter 36: The Heart of the Land"          > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-36-The-Heart-Of-The-Land.md"
echo "## Chapter 37: The Battle Within"              > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-37-The-Battle-Within.md"
echo "## Chapter 38: I Have No Enemies"              > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-38-I-Have-No-Enemies.md"
echo "## Chapter 39: Power Tends to Corrupt"         > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-39-Power-Tends-To-Corrupt.md"
echo "## Chapter 40: The Humblest Virtue"            > "$BASE/Part-06-Divided-We-Find-Our-Virtue/Chapter-40-The-Humblest-Virtue.md"

echo "Done! Chapter stubs created in $BASE."
echo "You can delete this script after running it."
