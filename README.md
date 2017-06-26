# LC_NGSIM
lane change trajectories extracted from NGSIM
![fig1](https://github.com/donnydcy/LC_NGSIM/blob/master/docs/fig/scheme_2.png)

## **To use this dataset, please cite this paper, thank you!**
```
@INPROCEEDINGS{Dong2017_3,
   Author = {C. Dong, Y. Zhang and J. Dolan},
   Title = {Lane-Change Social Behavioral Generator for Autonomous Driving Car by Non-parametric Regression in Reproducing Kernel Hilbert Space.},
   Booktitle = {Proc. of The International Conference on Intelligent Robots and Systems (IROS)},
   Year = {2017},
   organization={IEEE}
}
```

[Paper is accepted by IROS 2017](https://github.com/donnydcy/LC_NGSIM/blob/master/docs/Dong%2C%20Zhang%2C%20Dolan%20-%202017%20-%20RKHSBehavior_draft.pdf)

A related Ramp Merging Control paper is published in IV 2017, [here is the accepted version](https://github.com/donnydcy/LC_NGSIM/blob/master/docs/Dong%2C%20Dolan%2C%20Litkouh%20-%202017%20-%20RampMering%20accept.pdf)
Ramp merge data will be uploaded soon. 
To see the final version: 

```
@INPROCEEDINGS{Dong2017_2,
   Author = {C. Dong, J.Dolan and B. Litkouhi$},
   Title = {Intention Estimation For Ramp Merging Control In Autonomous Driving.},
   Booktitle = {Proc. of The Intelligent Vehicles Symposium (IV)},
   Year = {2017},
   organization={IEEE}
}
```

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
