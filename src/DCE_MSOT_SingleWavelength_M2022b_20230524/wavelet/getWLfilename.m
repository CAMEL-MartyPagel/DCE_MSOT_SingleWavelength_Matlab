function filename = getWLfilename(par)
% GETWLFILENAME  Get unique filename for set of inverted Wavelet matrices
%   filename = getWLfilename(par)
%
%   Parameters:
%   - par: Parameter struct containing all important properties for naming
%     * n:       Number of pixels
%     * r:       Radius of transducer
%     * c:       Speed of sound
%     * proj:    Number of projections (interpolated if > nb of elements)
%     * angles:  Number of interpolation angles (model based)
%     * timeres: Time resolution (model based)
%     * depth:   Decomposition depth (wavelet)
%     * Athres:  Threshold for model matrix elements (wavelet)
%     * Sthres:  Threshold of singular values (wavelet)
%     * thres:   Threshold of interesting values (wavelet)

filename = [par.Amat_dir ...
        '\wlinv_roi' num2str(par.roi*1e3,'%02d') ...
        '_n' num2str(par.n) ...
        '_r' num2str(par.r_sensor*1e3,'%.2f') ...
        '_c' num2str(round(par.c)) ...
        '_proj' num2str(par.proj) ...
        '_angles' num2str(par.n_angles) ...
        '_timeres' num2str(par.timeres) ...
        '_depth' num2str(par.depth_im) ...
        '_thres' num2str(par.thres,'%.3f') ...
        '_Athres' num2str(par.Athres,'%.3f') ...
        '_Sthres' num2str(par.Sthres,'%.3f') ...
        '.data'];
