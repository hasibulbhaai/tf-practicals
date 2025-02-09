resource "tls_private_key" "pvtkey" {
    algorithm = "RSA"
    rsa_bits = "4096"
}

resource "local_file" "pkey" {
    filename = "/c/Users/Admin/Desktop/terraform/dependencies/pvt.txt"
    content = tls_private_key.pvtkey.private_key_pem
    file_permission = "0700"
}