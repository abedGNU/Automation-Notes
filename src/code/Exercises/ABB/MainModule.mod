MODULE MainModule

    CONST jointtarget homePos:=[[0,0,0,0,90,0],[0,9E9,9E9,9E9,9E9,9E9]];


    CONST robtarget pos1:=[[940,-600,500],[7.96406E-9,-1.38131E-7,-1,-1.64709E-7],[-1,0,-1,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    CONST robtarget pos2:=[[800,500,400],[4.09193E-9,4.64768E-8,1,1.56834E-7],[-1,0,-1,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];


    PROC main()
        !
        MoveAbsJ homePos,v1000,z50,tool0;
        !
        MoveL Offs(pos1,0,0,300),v1000,z30,tool0\WObj:=wobj0;
        WaitTime 0.2;
        MoveL pos1,v1000,fine,tool0\WObj:=wobj0;
        WaitTime 0.2;
        MoveL Offs(pos1,0,0,300),v1000,z30,tool0\WObj:=wobj0;
        !
        MoveL Offs(pos1,0,0,300),v1000,z30,tool0\WObj:=wobj0;
        WaitTime 0.2;
        MoveL pos2,v1000,fine,tool0\WObj:=wobj0;
        WaitTime 0.2;
        MoveL Offs(pos1,0,0,300),v1000,z30,tool0\WObj:=wobj0;
        !
        MoveAbsJ homePos,v1000,z50,tool0;
        !
        Stop;
    ENDPROC

ENDMODULE