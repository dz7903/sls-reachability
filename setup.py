from setuptools import setup, find_packages

setup(
    name="sls_reachability",
    packages=find_packages(),
    install_requires=[
        "z3-solver"
    ],
    entry_points={
        "console_scripts": [
            "start-script = sls_reachability.lia_star_solver:main",
        ],
    },
)