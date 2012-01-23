% minimum distance from nose of fly to ellipse of any other fly within 20
% degrees 
function [data,units] = compute_dnose2ell_angle_min20to20(trx,n)

flies = trx.exp2flies{n};
nflies = numel(flies);
data = cell(1,nflies);

for i1 = 1:nflies,
  fly1 = flies(i1);
  % access closestfly to ensure that dnose2ell_angle_min20to20 is computed
  trx(fly1).closestfly_nose2ell_angle_min20to20;
  data{i1} = trx(fly1).dnose2ell_angle_min20to20;
end
units = parseunits('mm');
