function [w, xSampled] = get_samples_skew_gauss(alpha,z,Mean,Prec)
    %z is a standard/raw gaussian noise (d by s)
    % alpha is a column vector (d by 1)
    assert( size(alpha,1) == size(z,1) )
    w = abs(randn(1,size(z,2)));
    cholPrec = chol(Prec);
    xSampled = Mean + cholPrec\z + w.*alpha;
end
