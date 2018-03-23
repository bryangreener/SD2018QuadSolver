############## determinant calc spike ##################

source("C:/Users/paulp/Desktop/DataScience/WMU/CS4900/JKK_Consultant/QuadSolver/Spikes/determinant_calc_spike/determinant_spike.r")

test.determinant_spike <- function() {
  
  checkEquals(length(qsolver_trial(1,-3,2)), 2)
  checkIdentical(qsolver_trial(1,-2,1), 1)
  checkIdentical(qsolver_trial(1,-2,1), 0)
}

track <- tracker() ## initialize tracking object

track$init() ; ## initialize the tracker

res_qsolver_trial <- inspect(qsolver_trial(1,-3,2), track = track); ## execute the test function and track

resTrack <- track$getTrackInfo(); ## get the result of Code Inspector (a list)

print(resTrack)
