function result = myFunction(input)
  % Some code here...
  if someCondition
    result = someValue;
  else
    result = []; % Empty array, this is the bug!
  end
  % More code here...
end

% Example of unexpected behavior
testInput = [1,2,3];
output = myFunction(testInput);
size(output) % This returns 0x0 if someCondition is false, unexpected behavior

%Correct code
function result = myFunctionCorrected(input)
  % Some code here...
  if someCondition
    result = someValue;
  else
    result = 0; % return a scalar value, not empty
  end
  % More code here...
end

testInput = [1,2,3];
output = myFunctionCorrected(testInput);
size(output)