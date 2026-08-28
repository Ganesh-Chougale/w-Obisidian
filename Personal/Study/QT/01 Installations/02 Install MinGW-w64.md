## 1. Install MinGW-w64
```cmd
winget install --id=MSYS2.MSYS2 -e
```

Now we install the **MinGW-w64 GCC toolchain inside MSYS2**.

### 2. Open MSYS2 UCRT64

From the Start Menu, open:

**MSYS2 UCRT64**

Then run:

```bash
pacman -Syu
```

If it asks you to close/restart the terminal after updating, **do that**, reopen **MSYS2 UCRT64**, and run:

```bash
pacman -Syu
```

Then install the C/C++ compiler:

```bash
pacman -S --needed mingw-w64-ucrt-x86_64-gcc
```

When it asks:

```text
Proceed with installation? [Y/n]
```

enter:

```text
Y
```

### 3. Verify inside MSYS2 UCRT64

Run:

```bash
g++ --version
```

and:

```bash
gcc --version
```

You should now get version information.

**Important:** At this stage, `g++` may work inside **MSYS2 UCRT64** but still not work in normal PowerShell. That's okay. We'll handle the Windows PATH after confirming the compiler works.

Send me the output of:

```bash
g++ --version
```

after the installation.
