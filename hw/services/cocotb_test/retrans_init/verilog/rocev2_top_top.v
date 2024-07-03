`timescale 1 ns / 1 ps 

module rocev2_top_top (

    input  wire             clk,
    input  wire             rst,

    input  wire [511:0] s_axis_rx_data_tdata,
    input  wire [63:0]  s_axis_rx_data_tkeep,
    // input wire [63:0] s_axis_rx_data_tstrb,
    input  wire         s_axis_rx_data_tlast,
    input  wire         s_axis_rx_data_tvalid,
    output wire         s_axis_rx_data_tready,

    output wire [511:0] m_axis_tx_data_tdata,
    output wire [63:0]  m_axis_tx_data_tkeep,
    output wire [63:0]  m_axis_tx_data_tstrb,
    // output wire [0:0] m_axis_tx_data_tlast,
    output wire         m_axis_tx_data_tvalid,
    input  wire         m_axis_tx_data_tready,

    input  wire [239:0] s_axis_sq_meta_tdata,
    input  wire         s_axis_sq_meta_tvalid,
    output wire         s_axis_sq_meta_tready,

    output wire [39:0]  m_axis_rx_ack_meta_tdata,
    // output wire         m_axis_rx_ack_meta_tvalid,
    // input  wire         m_axis_rx_ack_meta_tready,

    output wire [95:0]  m_axis_mem_write_cmd_tdata,
    output wire         m_axis_mem_write_cmd_tvalid,
    input  wire         m_axis_mem_write_cmd_tready,
    
    output wire [95:0]  m_axis_mem_read_cmd_tdata,
    output wire         m_axis_mem_read_cmd_tvalid,
    input  wire         m_axis_mem_read_cmd_tready,
    
    output wire [511:0] m_axis_mem_write_data_tdata,
    output wire [63:0]  m_axis_mem_write_data_tkeep,
    output wire [63:0]  m_axis_mem_write_data_tstrb,
    // output wire [0:0] m_axis_mem_write_data_tlast,
    output wire         m_axis_mem_write_data_tvalid,
    input  wire         m_axis_mem_write_data_tready,

    input  wire [511:0] s_axis_mem_read_data_tdata,
    input  wire [63:0]  s_axis_mem_read_data_tkeep,
    // input wire [63:0] s_axis_mem_read_data_tstrb,
    input  wire [0:0]   s_axis_mem_read_data_tlast,
    input  wire         s_axis_mem_read_data_tvalid,
    output wire         s_axis_mem_read_data_tready,

    input  wire [183:0] s_axis_qp_interface_tdata,
    input  wire         s_axis_qp_interface_tvalid,
    output wire         s_axis_qp_interface_tready,

    input  wire [183:0] s_axis_qp_conn_interface_tdata,
    input  wire         s_axis_qp_conn_interface_tvalid,
    output wire         s_axis_qp_conn_interface_tready,

    // output wire [87:0]  m_axis_dbg_tdata,
    // output wire         m_axis_dbg_tvalid,
    // input  wire         m_axis_dbg_tready,

    input wire [127:0] local_ip_address
    // output wire [31:0] regCrcDropPkgCount,
    // output wire [31:0] regInvalidPsnDropCount,
    // output wire [31:0] regRetransCount,
    // output wire [31:0] regIbvCountRx,
    // output wire [31:0] regIbvCountTx,
    // output wire  regCrcDropPkgCount_ap_vld,
    // output wire  regIbvCountRx_ap_vld,
    // output wire  regInvalidPsnDropCount_ap_vld,
    // output wire  regRetransCount_ap_vld,
    // output wire  regIbvCountTx_ap_vld,

);

    wire rst_n;
    assign rst_n = ~rst;

    rocev2_top rocev2_top_inst(
        .ap_clk  (clk  ),
        .ap_rst_n(rst_n),
        .s_axis_rx_data_TDATA(s_axis_rx_data_tdata),
        .s_axis_rx_data_TKEEP(s_axis_rx_data_tkeep),
        //.s_axis_rx_data_TSTRB(s_axis_rx_data_tstrb),
        .s_axis_rx_data_TLAST(s_axis_rx_data_tlast),
        .s_axis_rx_data_TVALID(s_axis_rx_data_tvalid),
        .s_axis_rx_data_TREADY(s_axis_rx_data_tready),

        .m_axis_tx_data_TDATA(m_axis_tx_data_tdata),
        .m_axis_tx_data_TKEEP(m_axis_tx_data_tkeep),
        .m_axis_tx_data_TSTRB(m_axis_tx_data_tstrb),
        .m_axis_tx_data_TLAST(m_axis_tx_data_tlast),
        .m_axis_tx_data_TVALID(m_axis_tx_data_tvalid),
        .m_axis_tx_data_TREADY(m_axis_tx_data_tready),

        .s_axis_sq_meta_TDATA(s_axis_sq_meta_tdata),
        .s_axis_sq_meta_TVALID(s_axis_sq_meta_tvalid),
        .s_axis_sq_meta_TREADY(s_axis_sq_meta_tready),


        .m_axis_rx_ack_meta_TDATA(m_axis_rx_ack_meta_tdata),
        // .m_axis_rx_ack_meta_TVALID(m_axis_rx_ack_meta_tvalid),
        // .m_axis_rx_ack_meta_TREADY(m_axis_rx_ack_meta_tready),

        .m_axis_mem_write_cmd_TDATA(m_axis_mem_write_cmd_tdata),
        .m_axis_mem_write_cmd_TVALID(m_axis_mem_write_cmd_tvalid),
        .m_axis_mem_write_cmd_TREADY(m_axis_mem_write_cmd_tready),

        .m_axis_mem_read_cmd_TDATA(m_axis_mem_read_cmd_tdata),
        .m_axis_mem_read_cmd_TVALID(m_axis_mem_read_cmd_tvalid),
        .m_axis_mem_read_cmd_TREADY(m_axis_mem_read_cmd_tready),

        .m_axis_mem_write_data_TDATA(m_axis_mem_write_data_tdata),
        .m_axis_mem_write_data_TKEEP(m_axis_mem_write_data_tkeep),
        .m_axis_mem_write_data_TSTRB(m_axis_mem_write_data_tstrb),
        //.m_axis_mem_write_data_TLAST(m_axis_mem_write_data_tlast),
        .m_axis_mem_write_data_TVALID(m_axis_mem_write_data_tvalid),
        .m_axis_mem_write_data_TREADY(m_axis_mem_write_data_tready),

        .s_axis_mem_read_data_TDATA(s_axis_mem_read_data_tdata),
        .s_axis_mem_read_data_TKEEP(s_axis_mem_read_data_tkeep),
        //.s_axis_mem_read_data_TSTRB(s_axis_mem_read_data_tstrb),
        .s_axis_mem_read_data_TLAST(s_axis_mem_read_data_tlast),
        .s_axis_mem_read_data_TVALID(s_axis_mem_read_data_tvalid),
        .s_axis_mem_read_data_TREADY(s_axis_mem_read_data_tready),

        .s_axis_qp_interface_TDATA(s_axis_qp_interface_tdata),
        .s_axis_qp_interface_TVALID(s_axis_qp_interface_tvalid),
        .s_axis_qp_interface_TREADY(s_axis_qp_interface_tready),

        .s_axis_qp_conn_interface_TDATA(s_axis_qp_conn_interface_tdata),
        .s_axis_qp_conn_interface_TVALID(s_axis_qp_conn_interface_tvalid),
        .s_axis_qp_conn_interface_TREADY(s_axis_qp_conn_interface_tready),

        // .m_axis_dbg_TDATA(m_axis_dbg_tdata),
        // .m_axis_dbg_TVALID(m_axis_dbg_tvalid),
        // .m_axis_dbg_TREADY(m_axis_dbg_tready),

        .local_ip_address(local_ip_address)//
        // .regCrcDropPkgCount(regCrcDropPkgCount),
        // .regInvalidPsnDropCount(regInvalidPsnDropCount),
        // .regRetransCount(regRetransCount),
        // .regIbvCountRx(regIbvCountRx),
        // .regIbvCountTx(regIbvCountTx),
        
        // .regCrcDropPkgCount_ap_vld(regCrcDropPkgCount_ap_vld),
        // .regIbvCountRx_ap_vld(regIbvCountRx_ap_vld),
        // .regInvalidPsnDropCount_ap_vld(regInvalidPsnDropCount_ap_vld),
        // .regRetransCount_ap_vld(regRetransCount_ap_vld),
        // .regIbvCountTx_ap_vld(regIbvCountTx_ap_vld)
    );
endmodule // rocev2_top_top