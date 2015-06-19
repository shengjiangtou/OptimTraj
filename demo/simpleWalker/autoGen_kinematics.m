function [p1,p2,dp1,dp2] = autoGen_kinematics(q1,q2,dq1,dq2,d,l)
%AUTOGEN_KINEMATICS
%    [P1,P2,DP1,DP2] = AUTOGEN_KINEMATICS(Q1,Q2,DQ1,DQ2,D,L)

%    This function was generated by the Symbolic Math Toolbox version 6.2.
%    19-Jun-2015 13:10:11

t2 = sin(q1);
t3 = cos(q1);
t4 = l.*t3;
t5 = t4-d.*t3;
t6 = d.*t2;
t7 = t6-l.*t2;
p1 = [t7;t5];
if nargout > 1
    t8 = cos(q2);
    t9 = sin(q2);
    p2 = [d.*t9-l.*t2;t4-d.*t8];
end
if nargout > 2
    dp1 = [-dq1.*t5;dq1.*t7];
end
if nargout > 3
    dp2 = [d.*dq2.*t8-dq1.*l.*t3;d.*dq2.*t9-dq1.*l.*t2];
end
