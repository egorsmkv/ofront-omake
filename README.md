# Ofront+ and OMake

This repository shows how to use **Ofront+** and **OMake** together to build Oberon/Component Pascal programs.

This repository uses **Linux x64** architecture for programs, but you can change it by overriding the **OTARGET**
variable in files `compile_modules.sh`, `ofrontplus_init.sh`, and `omake_init.sh`.

## Requirements

* C toolchain
* bash
* git
* make

## Initialization

Clone the repository:

```
git clone https://github.com/egorsmkv/ofront-omake.git
cd ofront-omake/
```

Next, build **Ofront+** and **OMake**.

This command will create a `compiled` folder (here will be locating your compiled programs) and download Ofront+ and
OMake and build them.

```
make prepare OfrontPlus OMake
```

## Usage

This repository has two programs: `HelloWorld` (in Oberon-2) and `Square` (Component Pascal). If you want to add another
program, then create a file of your program inside the `src` folder and then add it to variables **MODULES** and
**MODULE_NAMES** in the `compile_modules.sh` file.

Just run this command:

```
make compile_modules
```

## Thanks

* to all **Ofront+'s contributors**
* to **Stewart Greenhill** for **OMake**
