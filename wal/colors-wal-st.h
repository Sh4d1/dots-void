const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0B2025", /* black   */
  [1] = "#A06A40", /* red     */
  [2] = "#7D807F", /* green   */
  [3] = "#C79163", /* yellow  */
  [4] = "#087687", /* blue    */
  [5] = "#527C84", /* magenta */
  [6] = "#508A96", /* cyan    */
  [7] = "#c8c6c4", /* white   */

  /* 8 bright colors */
  [8]  = "#8c8a89",  /* black   */
  [9]  = "#A06A40",  /* red     */
  [10] = "#7D807F", /* green   */
  [11] = "#C79163", /* yellow  */
  [12] = "#087687", /* blue    */
  [13] = "#527C84", /* magenta */
  [14] = "#508A96", /* cyan    */
  [15] = "#c8c6c4", /* white   */

  /* special colors */
  [256] = "#0B2025", /* background */
  [257] = "#c8c6c4", /* foreground */
  [258] = "#c8c6c4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
