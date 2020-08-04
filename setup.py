from setuptools import setup

extras_require = {
    'shellcomplete': ['click_completion'],
    'tensorflow': [
        'tensorflow~=2.2.0',  # TensorFlow minor releases are as volatile as major
        'tensorflow-probability~=0.10.0',
    ],
    'torch': ['torch~=1.2'],
    'jax': ['jax~=0.1,>0.1.51', 'jaxlib~=0.1,>0.1.33'],
    'xmlio': ['uproot~=3.6'],  # Future proof against uproot4 API changes
    'minuit': ['iminuit~=1.4,>=1.4.3'],  # Use "name" keyword in MINUIT optimizer
}

setup(
    extras_require=extras_require
)
