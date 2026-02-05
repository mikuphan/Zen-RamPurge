
# ZEN RAM PURGE

Một tool `.bat` nhỏ gọn dùng để **dọn task nền, app rác và cache không cần thiết trên Windows**, giúp giải phóng RAM **theo cách thực tế**, không màu mè, không can thiệp kernel.

> Không phải Ram Reduct, không phải RAMMap  
> Chỉ là một script **dọn thứ dư thừa mà Windows hay để chạy nền**

---

## Mục đích của project

Project này được tạo ra để:
- Dọn **app nền vô dụng** (OneDrive, Widgets, Teams, YourPhone…)
- Reset **Explorer cache** (thứ hay ăn RAM ngầm)
- Clear **Temp / Windows Temp**
- Giải phóng RAM **ở mức người dùng**, an toàn

Không nhắm tới việc:
- Can thiệp kernel
- Xóa Standby List
- Bypass Windows
- Fake virus / fake Defender

---

## Tính năng chính

- Menu rõ ràng, dễ dùng
- Tự xin quyền **Administrator**
- 2 chế độ dọn RAM:
  - **SAFE**: dọn app rác + cache cơ bản
  - **ULTRA**: dọn mạnh hơn + reset Explorer
- Xem:
  - RAM vật lý
  - RAM còn trống
  - Page File (RAM ảo)
- Không đụng tiến trình hệ thống quan trọng

---

## Cách sử dụng

1. Tải file `.bat`
2. Chuột phải → **Run as administrator**
3. Chọn chức năng theo menu

Khuyến nghị:
- Dùng chế độ SAFE trước
- ULTRA chỉ dùng khi máy lag, nhiều app nền

---

## Những gì tool NÀY làm

✔ Kill app nền phổ biến nhưng không cần thiết  
✔ Clear cache người dùng  
✔ Reset Explorer để giải phóng shell memory  
✔ Giảm áp lực RAM trong ngắn hạn  

## Những gì tool NÀY KHÔNG làm

✖ Không xóa file hệ thống  
✖ Không động System32  
✖ Không can thiệp driver  
✖ Không mạnh bằng tool kernel-level  
✖ Không thay thế phần mềm chuyên dụng

---

## Lưu ý quan trọng

- Hiệu quả **phụ thuộc cấu hình máy**
- Máy 8GB RAM sẽ thấy rõ hơn máy 16–32GB
- Windows sẽ **tự dùng lại RAM** sau một thời gian (đây là cơ chế bình thường)

Nếu bạn cần xả Standby List thật sự:
- Dùng RAMMap
- Hoặc EmptyStandbyList.exe  
(Project này **cố tình không làm** việc đó)

---

## Phù hợp với ai?

- Người thích vọc Windows
- Máy yếu / RAM ít
- Người muốn tool gọn nhẹ, không cài đặt
- Không thích phần mềm chạy nền

---

## Không chịu trách nhiệm cho

- Người dùng tool rồi kêu “sao Windows vẫn dùng RAM”
- Người nghĩ dọn RAM = tăng FPS vĩnh viễn
- Người mong `.bat` mạnh như tool kernel

---

## License

Free to use, free to modify.  
Dùng cho mục đích học tập / cá nhân là chính.

---

Nếu bạn hiểu script này làm gì  
→ bạn sẽ thấy nó hữu ích  

Nếu bạn không hiểu  
→ đừng chạy bừa
