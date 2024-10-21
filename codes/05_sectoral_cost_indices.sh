#!/bin/bash

echo 'Carrying out model simulations...'
python simulation_mains/analytic_calcs_2base.py ar6_17 1
python simulation_mains/analytic_calcs_3base.py ar6_17 1
python simulation_mains/analytic calcs_4base.py ar6_17 1

echo 'Making figure...'
python figure_mains/pfig5_seccostinds.py ar6_17 1 