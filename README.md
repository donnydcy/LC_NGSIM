# LC_NGSIM
lane change trajectories extracted from NGSIM
![fig1](https://github.com/donnydcy/LC_NGSIM/blob/master/docs/fig/scheme_2.png)


## **This dataset comes with the paper below**
```
@inproceedings{dong2017lane,
  title={Lane-change social behavior generator for autonomous driving car by non-parametric regression in Reproducing Kernel Hilbert Space},
  author={Dong, Chiyu and Zhang, Yihuan and Dolan, John M},
  booktitle={Intelligent Robots and Systems (IROS), 2017 IEEE/RSJ International Conference on},
  pages={4489--4494},
  year={2017},
  organization={IEEE}
}
```

[Paper is accepted by IROS 2017](https://github.com/donnydcy/LC_NGSIM/blob/master/docs/Dong%2C%20Zhang%2C%20Dolan%20-%202017%20-%20RKHSBehavior_draft.pdf)

A related Ramp Merging Control paper is published in IV 2017, 
[here is the accepted version](https://github.com/donnydcy/LC_NGSIM/blob/master/docs/Dong%2C%20Dolan%2C%20Litkouh%20-%202017%20-%20RampMering%20accept.pdf
)
Ramp merge data and full link to IEEE Xplore will be updated soon.
To see the final version: 

```
@inproceedings{dong2017intention,
  title={Intention estimation for ramp merging control in autonomous driving},
  author={Dong, Chiyu and Dolan, John M and Litkouhi, Bakhtiar},
  booktitle={Intelligent Vehicles Symposium (IV), 2017 IEEE},
  pages={1584--1589},
  year={2017},
  organization={IEEE}
}

```

The original NGSIM program:
```
@article{
author={Alexiadis,Vassili and Colyar,James and Halkias,John and Hranac,Rob and McHale,Gene},
year={2004},
month={08},
title={The Next Generation Simulation Program},
journal={Institute of Transportation Engineers.ITE Journal},
volume={74},
number={8},
pages={22-26},
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
