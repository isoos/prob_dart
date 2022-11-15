class ContinuousDistibution {
  /*
  This is a generic distribution class for continuous distributions.
  */
  // Are these implementation-specific callbacks?
  // You could create a function signatures for them, e.g.
  // typedef ContinuousPdf = double Function(double input);
  // and then use
  // ContinuousPdf _continuousPdf;
  // note: it is better to restrict most fields to private and open them up later - if needed.
  // also: it is better to follow dart naming conventions: https://dart.dev/guides/language/effective-dart/style
  Function continuous_pdf;
  Function continuous_cdf;
  Function continuous_rvs;

  ContinuousDistibution(
      this.continuous_pdf, this.continuous_cdf, this.continuous_rvs);
  rvs({loc = 0, scale = 1, size = 1}) {}

  pdf(x, {loc = 0, scale = 1}) {
    return scale * continuous_pdf(x - loc);
  }

  logpdf(x, {loc = 0, scale = 1}) {}
  cdf(x, {loc = 0, scale = 1}) {
    return scale * continuous_cdf(x - loc);
  }

  logcdf(x, {loc = 0, scale = 1}) {}
  sf(x, {loc = 0, scale = 1}) {}
  logsf(x, {loc = 0, scale = 1}) {}
  ppf(q, {loc = 0, scale = 1}) {}
  isf(q, {loc = 0, scale = 1}) {}
  moment(order, {loc = 0, scale = 1}) {}
  stats({loc = 0, scale = 1, moments = 'mv'}) {}
  entropy({loc = 0, scale = 1}) {}
  fit(data) {}
  expect() {}
  median({loc = 0, scale = 1}) {}
  mean({loc = 0, scale = 1}) {}
  variance({loc = 0, scale = 1}) {}
  std({loc = 0, scale = 1}) {}
  interval(confidence, {loc = 0, scale = 1}) {}
}

class DiscreteDistribution {
  /*
  This is a generic distribution class for discrete distributions.
  */
  Function prob_mass_func;
  Function continuous_cdf;

  DiscreteDistribution(this.prob_mass_func, this.continuous_cdf) {}
  rvs(mu, {loc = 0, size = 1}) {}

  pmf(k, mu, {loc = 0}) {
    return prob_mass_func(k - loc);
  }

  logpmf(k, mu, {loc = 0}) {}

  cdf(k, mu, {loc = 0}) {
    return continuous_cdf();
  }

  logcdf(k, mu, {loc = 0}) {}

  sf(k, mu, {loc = 0}) {}
  logsf(k, mu, {loc = 0}) {}
  ppf(q, mu, {loc = 0}) {}
  isf(q, mu, {loc = 0}) {}
  stats(mu, {loc = 0, moments = 'mv'}) {}
  entropy(mu, {loc = 0}) {}
  expect() {}
  median(mu, {loc = 0}) {}
  mean(mu, {loc = 0}) {}
  variance(mu, {loc = 0}) {}
  std(mu, {loc = 0}) {}
  interval(confidence, mu, {loc = 0}) {}
}
