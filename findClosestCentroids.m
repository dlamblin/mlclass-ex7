function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Works in Octave.... can't we all agree on using the SAME DAMN TOOL
% fuck the image package and the rgb scatter plot error. That was not worked
% out or around. Even though you said you did.
% that cost me 4 of the 5 hours I had set aside to actually do this crap.
% the forums are still a horrible mess, I'd be totally and solely lucky if I
% found the right information there.
%for x=1:rows(X),
%  [mag, idx(x)] = min(
%    norm(
%      (ones(K,1) * X(x,:)) - centroids,
%      1, 'rows'
%    )
%  );
%end
for x = 1:rows(X),
  Kx = (ones(K,1) * X(x,:));
  vectDiff = Kx - centroids;
  vectDiffSq = vectDiff .* vectDiff;
  magnitudes = sum(vectDiffSq, 2);
  [mag, idx(x)] = min( magnitudes );
endfor

% =============================================================

end

