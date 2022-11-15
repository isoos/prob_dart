import '_distributions.dart';
import '_mathfunctions.dart' show erf;
import 'dart:math' show pi, sqrt, exp, sqrt2, Random, log;

class norm extends ContinuousDistibution {
  double norm_pdf(double x, double sigma) {
    double u = x / sigma.abs();
    double p = (1 / (sqrt(2 * pi) * sigma.abs())) * exp(-u * u / 2);
    return p;
  }

  double norm_cdf(double x, double sigma) {
    double y = 0.5 * (1 + erf(x / (sigma * sqrt2)));
    return y;
  }

  double norm_rvs(double sigma) {
    var a = Random();
    var b = Random();
    double x, y;
    double r2;
    do {
      x = -1 + 2 * a.nextDouble();
      y = -1 + 2 * b.nextDouble();
      r2 = x * x + y * y;
    } while (r2 > 1.0 || r2 == 0);

    double z = sigma * y * sqrt(-2.0 * log(r2) / r2);
    return z;
  }

  norm(norm_pdf, norm_cdf, norm_rvs) : super(norm_pdf, norm_cdf, norm_rvs);
}
