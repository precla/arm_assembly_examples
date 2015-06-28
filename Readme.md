[![License](https://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)

# arm_assembly_examples

This is a collection of small, (hopefully) working, examples of some simple programs I write while practising in arm assembly. More will be added as I do more practising.

## Usage:
1. Install [Keil µVision](https://www.keil.com/demo/eval/arm.htm) (v5.15 or above, but it should also work on 5.xx).
2. Create new µVision project and set device: LPC2104. Do not include start-up code!
3. Copy existing file from this repo into project source group.
4. Build project with: Project - Build target, or just press F7.
5. Debug - Start/Stop Debug Session (or press CTRL+F5) & have fun debugging.

Note: If you're going to load multiple files into your project, than you should comment lines 1& 3 ( `GLOBAL Reset_Handler` & `ENTRY`). Reason is that you only need one `ENTRY` point and one definition of `RESET_HANLDER`. Otherwise you might get some errors while trying to build your project.

### License:
- MIT
