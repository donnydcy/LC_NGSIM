# LC_NGSIM
lane change trajectories extracted from NGSIM

## Source Code.
For source code, click [here](https://github.com/donnydcy/LC_NGSIM/blob/master/src/README.md)

## Data description
### nlc_data_5zones.mat 
- nlc_data: *cell, contains 870 sequences of none-lane-change scenarios.*
  * veh_s: *subjcet vehicle*
    + **x**: *Lateral position (m)*
    + **y**: *Longitudinal position (m)*
    + **len**: *Vehicle length (m)*
    + **wid**: *Vehicle width (m)*
    + **v**: *Vehicle speed (m/s)*
    + **a**: *Vehicle acceleration (m/s^2)*
  * veh_f: *front vehicle in current lane*
  * veh_r: *rear vehicle in current lane*
  * veh_ft: *front vehicle in target lane*
  * veh_rt: *rear vehicle in target lane*
  * veh_st: *overlap vehicle in target lane*         
### lc_data_20s_withpoints.mat
- lc_data: *Same structure as nlc_data*
- points: *array, n row, 2 column, [start, end]*
