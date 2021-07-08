function [x_end,X,status]=newton(fun,alpha,epsilon1,epsilon2,N)%��������ֵ�����ȡ�����
    syms x%���ű���
    df = diff(fun(x));%������
    
    status = 'succeed';
    X = [];
    if abs(fun(alpha)) < epsilon1
        x_end = alpha;
    end
    
    if abs(subs(df,alpha)) < epsilon2
        status = 'error';
        return
    end
    
    X(1) = alpha - fun(alpha)/subs(df,alpha);

    for i = 2:N
        X(i) = X(i-1) -  fun(X(i-1))/subs(df,X(i-1));
%         disp(double(X(i)))
        
        if abs(fun(X(i))) < epsilon1
            x_end = X(i);
%             disp('1-----------')
%             disp(X(i))
            return
        end
        
        if abs(subs(df,X(i))) < epsilon2
            status = 'error';
            return
        end
    end
    
    
    status = 'error';
    x_end = X(length(X));

%     disp('2-----------')
%     disp(x_end)
end




