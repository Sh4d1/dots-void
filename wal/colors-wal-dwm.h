static const char norm_fg[] = "#c8c6c4";
static const char norm_bg[] = "#0B2025";
static const char norm_border[] = "#8c8a89";

static const char sel_fg[] = "#c8c6c4";
static const char sel_bg[] = "#7D807F";
static const char sel_border[] = "#c8c6c4";

static const char urg_fg[] = "#c8c6c4";
static const char urg_bg[] = "#A06A40";
static const char urg_border[] = "#A06A40";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
