resource "local_file" "key_data" {
    filename = "/c/Users/Admin/Desktop/terraform/.pem/pvt-key.pem"
    content = tls_private_key.private_key.pvt-key.pem
    file_permission = "0400"
}

resource "tls_private_key" "private_key" {
    algorithm = "RSA"
    rsa_bits = 2048
    ecdsa_curve = "P384"

}

resource "tls_cert_request" "csr" {
    private_key_pem = file("/c/Users/Admin/Desktop/terraform/.pem/pvt-key.pem")
    depends_on = [ local_file.key_data ]

    subject {
        common_name = "flexit.com"
        organization = "FlexIT Consulting Services"
    }
}