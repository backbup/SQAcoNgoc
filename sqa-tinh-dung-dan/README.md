# Tính đúng đắn - SQA Unit Test Pack

Thư mục này chứa checklist test theo sheet `14.Tính đúng đắn` trong `unit_test.xlsx`.

## Cách chạy

```powershell
cd C:\co_ngov\sqa-tinh-dung-dan
.\scripts\run-sqa-tinh-dung-dan-checklist.ps1
```

## Chạy bằng Maven (pom riêng)

```powershell
cd C:\co_ngov\sqa-tinh-dung-dan
mvn validate
```

## Thành phần

- `testcases.json`: danh sách test case trích từ Excel.
- `scripts/run-sqa-tinh-dung-dan-checklist.ps1`: script in kết quả checklist.
- `pom.xml`: cấu hình Maven riêng cho repo mục này.
