#include <stdio.h>
#include <stdlib.h>

#define MAX_LINE_LENGTH 31

int main(void)
{
  FILE *f;
  char line[MAX_LINE_LENGTH] = {0};
  f = fopen("./day3/day3.txt", "r");
  if (f == NULL)
    exit(0);

  // These need to be longs for the mult at the end, else there is int overflow
  long p1, p2, p3, p4, p5, c1, c2, c3, c4, c5, toggle;

  p1 = p2 = p3 = p4 = p5 = c1 = c2 = c3 = c4 = c5 = toggle = 0;

  while (fgets(line, MAX_LINE_LENGTH+1, f)) {
    if (line[0] == '\n') { continue; }
    if (line[p1%MAX_LINE_LENGTH] == '#') {
      c1++;
    } 
    if (line[p2%MAX_LINE_LENGTH] == '#') {
      c2++;
    } 
    if (line[p3%MAX_LINE_LENGTH] == '#') {
      c3++;
    } 
    if (line[p4%MAX_LINE_LENGTH] == '#') {
      c4++;
    }
    if (toggle % 2 == 0) {
      if (line[p5%MAX_LINE_LENGTH] == '#') {
        c5++;
      }
      p5++;
    }
    p1++;
    p2 += 3;
    p3 += 5;
    p4 += 7;
    toggle++;
    // printf("%s end\n", line);
  }

  printf("%ld\n", c2);
  printf("%ld\n", c1*c2*c3*c4*c5);
  if(fclose(f))
    return 1;

  return 0;
}

