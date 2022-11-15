# prob_dart
A library of probability distributions for the Dart language.

current release: 0.1.0

## About
The goal for this project is to develop an in-depth libary that provides selections of continuous and discrete probability distributions. Each distribution class will provide methods such as return random variable, probability distribution function, cumulative distribution function, median, mean, variance, higher moments, percent point functions, etc.

The goal of this project is not only to provide a standard library of probabilistic and statistical tools for the Dart language, but to do so with a focus on ease of use. This libary is developed with the understanding that Python is among the most widely used languages for the implementation of mathematical, statistical, and data scientific utilities. Within this niche, [SciPy](https://scipy.org) stands out as one of Python's most utilized libraries as the provider of standard mathematical implementations. Similarly, we recognize the [GNU Scientific Library](https://www.gnu.org/software/gsl/)'s place as a C++ analog of SciPy.

With this acknowledgement, it is then our explicit statement of purpose to replicate the syntax of [scipy.stats](https://docs.scipy.org/doc/scipy/reference/stats.html) as accurately and comfortably as possible into the Dart language. This intention is to provide an easy transition from the immensely popular Python language, with which many Dart developers are likely familiar.

### Example of a direct implementation:
"prob_dart.norm" analogs "scipy.stats.norm" (as opposed to something like "prob_dart.gaussian")

### Example of an adapted implementation:
"prob_dart.norm.variance" analogs "scipy.stats.norm.var" ("var" is already reserved as a keyword for Dart)

## Contribute
This project is in its very first stages. If you'd like to contribute, please contact me. My email and personal site can be found on my profile page. Thanks!
