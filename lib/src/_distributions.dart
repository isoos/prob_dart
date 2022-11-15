class ContinuousDistibution {
  /*
  This is a generic distribution class for continuous distributions.
  */
  Function prob_dens_func;
  Function cumu_dens_func;
  Function continuous_rvs;

  ContinuousDistibution(
      this.prob_dens_func, this.cumu_dens_func, this.continuous_rvs);
  rvs({loc = 0, scale = 1, size = 1}) {}

  pdf(x, {loc = 0, scale = 1}) {
    return scale * prob_dens_func(x - loc);
  }

  logpdf(x, {loc = 0, scale = 1}) {}
  cdf(x, {loc = 0, scale = 1}) {
    return scale * cumu_dens_func(x - loc);
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
  expect() {} // Come back to this
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
  Function cumu_dens_func;

  DiscreteDistribution(this.prob_mass_func, this.cumu_dens_func) {}
  rvs(mu, {loc = 0, size = 1}) {}

  pmf(k, mu, {loc = 0}) {
    return prob_mass_func(k - loc);
  }

  logpmf(k, mu, {loc = 0}) {}

  cdf(k, mu, {loc = 0}) {
    return cumu_dens_func();
  }

  logcdf(k, mu, {loc = 0}) {}

  sf(k, mu, {loc = 0}) {}
  logsf(k, mu, {loc = 0}) {}
  ppf(q, mu, {loc = 0}) {}
  isf(q, mu, {loc = 0}) {}
  stats(mu, {loc = 0, moments = 'mv'}) {}
  entropy(mu, {loc = 0}) {}
  expect() {} // Come back to this
  median(mu, {loc = 0}) {}
  mean(mu, {loc = 0}) {}
  variance(mu, {loc = 0}) {}
  std(mu, {loc = 0}) {}
  interval(confidence, mu, {loc = 0}) {}
}
