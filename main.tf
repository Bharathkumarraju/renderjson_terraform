resource "null_resource" "export_rendered_template" {
  provisioner "local-exec" {
    command = "cat > test.json <<EOL\n${data.template_file.test.rendered}\nEOL"
  }
}