
mkdir output\mlib

javac -p lib;../using-module/output/mlib -sourcepath test  test\edu\chinna\kadhira\UtilTest.java -d output\classes

jar -p lib;../using-module/output/mlib -c -f output/mlib/junit-module.jar -C output\classes .

rmdir /Q /S output\classes

jar -f output/mlib/junit-module.jar -d

java -p output/mlib;lib;../using-module/output/mlib --add-modules junit.module -m org.junit.platform.console/org.junit.platform.console.ConsoleLauncher --scan-modules

rmdir /Q /S output\mlib

rmdir /Q /S ..\using-module\output\mlib

rmdir /Q /S ..\consumer-module\output\mlib

cd ..