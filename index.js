const OTP = require('otp-client').default

const secret = '<mfa_token>'
const otp = new OTP(secret)
const token = otp.getToken()

console.log(token)