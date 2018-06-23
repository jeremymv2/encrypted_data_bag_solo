# Encrypted data_bag with Chef solo

## Disclaimer
The use of encrypted data bags comes with the compromise of having to ship the encryption/decryption key
in plain text alongside the cookbook policy. Your data_bags may be encrypted, but the key for decryption
is accessible on the filesystem.

## Get it

```
git clone https://github.com/jeremymv2/encrypted_data_bag_solo.git
cd encrypted_data_bag_solo
```

## Create a secret

```
openssl rand -base64 512 > secret
```

## Create a data bag

```
knife data bag create secrets --local-mode
knife data bag from file secrets secrets.json --secret-file secret --local-mode
```

## Run chef solo

```
chef-client -z -c solo.rb -o 'recipe[test_enc_data_bags::default]'
```
