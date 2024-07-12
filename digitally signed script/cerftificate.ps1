New-SelfSignedCertificate -CertStoreLOcation cert:\currentuser\my `
-Subject "CN=dummycert" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert