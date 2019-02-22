PRAGMA key = '<key material>';
PRAGMA cipher_page_size = 1024;
PRAGMA kdf_iter = 64000;
PRAGMA cipher_hmac_algorithm = HMAC_SHA1;
PRAGMA cipher_kdf_algorithm = PBKDF2_HMAC_SHA1;
ATTACH DATABASE 'sqlcipher-4.db' AS sqlcipher4 KEY '<key material>';
SELECT sqlcipher_export('sqlcipher4');
DETACH DATABASE sqlcipher4;