# -cinema-management
*Đối tượng sử dụng: Nhân viên rạp chiếu phim
*Các yêu cầu cơ bản:  
      -Quản lý về phim, lịch chiếu, phòng chiếu 
           + Thêm/xóa/cập nhật thông tin về phim 
           + Sắp xếp phim theo thể loại hoặc thứ tự bảng chữ cái 
           + Tìm kiếm phim theo một số thông tin cho sẵn 
           +Thêm/xóa/cập nhật lịch chiếu của phim 
           +Tìm kiếm lịch chiếu theo yêu cầu về thời gian 
           +Kiểm tra trạng thái ghế ngồi của phòng chiếu 
      -Quản lý về thông tin khách hàng: 
           +Thêm/xóa/cập nhật thông tin về khách hàng 
           +Tạo và quản lý thẻ thành viên cho khách hàng khi khách có nhu cầu 
           +Tìm kiếm thông tin khách hàng 
      -Quản lý về thông tin nhân viên: 
          +Thêm/xóa/cập nhật thông tin về nhân viên 
          +Sắp xếp nhân viên theo ca làm 
      -Quản lý về vé: 
          +Đặt/In/Hủy vé  
          +Thống kê số lượng vé đã bán ra 
*Yêu cầu cụ thể:
           Y1: Tạo CSDL Quản lý rạp chiếu phim và nhập liệu cho bảng: 
                   +Nắm bắt được cách thức hoạt động của hệ thống 
                   +Phân tích, thiết kế CSDL phù hợp 
                   +Tạo lập các bản và nắm rõ mối quan hệ giữa chúng 
                   +Nhập liệu để thực hiện các yêu cầu sau 
           Y2: Đáp ứng các yêu cầu chức năng: 
             Y2.1: Quản lý về phim, lịch chiếu, phòng chiếu 
                Về phim: 
                   +Nhân viên có thể thêm các phim mới và thông tin liên quan tới chúng như: Tên phim, đạo diễn, thể loại, thời lượng,… Đồng thời có thể sửa đổi những thông tin trên khi cần thiết và xóa chúng đi khi phim đã hết thời hạn công chiếu. 
                   +Nhân viên cũng có thể tìm kiếm và sắp xếp phim theo thể loại để tiện cho việc quản lý số lượng lớn các phim. 
                Về lịch chiếu, phòng chiếu:
                   +Nhân viên có thể thêm lịch chiếu cho từng phim, cập nhật sửa đổi và xóa đi lịch chiếu phim không phù hợp 
                   +Nhân viên có thể kiểm tra trạng thái của phòng chiếu còn chỗ hay không, đồng thời kiểm tra trạng thái ghế ngồi có trong từng phòng chiếu, cập nhật trạng thái này khi cần thiết. 
             Y2.2: Quản lý về thông tin khách hàng:
                   +Khi khách hàng đặt vé nhân viên sẽ lưu các thông tin của khách hàng, bao gồm: Họ tên, ngày sinh, giới tính, số điện thoại, địa chỉ,…Nhân viên cũng có thể bổ sung và xóa các thông tin này khi cần thiết. 
                   +Nếu khách hàng có nhu cầu làm thẻ thành viên, nhân viên sẽ dựa trên thông tin thu thập được và tạo ra thẻ thành viên cho khách hàng.
                   +Thẻ thành viên có tác dụng giảm giá tổng tiền thanh toán của khách hàng dựa trên hạng thẻ, các hạng thẻ được quy định dựa trên tổng số tiền mà khách hàng đã bỏ ra để thanh toán cho rạp chiếu phim. 
              Y2.3:Quản lý về thông tin nhân viên: 
                   +Thông tin của nhân viên cũng sẽ được lưu trữ trên hệ thống, có thể dễ dàng thêm, xóa, cập nhật thông tin của nhân viên trên hệ thống. 
                   +Có thể sắp xếp nhân viên theo ca làm để thuận tiện cho việc quản lý 
            Y2.4: Quản lý về vé:
                   +Khi khách hàng đến đặt vé, nhân viên hỏi khách hàng về các thông tin như: Tên phim, thời gian chiếu, phòng chiếu, ghế ngồi,… Dựa trên các thông tin này nhân viên in vé phù hợp cho khách hàng. 
                   +Cuối mỗi tháng nhân viên có thể thống kê tổng số lượng vé đã bán ra của tháng đó để tính doanh thu của rạp chiếu phim mỗi tháng. 
*Các câu truy vấn sẽ thực hiện:
       1.Trích xuất/cập nhật/sắp xếp thông tin 
          + Hiển thị thông tin của phim 
          + Thêm thông tin của bộ phim mới 
          + Sắp xếp phim theo bảng chữ cái 
          + Sắp xếp phim theo thể loại 
          + Tìm kiếm phim theo thể loại 
          + Hiển thị các lịch chiếu của 1 phim 
          + Thêm lịch chiếu cho 1 phim 
          + Xóa lịch chiếu bị sai 
          + Sửa lịch chiếu sai cho 1 phim 
          + Tìm kiếm lịch chiếu trong ngày 
          + Hiển thị các phòng chiếu còn trống 
          + Hiển thị trạng thái các ghế ngồi trong phòng chiếu 
          + Hiển thị thông tin của khách hàng 
          + Tìm kiếm khách hàng theo thời gian mua vé 
          + Hiển thị thông tin của nhân viên trong ca làm 
          + Sắp xếp nhân viên theo ca làm 
      2.Thống kê 
          + Số lượng vé bán ra trong ngày/tháng/năm 
          + Thống kê số lượng vé đã mua của khách hàng 
          + Thống kê số lượng khách hàng có hạng thẻ thành viên cao 
