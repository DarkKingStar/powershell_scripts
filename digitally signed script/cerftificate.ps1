New-SelfSignedCertificate -CertStoreLocation cert:\currentuser\my `
-Subject "CN=dummycert" `
-KeyAlgorithm RSA `
-KeyLength 1024 `
-Provider "Microsoft Enhanced RSA and AES Cryptographic Provider" `
-KeyExportPolicy Exportable `
-KeyUsage DigitalSignature `
-Type CodeSigningCert

#win + R -> certmgr.msc -> run -> to see the thumbprint of the certificate