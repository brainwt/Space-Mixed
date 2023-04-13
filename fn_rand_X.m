

function x_set = fn_rand_X(n_class, n_sample, dicim)

    for m=1:n_class
        x(:,m) = round(randi([0 10],n_sample,1)/10, dicim );
    end
        x =  round( x./sum(x,2), dicim);
        x = sort(x,2,'descend');
        
    for m = 1:n_class
       n_list = [n_class:-1:1];
       x = sortrows(x,n_list(m),'descend');
    end
    
    x_set=unique(x,'rows','stable');
    x_set(sum(x_set,2)~=1,:)=[];

end






