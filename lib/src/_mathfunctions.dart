import 'dart:math' show exp, pow;

double erf(double x) {
  double t = 1 / (1 + 0.5 * x.abs());
  double y = t *
      exp(-pow(x, 2) -
          1.26551223 +
          1.00002368 * t +
          0.37409196 * pow(t, 2) +
          0.09678418 * pow(t, 3) -
          0.18628806 * pow(t, 4) +
          0.27886807 * pow(t, 5) -
          1.13520398 * pow(t, 6) +
          1.48851587 * pow(t, 7) -
          0.82215223 * pow(t, 8) +
          0.17087277 * pow(t, 9));
  double z;
  if (x >= 0) {
    z = 1 - y;
  } else {
    z = t - y;
  }
  return z;
}
