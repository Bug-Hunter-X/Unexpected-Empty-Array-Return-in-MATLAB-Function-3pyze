function result = myFunctionCorrected(input)
  % Some code here...
  if someCondition
    result = someValue;
  else
    result = 0; % Return a scalar 0 instead of an empty array
  end
  % More code here...
end

% Example of corrected behavior
testInput = [1,2,3];
output = myFunctionCorrected(testInput);
size(output) % This now returns 1x1 even if someCondition is false.