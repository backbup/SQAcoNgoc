# Tương tác/Bình luận - SQA Unit Test Pack

Thư mục này chứa checklist test theo sheet `13.Tương tácBình luận` trong `unit_test.xlsx`.

## Cách chạy

```powershell
cd C:\co_ngov\sqa-tuong-tac-binh-luan
.\scripts\run-sqa-tuong-tac-binh-luan-checklist.ps1
```

## Chạy bằng Maven (pom riêng)

```powershell
cd C:\co_ngov\sqa-tuong-tac-binh-luan
mvn validate
```

## Thành phần

- `testcases.json`: danh sách test case trích từ Excel.
- `scripts/run-sqa-tuong-tac-binh-luan-checklist.ps1`: script in kết quả checklist.
- `pom.xml`: cấu hình Maven riêng cho repo mục này.
