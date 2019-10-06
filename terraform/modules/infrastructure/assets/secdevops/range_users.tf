//module "create_test1" {
//  source    = "git::https://github.com/cloudposse/terraform-aws-iam-user.git?ref=master"
//  name      = "qgaxeevv@sharklasers.com"
//  pgp_key    = "mQENBF2Y3n8BCAC6tFVgnQdw5KyVN01ngB8bv8r3joVNO8+/fSaOBvRF43F0M/KLtXnHqi/Wues1Y4Z/ByAJjsuTFUN2bsTVjboxWesugOPTh+HGXGB3SwXKuDlVVxD3/H9oxgB6g5lN3u1o1mdmg9FADKYYWn0/pmqwF87L4jusdNYy99ImJKYBfncuTat2ZXwND6VIMXAlvXkrpRqxL40aEY621CyPRV1gl8tLqVVWppHwd8NAQcWgQKWF7dthEqWd5svdWjkh8DCp9Wr2uieBXBs7uf4wHxD22s0MluLWjao8DEQ4SdgKhGToAngHDl0xYTgQk6teN3Pz87Af4EnIe2veJi2dEa67ABEBAAG0I3FnYXhlZXZ2IDxxZ2F4ZWV2dkBzaGFya2xhc2Vycy5jb20+iQFUBBMBCAA+FiEEiD+RXRgaYU/GYJMLeXod5qmKb3EFAl2Y3n8CGwMFCQPCZwAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQeXod5qmKb3Fd/wgApZXuTsb1h5OL7RxRkebGXgzVAq2BwEtejlbLZmJ3EDWySNi+/xhMiDSLPXPto2Dzn9F5N65xT8ezw30xN/ydDcAb1C3nvTgtY/u2Lllai83Ae27hls8iZEf9FfzkeJPv5Kg0TSwfSa+WrSuZyYPBcNLhM7Iurv3qJKFDLJ1g31dJmT69mbk70uhtfhpjquU9pxu+GIC66Q2m9Mc5qUphOdzFCr9iU+mOqkRHCGnOzAgsYZySmhVYhvdILGqqHuou7GSqQEtLZ4wh9iCHjnwux9eBAdYklewP4ATzII+Ul+r49AsqTMP7wtqKCrNNpRSJUrko/Y8gdWdA+gm7GRhUjbkBDQRdmN5/AQgAvZG7t9fz8Gz/03zVu7mBqBsqS0ztxow14sfovImUBh5/Uw27fpV1MGGfz/hFBQSWSv58CnUlOOSiFUUQktsZPw+FwsMDHkF5rEzRpcBYXbLVTvajv0qE8pKlBUPsyPs+yLeH9oaVCc0wL8GDgwJVEWeOMxD+H+9hWnvrZiQ0dFgkJjSNE8rM/9mjzzLKodjGpFAKfa1IQXFz7+PUt1T4+gnMkXz8r6TvmidAhcvURg2TFBTRgS/5vMK6wZVUTN8Hfc1KePKvhgzlQpRXKL1VotykgA5VkP2lrCK+UbX+RWtlLRlizjfhSz6zNdGb3Ea/JPIcWGUZPNJ53xHddwrlKQARAQABiQE8BBgBCAAmFiEEiD+RXRgaYU/GYJMLeXod5qmKb3EFAl2Y3n8CGwwFCQPCZwAACgkQeXod5qmKb3EJaQgAr/T9p4UzcMZFfz+DD1rW0EC72lMILCZ78hclFJ7IFfBnraNvEwNP/5TvhR1XG/A1rOOdH6KrSH0Su09XyOvA/OqLlz5RM9l0J2zmbwfw1fmecYjpOg7vsTkaCr5PZjv9PLUlvoOu3YKatrd0D/x8SqdGXb9zMIJiqc36FlRI0V+tohGtln/8uFszhWl+DmBiJyBqHaeaEVkUAMRYnmD3b2EJCjlwLAn7/9kgU1EbFSj0ZJQwYg28Lr6IQIswxG0ai0iGTG/cm88fzowhNo3dOPmci4VM1iOVTF2DY9gokqks/RTADrxS0xq0CU5xmkL8l47uftuIZWqQV92kzbiLFA=="
//  groups    = ["mgmt"]
//}
resource "aws_iam_user" "cloudgoat" {
  name = "cloudgoat"
  path = "/cloudgoat/"

}

resource "aws_iam_access_key" "cloudgoat" {
  user = "${aws_iam_user.cloudgoat.name}"
//  pgp_key    = "mQENBF2Y3n8BCAC6tFVgnQdw5KyVN01ngB8bv8r3joVNO8+/fSaOBvRF43F0M/KLtXnHqi/Wues1Y4Z/ByAJjsuTFUN2bsTVjboxWesugOPTh+HGXGB3SwXKuDlVVxD3/H9oxgB6g5lN3u1o1mdmg9FADKYYWn0/pmqwF87L4jusdNYy99ImJKYBfncuTat2ZXwND6VIMXAlvXkrpRqxL40aEY621CyPRV1gl8tLqVVWppHwd8NAQcWgQKWF7dthEqWd5svdWjkh8DCp9Wr2uieBXBs7uf4wHxD22s0MluLWjao8DEQ4SdgKhGToAngHDl0xYTgQk6teN3Pz87Af4EnIe2veJi2dEa67ABEBAAG0I3FnYXhlZXZ2IDxxZ2F4ZWV2dkBzaGFya2xhc2Vycy5jb20+iQFUBBMBCAA+FiEEiD+RXRgaYU/GYJMLeXod5qmKb3EFAl2Y3n8CGwMFCQPCZwAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQeXod5qmKb3Fd/wgApZXuTsb1h5OL7RxRkebGXgzVAq2BwEtejlbLZmJ3EDWySNi+/xhMiDSLPXPto2Dzn9F5N65xT8ezw30xN/ydDcAb1C3nvTgtY/u2Lllai83Ae27hls8iZEf9FfzkeJPv5Kg0TSwfSa+WrSuZyYPBcNLhM7Iurv3qJKFDLJ1g31dJmT69mbk70uhtfhpjquU9pxu+GIC66Q2m9Mc5qUphOdzFCr9iU+mOqkRHCGnOzAgsYZySmhVYhvdILGqqHuou7GSqQEtLZ4wh9iCHjnwux9eBAdYklewP4ATzII+Ul+r49AsqTMP7wtqKCrNNpRSJUrko/Y8gdWdA+gm7GRhUjbkBDQRdmN5/AQgAvZG7t9fz8Gz/03zVu7mBqBsqS0ztxow14sfovImUBh5/Uw27fpV1MGGfz/hFBQSWSv58CnUlOOSiFUUQktsZPw+FwsMDHkF5rEzRpcBYXbLVTvajv0qE8pKlBUPsyPs+yLeH9oaVCc0wL8GDgwJVEWeOMxD+H+9hWnvrZiQ0dFgkJjSNE8rM/9mjzzLKodjGpFAKfa1IQXFz7+PUt1T4+gnMkXz8r6TvmidAhcvURg2TFBTRgS/5vMK6wZVUTN8Hfc1KePKvhgzlQpRXKL1VotykgA5VkP2lrCK+UbX+RWtlLRlizjfhSz6zNdGb3Ea/JPIcWGUZPNJ53xHddwrlKQARAQABiQE8BBgBCAAmFiEEiD+RXRgaYU/GYJMLeXod5qmKb3EFAl2Y3n8CGwwFCQPCZwAACgkQeXod5qmKb3EJaQgAr/T9p4UzcMZFfz+DD1rW0EC72lMILCZ78hclFJ7IFfBnraNvEwNP/5TvhR1XG/A1rOOdH6KrSH0Su09XyOvA/OqLlz5RM9l0J2zmbwfw1fmecYjpOg7vsTkaCr5PZjv9PLUlvoOu3YKatrd0D/x8SqdGXb9zMIJiqc36FlRI0V+tohGtln/8uFszhWl+DmBiJyBqHaeaEVkUAMRYnmD3b2EJCjlwLAn7/9kgU1EbFSj0ZJQwYg28Lr6IQIswxG0ai0iGTG/cm88fzowhNo3dOPmci4VM1iOVTF2DY9gokqks/RTADrxS0xq0CU5xmkL8l47uftuIZWqQV92kzbiLFA=="
}

resource "aws_iam_user_policy" "cloudgoat" {
  name = "cloudgoat"
  user = "${aws_iam_user.cloudgoat.name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

# this creates external and new accounts in AWS.  It sends an invite to create a user as part
# of an organization.  This caused an AWS support ticket and 2 unreachable accounts
#todo: keep or scrap
//resource "aws_organizations_account" "cyberRange" {
//  name  = "cyberRange"
//  email = "stbiebgf@sharklasers.com"
//  role_name = "OrganizationAccoLuntAccessRole"
//}

//resource "aws_iam_user_login_profile" "example" {
//  user    = "${aws_organizations_account.cyberRange.name}"
//  pgp_key = "keybase:some_person_that_exists"
//}
//
//output "example_pass" {
//  value = "${aws_iam_user_login_profile.example.encrypted_password}"
//}
//