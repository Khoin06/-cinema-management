# cinema_management
## Đối tượng sử dụng: Nhân viên rạp chiếu phim🔥
## Các yêu cầu cơ bản:  
      
* **Quản lý về phim, lịch chiếu, phòng chiếu:** 
<ol>
          <li>Thêm/xóa/cập nhật thông tin về phim
          <li>Sắp xếp phim theo thể loại hoặc thứ tự bảng chữ cái 
          <li>Tìm kiếm phim theo một số thông tin cho sẵn 
          <li>Thêm/xóa/cập nhật lịch chiếu của phim 
          <li>Tìm kiếm lịch chiếu theo yêu cầu về thời gian 
          <li>Kiểm tra trạng thái ghế ngồi của phòng chiếu   
</ol>

* **Quản lý về thông tin khách hàng:**
<ol> 
           <li>Thêm/xóa/cập nhật thông tin về khách hàng</li>
            <li>Tạo và quản lý thẻ thành viên cho khách hàng khi khách có nhu cầu</li>
            <li>Tìm kiếm thông tin khách hàng </li> 
</ol>   

* **Quản lý về thông tin nhân viên:**      
<ol>
          <li>Thêm/xóa/cập nhật thông tin về nhân viên 
          <li>Sắp xếp nhân viên theo ca làm 
</ol>     

* **Quản lý về vé:** 
<ol>  
          <li>Đặt/In/Hủy vé  
          <li>Thống kê số lượng vé đã bán ra 
</ol>   
      
## Yêu cầu cụ thể:

* **Tạo CSDL Quản lý rạp chiếu phim và nhập liệu cho bảng:**
<ol> 
   <li>nắm bắt được cách thức hoạt động của hệ thống 
   <li>Phân tích, thiết kế CSDL phù hợp 
   <li>Tạo lập các bản và nắm rõ mối quan hệ giữa chúng 
   <li>Nhập liệu để thực hiện các yêu cầu sau 
</ol>

* **Đáp ứng các yêu cầu chức năng:** 
<ol>
   
  **Quản lý về phim, lịch chiếu, phòng chiếu** 
          **Về phim:** 
                   <li>Nhân viên có thể thêm các phim mới và thông tin liên quan tới chúng như: Tên phim, đạo diễn, thể loại, thời lượng,… Đồng thời có thể sửa đổi những thông tin trên khi cần thiết và xóa chúng đi khi phim đã hết thời hạn công chiếu. 
                   <li> Nhân viên cũng có thể tìm kiếm và sắp xếp phim theo thể loại để tiện cho việc quản lý số lượng lớn các phim.
  
   **Về lịch chiếu, phòng chiếu:**
                   <li> Nhân viên có thể thêm lịch chiếu cho từng phim, cập nhật sửa đổi và xóa đi lịch chiếu phim không phù hợp 
                   <li> Nhân viên có thể kiểm tra trạng thái của phòng chiếu còn chỗ hay không, đồng thời kiểm tra trạng thái ghế ngồi có trong từng phòng chiếu, cập nhật trạng thái này khi cần thiết. 
</ol>      

<ol> 
      
  **Quản lý về thông tin khách hàng:**
                   <li>Khi khách hàng đặt vé nhân viên sẽ lưu các thông tin của khách hàng, bao gồm: Họ tên, ngày sinh, giới tính, số điện thoại, địa chỉ,…Nhân viên cũng có thể bổ sung và xóa các thông tin này khi cần thiết. 
                   <li>Nếu khách hàng có nhu cầu làm thẻ thành viên, nhân viên sẽ dựa trên thông tin thu thập được và tạo ra thẻ thành viên cho khách hàng.
                   <li>thẻ thành viên có tác dụng giảm giá tổng tiền thanh toán của khách hàng dựa trên hạng thẻ, các hạng thẻ được quy định dựa trên tổng số tiền mà khách hàng đã bỏ ra để thanh toán cho rạp chiếu phim. 
      **Quản lý về thông tin nhân viên:**
                   <li> Thông tin của nhân viên cũng sẽ được lưu trữ trên hệ thống, có thể dễ dàng thêm, xóa, cập nhật thông tin của nhân viên trên hệ thống. 
                   <li> Có thể sắp xếp nhân viên theo ca làm để thuận tiện cho việc quản lý 
       **Quản lý về vé:**
                   <li> Khi khách hàng đến đặt vé, nhân viên hỏi khách hàng về các thông tin như: Tên phim, thời gian chiếu, phòng chiếu, ghế ngồi,… Dựa trên các thông tin này nhân viên in vé phù hợp cho khách hàng. 
                   <li> Cuối mỗi tháng nhân viên có thể thống kê tổng số lượng vé đã bán ra của tháng đó để tính doanh thu của rạp chiếu phim mỗi tháng. 
</ol>    

## Các câu truy vấn sẽ thực hiện:

* **Trích xuất/cập nhật/sắp xếp thông tin**
<ol>
          <li> Hiển thị thông tin của phim 
          <li>  Thêm thông tin của bộ phim mới 
          <li>  Sắp xếp phim theo bảng chữ cái 
          <li>  Sắp xếp phim theo thể loại 
          <li>  Tìm kiếm phim theo thể loại 
          <li>  Hiển thị các lịch chiếu của 1 phim 
          <li>  Thêm lịch chiếu cho 1 phim 
          <li> Xóa lịch chiếu bị sai 
          <li>  Sửa lịch chiếu sai cho 1 phim 
          <li>  Tìm kiếm lịch chiếu trong ngày 
          <li>  Hiển thị các phòng chiếu còn trống 
          <li>  Hiển thị trạng thái các ghế ngồi trong phòng chiếu 
          <li>  Hiển thị thông tin của khách hàng 
          <li>  Tìm kiếm khách hàng theo thời gian mua vé 
          <li>  Hiển thị thông tin của nhân viên trong ca làm 
          <li>  Sắp xếp nhân viên theo ca làm
</ol> 

* **Thống kê**
<ol>
          <li>  Số lượng vé bán ra trong ngày/tháng/năm 
          <li>  Thống kê số lượng vé đã mua của khách hàng 
          <li>  Thống kê số lượng khách hàng có hạng thẻ thành viên cao 
</ol>
