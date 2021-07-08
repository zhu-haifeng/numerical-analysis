 function [x ] = gauss_jordon(A,b)
 
	%判断一下A是否合理
    [m1,m2] = size(A);
    if m1 ~= m2
        error('系数矩阵A不是方阵')
        return    
    end
    siz = m1;
    [n1,n2] = size(b);
    
    %判断一下b是否合理
    if n2 == siz && n1==1
        b = b';
    elseif n1==1 && n2 == siz
        b = b;
    else
        error('b的大小与A不相匹配')
    end
    
    if rank(A)~=rank([A,b])
        error('A的矩阵的秩和增广矩阵的秩不相同，方程不存在唯一的解');
        return;
    end
    %将A增广
    A = [A,b];
    x = zeros(siz,1);
    
    for i = 1:siz-1
        a_ii = abs(A(i,i));
        [max_v,max_id_relative] = max(abs(A(i:siz)));
        max_id = i + max_id_relative - 1;
        if max_id ~=i 
            A([i,max_id],:) = A([max_id,i],:);
        end
        %消元
        for j = i+1:siz
            A(j,:) = A(j,:) - (A(j,i)/A(i,i)) * A(i,:);
        end
    end
    
    x(siz) = A(siz,siz+1)/A(siz,siz);
    for i = siz-1:-1:1
        x(i) = (A(i,siz+1) - A(i,i+1:siz)*x(i+1:siz)) / A(i,i);
    end
    
return 
        
    
    
    