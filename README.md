# figlet_font_printer
Figlet의 모든 폰트를 눈으로 확인해보기 위한 쉘 스크립트입니다. Mac OS 기준으로 간단하게 제작하였습니다.

## Usage
```
./figletFontPrinter.sh <string> <output_file> <options>
```

\<options\>를 생략하면 `-c` 옵션으로 설정됩니다.

### Example
```shell
./figletFontPrinter.sh HelloWorld output.txt
./figletFontPrinter.sh HelloWorld output.txt "-l"
```
