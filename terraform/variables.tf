# The variable for the Aquia AWS accoutn assuming the Read Only Audit role
variable "aquia_account_id" {
  type = string
  description = "Aquia account to assume the role"
  default = "590183861461"
}