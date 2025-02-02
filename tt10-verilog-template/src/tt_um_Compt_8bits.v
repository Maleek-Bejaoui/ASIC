`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2025 23:42:11
// Design Name: 
// Module Name: tt_um_Compt_8bits
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tt_um_Compt_8bits(
        input wire clk ,
        input wire rst ,
        output wire [7:0] cmpt 
    );
    
    
    reg [7:0] r_cmpt  ;
    always@(posedge clk)
     begin 
        if (rst) 
            begin 
                r_cmpt=0;
            end
        else 
            begin 
        r_cmpt = r_cmpt+1;
             if (r_cmpt>=255 ) begin 
                r_cmpt = 0;
            end   
       end 
     end    
    assign cmpt = r_cmpt;
endmodule
