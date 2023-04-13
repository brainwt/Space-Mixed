

function x_set = fn_rand_X(n_class, n_sample, dicim)

    for m=1:n_class
        x(:,m) = round(randi([0 10],n_sample,1)/10, dicim );
    end
    %     x(:,1) = round(randi([0 10],n,1)/10, dicim );
    %     x(:,2) = round(randi([0 10],n,1)/10, dicim );
    %     x(:,3) = round(randi([0 10],n,1)/10, dicim );
        
    %     x =  round( x./sum(x,2), dicim_2);
        x =  round( x./sum(x,2), dicim);
        x = sort(x,2,'descend');
        
    for m = 1:n_class
       n_list = [n_class:-1:1];
       x = sortrows(x,n_list(m),'descend');
    end
    
    %     x = sortrows(x,3,'descend');
    %     x = sortrows(x,2,'descend');
    %     x = sortrows(x,1,'descend');
    
    x_set=unique(x,'rows','stable');
    x_set(sum(x_set,2)~=1,:)=[];

end






