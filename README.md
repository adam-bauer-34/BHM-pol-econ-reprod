# Reproduction code package for "The Timing Versus Allocation Trade-off in Politically Constrained Climate Policies"

By: Adam Michael Bauer -- adammb4 [at] illinois [dot] edu

To cite our working paper that uses these codes: [Bauer, A. M., S. Hallegatte, F. McIsaac. *The Timing Versus Allocation Trade-off in Politically Constrained Climate Policies*. World Bank Policy Research Working Paper No. XXXXX, The World Bank, Washington DC, 2024.](https://www.ambauer.com) (LINK WILL BE UPDATED ONCE WORKING PAPER IS RELEASED!)

# General package overview

This set of codes reproduces all of the figures and analysis carried out in *The Timing Versus Allocation Trade-off in Politically Constrained Climate Policies*.

## The `codes` directory
Each code is assigned a number corresponding to the figure it creates. Here is the full table for the figures:

| Figure Desired | Code to Run | Notes|
|----------|----------|----------|
| Figure 1: Change in decarbonization date for each sector in each policy suite | `01_decabonization_date.sh` | - |
| Figure 2: Carbon price indices for politically and non-politically challenged groups in each policy suite | `02_carbon_price_indices.sh` | - |
| Figure 3: Breakdown of investment paths: value of emissions reductions, forgone opportunity effect, and long-term value of abatement capital | `03_path_breakdown.sh` | - |
| Figure 4: Optimal path of investment for every sector in each policy suite | `04_optimal_paths.sh`| - |
| Figure 5: Sectoral cost indices in each political economy policy suite | `05_sectoral_cost_indices.sh` | - |
| Figure 6: Aggregate cost implications of delay in each policy suite | `06_aggregate_cost.sh` | - |
| Figure 7: Relative policy cost after delaying each sector by 5 or 10 years, organized by their sectoral characteristics | `07_sectoral_characteristics.sh` | - |
| Figure 8: Paths of emissions and temperature rise for different policy suites | `08_timing_of_damages.sh` | - |

The are also two additional files:
- `run_all.sh` will run all the analytic calculations once, create all the figures, and then run the final files to print out all of the quoted calculations and tables in the paper. 
- `quoted_numbers.sh` will print all of the quoted figures and tables in the paper.

You should consider using the `.yml` file provided in this directory to establish a virtual python environment that should include all of the necessary dependencies for the code to run smoothly. I recommend using `conda` or its improved version, `mamba` to do this. 

### How to run the code

To run the codes, simply navigate to the `codes` directory and run the numbered code to recreate the desired figure. If you want to run the program `script_name`, you may need to execute:
```
    chmod +x script_name
```
to grant execution permissions (hence the `+x`) to the script you want to run.

As an example, if you want to recreate Figure 1 which shows our calibration of the marginal abatement cost curves, you would simply run:
```
./04_optimal_paths.sh
```
Notice the first bit of the above program name, `04_optimal_paths.sh`, matches the figure number we wanted to create, Figure 1.

All figures will be deposited into the `codes/figs` folder. To run indiviudal simulations, you can run any of the files in `simulation_mains`, and to make individual figures, you can run any file in the `figure_mains` folder. **Note:** You should run all scripts from the `codes` directory. As an example, let's say you want to run the `analytic_calcs_2base.py` file in the `ar6_17` calibration, but not save the output. Then in your command line, you'd use:
```
python simulation_mains/analytic_calcs_2base.py ar6_17 1
```

**Note:** You should be operating in the Python environment provided at the head directory. Without it, I make no guarantees any of this will run on your machine (and even then, well, mileage may vary...).

## Other notes

The hardware of the original author is a 2023 MacBook Pro with an M2 Pro Chip and 16 GB of RAM. 

Last edited: 6 November, 2024.

