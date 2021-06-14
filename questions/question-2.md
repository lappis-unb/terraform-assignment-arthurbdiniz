# Question 2

Given a Terraform config that includes the following code,  how would you reference the last instance that will be created?

```yaml
resource "aws_instance" "web" {
  # ...
  for_each = {
    "terraform": "value1",
    "resource":  "value2",
    "indexing":  "value3",
    "example":   "value4",
  }
}
```

- [ ] aws_instance.web[4]
- [ ] aws_instance.web["example"]
- [ ] aws_instance.example
- [ ] aws_instance.web[3]