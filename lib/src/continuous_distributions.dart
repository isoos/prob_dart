class ContinuousDistibution {
  Function prob_dens_func;
  Function cumu_dens_func;

  ContinuousDistibution(this.prob_dens_func, this.cumu_dens_func) {}

  rvs({loc = 0, scale = 1, size = 1, random_state = null}) {}
  pdf(x, {loc = 0, scale = 1}) {
    return scale * prob_dens_func(x - loc);
  }

  logpdf(x, {loc = 0, scale = 1}) {}
  cdf(x, {loc = 0, scale = 1}) {}
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
