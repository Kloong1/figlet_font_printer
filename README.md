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

## 주의
OS마다 Figlet의 default font path가 다르므로 수정이 필요할 수 있습니다.

```shell
vi figletFontPrinter.sh
```

```sh
#!/bin/bash

FONT_PATH="이 곳에 자신의 OS에 해당하는 figlet의 default font path 입력"
...
```
