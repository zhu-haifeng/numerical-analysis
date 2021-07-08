 function [x ] = gauss_jordon(A,b)
 
	%�ж�һ��A�Ƿ����
    [m1,m2] = size(A);
    if m1 ~= m2
        error('ϵ������A���Ƿ���')
        return    
    end
    siz = m1;
    [n1,n2] = size(b);
    
    %�ж�һ��b�Ƿ����
    if n2 == siz && n1==1
        b = b';
    elseif n1==1 && n2 == siz
        b = b;
    else
        error('b�Ĵ�С��A����ƥ��')
    end
    
    if rank(A)~=rank([A,b])
        error('A�ľ�����Ⱥ����������Ȳ���ͬ�����̲�����Ψһ�Ľ�');
        return;
    end
    %��A����
    A = [A,b];
    x = zeros(siz,1);
    
    for i = 1:siz-1
        a_ii = abs(A(i,i));
        [max_v,max_id_relative] = max(abs(A(i:siz)));
        max_id = i + max_id_relative - 1;
        if max_id ~=i 
            A([i,max_id],:) = A([max_id,i],:);
        end
        %��Ԫ
        for j = i+1:siz
            A(j,:) = A(j,:) - (A(j,i)/A(i,i)) * A(i,:);
        end
    end
    
    x(siz) = A(siz,siz+1)/A(siz,siz);
    for i = siz-1:-1:1
        x(i) = (A(i,siz+1) - A(i,i+1:siz)*x(i+1:siz)) / A(i,i);
    end
    
return 
        
    
    
    