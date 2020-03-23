
#' calculate sea level rise based on how much ice melted from sea ice
#' @param volume km^3
#' @param  % of sea ice above water
#'
#' @return the amount of sea level rise caused by volume of melted sea ice
#'
#' @examples
#' sea_level_rise(ice_vol = 420, above = 0.55)


sle <- function(volume, percent){

  #Calculating based on one value for volume
  if(length(ice_vol) > 1){
    return()
  }

  #Above input should be a decimal with a value between 0 and 1
  if(percent < 0 | percent > 1){
    return()
  }


  #volume in km^3
  vol_cal = volume* percent

  #calculate the mass for the above water ice
  #mass (GT) = volume(km^3) * density (GT/km^3)
  calc_mass = vol_cal * 0.9167

  #361.8 Gt of ice is equivalent to 394.67 km3 ice
  #sea level rise
  sea_level = calc_mass * (1/361.8)

  return(sea_level)
}
