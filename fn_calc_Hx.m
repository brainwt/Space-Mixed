function [Hx, Hx_N ]= fn_calc_Hx(x_set)
    px = x_set;
    idx=px==0; px(idx)=10^-10;
        for m=1:size(px,1)
            % 소수점 1자리로 반올림 했을때 0인 경우
            %     Zc(m,1) = sum( round(px(m,:),2) ~= 0 );
            Hx(m,1) = -sum( px(m,:).*log2(px(m,:)) , 2);
        end
        
        % normalization is not recommeded 
        % if norm_opt == 1
            % normalized
            % Hx_N =Hx/max(Hx);            
        % else
            % normalized
            Hx_N =Hx;            
        % end
end