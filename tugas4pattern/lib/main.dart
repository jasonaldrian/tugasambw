import 'dart:io';

void latihan(int x) {
  if (x % 2 == 1) {
    int mid = (x / 2).ceil();
    int count = mid;
    int count2 = mid;
    int count3 = 0;
    for (int i = 0; i < x + 1; i++) {
      if (i < mid) {
        for (int j = 1; j < x + 1; j++) {
          if (j <= count2 && j >= count) {
            if (count3 == 0) {
              stdout.write(i + 1);
              count3++;
            } else {
              stdout.write(" ");
              count3 = 0;
            }
          } else {
            stdout.write("*");
          }
        }
        if (i < mid - 2) {
          count -= 1;
          count2 += 1;
          count3 = 0;
        } else if (i < mid - 1) {
          count -= 1;
          count2 += 1;
          count3 = 0;
        } else if (i < mid) {
          count += 1;
          count2 -= 1;
          count3 = 0;
        }
        print("");
      } else if (i > mid) {
        for (int j = 1; j < x + 1; j++) {
          if (j <= count2 && j >= count) {
            if (count3 == 0) {
              stdout.write(i);
              count3++;
            } else {
              stdout.write(" ");
              count3 = 0;
            }
          } else {
            stdout.write("*");
          }
        }
        count += 1;
        count2 -= 1;
        count3 = 0;
        print("");
      }
    }
  } else {
    int count = 1;
    var count2 = x;
    int countk = 0;
    for (int i = x; i > 0; i--) {
      for (int j = 0; j < x; j++) {
        if (j < i) {
          stdout.write(count);
          count++;
          if (count >= 10) {
            count = 1;
          }
          if (count >= x + 1) {
            count = 1;
          }
        } else {
          stdout.write(" ");
        }
      }
      for (int k = 0; k < x; k++) {
        if (x <= 8) {
          if (k >= countk) {
            stdout.write(count2);
            count2--;
            if (count2 <= 0) {
              count2 = x;
            }
          } else {
            stdout.write(" ");
          }
        } else {
          if (k >= countk) {
            if (count2 > 9) {
              count2 = 9;
            }
            stdout.write(count2);
            count2--;
            if (count2 <= 0) {
              count2 = x;
            }
          } else {
            stdout.write(" ");
          }
        }
      }
      countk++;
      print("");
    }
  }
}

void main(List<String> arguments) {
  while (true) {
    stdout.write("Masukkan angka : ");
    String? input = stdin.readLineSync();
    latihan(int.parse(input.toString()));
  }

}
