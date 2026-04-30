      program iando
C======================================================================
C  Program: iando
C  Purpose: Demonstrate basic F77 input/output and FORMAT control
C======================================================================

C----------------------[ Variable Declarations ]-----------------------
      character*50 name      ! 字符串变量，长度50（固定长度）
      integer a, b, c, d     ! 整数变量
      real x, y              ! 实数变量（单精度）

C----------------------[ Assign Values ]-------------------------------
      a = 42                 ! 给整数赋值
      b = 1
      c = 2
      d = 3
      x = 3.14159            ! 浮点数
      y = 12345.678

C----------------------[ Input Section ]-------------------------------
      print *, 'What is your Name my friend?'
C     ↑ print * = 自动格式输出（会自动加空格）

      read '(A)', name
C     ↑ '(A)' = 按“整行字符串”读取（包括空格）
C     ↑ name 会被填满50字符（不足补空格）

C----------------------[ Output Name ]---------------------------------
      print *, 'My name is ', name
C     ↑ 会出现：
C       1) 行首多一个空格（Fortran传统）
C       2) name 后面很多空格（因为固定长度）

C----------------------[ Formatted Output ]----------------------------
      write(*,100)
C     ↑ 调用 format 100
C     ↑ 输出 "Hello     World"

      write(*,101) a
C     ↑ 用格式101输出整数 a

      write(*,102) x
C     ↑ 用格式102输出浮点数 x

      write(*,103) y
C     ↑ 用科学计数法输出 y

      write(*,104) b, c, d
C     ↑ 同时输出3个整数

C----------------------[ FORMAT Definitions ]--------------------------
 100  format('Hello',5X,'World')
C     ↑ 'Hello' + 5个空格 + 'World'

 101  format(I5)
C     ↑ 整数，占5列，右对齐 → "   42"

 102  format(F10.2)
C     ↑ 浮点数：
C       总宽10，小数2位 → "      3.14"

 103  format(E12.4)
C     ↑ 科学计数法：
C       总宽12，小数4位 → "  0.1235E+05"

 104  format(3I5)
C     ↑ 3个整数，每个占5列：
C       "    1    2    3"

C----------------------[ Program End ]---------------------------------
      stop                  ! 停止程序（F77常见写法）
      end program iando     ! 程序结束
