//
//  ServerConstants.swift
//  Titan
//
//  Created by Kavitha on 12/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

struct ApiEndPointConstants {
    static let addPanCard = "cart/panverify"
    static let validateForgotPasswordOtp = "auth/forgotpassword/changepassword"
    //"/auth/forgot_password/generate_otp"
    static let generateLoginOtpForForgotPassword = "/auth/forgotpassword/sendotp"
    static let baseUrl = "adapters/Raaga_Jewellery"
    static let generateOtpForMobileNumberUpdate = "/auth/signup"
    static let generateOtpForEditMobileNumber = "/auth/util/otp"
    static let resendOtpForgotPassword = "/auth/forgot_password/generate_otp"
    static let registerEndPoint = baseUrl+"/register/user"
    static let resendOtp = "/auth/login/resend_otp"
    static let registerEndPointValidateOTP = baseUrl+"/auth/signup/validate-otp"
    static let ghsToTanishqRegisterEndPoint = baseUrl+"/register/ghsToTanishqRegistartion"
    static let loginEndPoint = baseUrl+"/auth/loginidentity"
    static let socialLoginEndPoint = baseUrl+"/auth/socialloginidentity"
    static let logoutEndPoint = baseUrl+"/auth/logout"
    static let forgotPasswordEndPoint = baseUrl+"/auth/forgotpassword/sendotp"
    static let getAccountDetailsEndPoint = baseUrl+"/account/accountdetails"
    static let editAccountDetailsEndPoint = baseUrl+"/account/accountdetails/update"
    static let getEncirleDetailsEndPoint = baseUrl+"/encircle/getencirclepoints"
    static let resetPasswordEndPoint = baseUrl+"/auth/forgotpassword/changepassword"
    static let changePasswordEndPoint = baseUrl+"/auth/changepassword"
    static let addAddressEndPoint = baseUrl+"/address/create"
    static let editAddressEndPoint = baseUrl+"/address/update"
    static let getAddressEndPoint = baseUrl+"/address/fetch"
    static let deleteAddressEndPoint = baseUrl+"/address/delete"
    static let isSocialUserEndPoint = baseUrl+"/address/checkSocialUser"
    static let findStateCityEndPoint = baseUrl+"/address/findStateCity"
    static let getCountryCodesEndPoint = baseUrl+"/address/fetch/country_calling_code"
    static let getCountryListEndPoint = baseUrl+"/address/fetch/countrylist"
    static let createWishList = baseUrl+"/wishlist/create"
    static let editWishList = baseUrl+"/wishlist/update"
    static let deleteWishList = baseUrl+"/wishlist/delete"
    static let getWishLists = baseUrl+"/wishlist/fetch/complete"
    static let getSharedWishListItems = baseUrl+"/wishlist/fetch/shared_wishlist"
    static let getWishListItems = baseUrl+"/wishlist/fetch"
    static let addItemToWishList = baseUrl+"/wishlist/additem"
    static let getStores = baseUrl+"/home/search/stores"
    static let searchAutoSuggest = baseUrl+"/search/autosuggest"
    static let search = baseUrl+"/search/suggest"
    static let getCategoryProducts = baseUrl+"/product/fetch/salescategory"
    static let compareProducts = baseUrl+"/product/compare"
    static let getSearchResults = baseUrl+"/search/get/searchresults"
    static let getProductDetail = "productdisplay/fetch/product"
    static let getCartDetails = "cart/getcart"
    static let addItemToCart = "cart/add"
    static let removeItemFromCart = "cart/delete"
    static let updateItemQuantity = "cart/updateorder"
    static let calculateOrder = "cart/calculate"
    static let addGiftMessage = "cart/addGiftMessage"
    static let getDeliveryOptions = "productdisplay/check/cod/deliveryoptions"
    static let getActivePromotions = "cart/activePromoCodes"
    static let applyPromoOrCoupon = "cart/applyPromoOrCoupon"
    static let guestLogin = "auth/guestidentity"
    static let cart = "cart/"
    static let continueCheckout = "/continueCheckout"
    static let reviewOrder = "cart/review"
    static let getCartQuantity = "home/cart/quantity"
    static let getOrderDeliveryInformation = "order/getOrderDeliveryInformation"
    static let updateOrderDeliveryInformation = "order/updateShippingInfo"
    static let updateShippinginfo = "cart/shippinginfo"
    static let orderSummary  = "cart/ordersummary"
    static let encircleValidateOtp = "encircle/validateOtp"
    static let encircleValidateUser = "encircle/validateUser"
    static let encircleValidateNewUser = "encircle/validateNewUser"
    static let redeemEncirclePoints = "payment/redeemEncircle"
    static let bookAppointment = "storeAppointment/bookAppointment"
    static let getEmiDetail = "payment/getEMIDetails"
    static let pdpPromises = "/espot/pdp_promises"
    static let orderHistory = "order/getOrderHistory"
    static let orderDetail = "order/getPlacedOrderDetails?orderId="
    static let guestOrderDetail = "order/guestOrderDetails"
    static let cancelOrder = "cart/cancelOrder/"
    static let cancelOrderItem = "/order/cancelitem/"
    static let paymentMethods = "cart/usablePaymentInfo"
    static let paymentSummary = "payment/paymentSummary"
    static let addPaymentMethod = "payment/addPaymentMethod"
    static let getGiftCardBalance = "payment/getGCBalance"
    static let addGiftCardToCart = "cart/addGiftToCart"
    static let redeemGiftCard = "payment/redeemGC"
    static let removeGiftCard = "cart/paymentInstruction/"
    static let getBrands = "espot/brandList"
    static let getCategories = "espot/categoryList"
    static let espot = "espot/"
    static let sizeChart = "size-chart/"
    static let reverseInventory = "order/reverseInventory"
    static let preCheckout = "cart/preCheckout"
    static let confirmOrder = "payment/confirmOrder"
    static let verifyCaptcha = "payment/captchaVerify"
    static let renderOrderConfirmationPage = "payment/orderSummary/"
    static let defaultPlpSort = "/espot/defaultPlpSort"
    static let defaultSearchSort = "/espot/defaultSearchSort"
    static let promotionalBanners = "product/fetch/promotions/"
    static let verifyPassword = "account/verifyPassword"
    static let supportedCurrencies = "home/configuration"
    static let updateStoreCurrency = "home/languageCurrency"
    static let productDisplay = "productdisplay/"
    static let contactUs = "contactUs"
    static let faq = "faq"
    static let policies = "policies"
    static let splashScreen = "splashscreen"
    static let contactDetailsEmail = "contactDetailsEmail"
    static let brandlist = baseUrl+"/address/storelocator/byCityOrZip"
    static let countryStateListCode = "/address/country/country_state_list_code"
    static let inventoryDetail = "productdisplay/inventoryAvailability"
    static let notifyMe = "wishlist/notify/outofstock"
    static let updatepersistentinfo = "auth/updatepersistentinfo"
    static let suggestedCity = baseUrl+"/home/suggest/city"
    static let relatedproducts = "yfret/relateditems"
    static let recommendedProducts = "yfret/trending"
    static let bestSellers = "yfret/topselling"
    static let productList = "yfret/productlist"
    static let newArrivals = "yfret/newarrivals"
    static let broughtThisBroughtThat = "yfret/btbt"
    static let viewedThisViewedThat = "yfret/vtvt"
    static let productAverageReview = "yotpo/bottomline"
    static let productReview = "yotpo/productreview"
    static let postReview = "yotpo/createreview"
    static let voteOnReviews = "yotpo/voteonreviews"
    static let questionAnswer = "yotpo/questionanswer"
    static let voteOnAnswers = "yotpo/voteonanswers"
    static let createOrder = "yotpo/createorder"
    static let fetchUserReviews = "yotpo/externaluserproductreview"
    static let submitQuestion = "yotpo/submitquestion"
    static let promotedProducts = "yotpo/promotedproducts"
    static let yotpoReview = "/yotpo/products"
    static let checkOptIn = "whatsapp/checkOptIn"
    static let paymentResponse = "payment/payment_response"
    static let digiGoldPaymentMethods = "/digigold/getDGUsablePaymentInfo"
    static let digiGoldPaymentSummary = "/digigold/buyOrderSummary?tx_id="
    static let digiGoldPreCheckout = "digigold/dGPrecheckout"
    static let digiGoldBuyConfirm = "digigold/buyConfirm"
    static let quickAction = "homepage/loginquickaction"
    static let getCountryCodesFlagsEndPoint = baseUrl+"/espot/countryflags"
    static let generateLoginOtpForLogin = "/auth/login/generate/otp"
    static let generateLoginOtpForSignUp = "/auth/signup"
    static let validateLoginOtp = "/auth/login/otp/validate"
    static let gshvalidateLoginOtp = "/auth/login/otp/loginidentity?updateCookies: true"
    static let storeOrderList = "order/purchasehistory_ecom"
    static let onlineOrderCoaDetails = "order/getCoaOrderHistory"
    static let PostStoreLocatorUrl = "storeLocator/index_app"
    static let googleVisionAPI = "https://vision.googleapis.com/v1/images:annotate?key="
}

struct HeaderConstants {
    static let contentType  = "Content-Type"
    static let contentTypeValue  = "application/json"
    static let cacheControl  = "Cache-Control"
    static let cacheControlValue  = "no-cache, no-store"
    static let wcToken  = "WCToken"
    static let wcTrustedToken  = "WCTrustedToken"
    static let contentTypeUrlEncoded = "application/x-www-form-urlencoded"
    static let contentTypeUrlEncoded1 = "application/x-www-form-urlencoded; charset=utf-8"
    static let acceptEncoding = "Accept-Encoding"
    static let gzip = "gzip"
    static let scope = "scope"
    static let adapterAppName = "x-adapter-appname"
    static let appName = "Titan Jewellery"
    static let platform = "platform"
    static let iOS = "iOS"
    static let timeStamp = "devicetime"
    static let model = "model"
    static let appVersion = "AppVersion"
}

struct UserLoginRequestConstants {
    static let source  = "source"
    static let authKey  = "authKey"
    static let channel  = "channel"
    static let xBrandValue  = "COM-JW"
    static let muid  = "muid"
    static let xMuid  = "x_muid"
    static let mobileOsName  = "mobileOsName"
    static let mobileOsValue  = "IOS"
    static let googleAuthCode = "googleAuthCode"
    static let appSocialLoginLob = "app_socialLogin_lob"
    static let isGoogleLogin = "isgoogleLogin"
    static let appleSecret = "appleSecret"
}

struct BrandValueConstant {
    static let comBrandValue = "COM-JW"
    static let supportedBrand = "JWL"
    static let paymentBrandValue = "COMMON-JW"
}

struct OrderHistoryRequestConstants {
    static let query  = "q"
    static let queryValue  = "findByStatusExt"
    static let status  = "status"
    static let mobileNumber = "Mobile"
    static let orderId = "orderId"
}

struct OrderDetailRequestConstants {
    static let orderId  = "orderId"
    static let extOrderId  = "extOrderId"
    static let emailId = "emailId"
    static let isShipmentGrpngEnabled = "isShipmentGrpngEnabled"
    static let isShipmentGrpngEnabledValue = "true"
}

struct CancelOrderRequestConstants {
    static let cancelReason  = "cancelReason"
    static let otherReason  = "otherReason"
}

struct PaymentRequestConstants {
    static let orderId  = "orderId"
    static let brand  = "brand"
    static let payMethodId  = "payMethodId"
    static let gcData  = "gcData"
    static let piId  = "piId"
    static let gcCardPin  = "gcCardPin"
    static let bankId  = "bankId"
    static let tenure  = "tenure"
    static let wcsPaymentId  = "wcsPaymentId"
    static let captchaToken  = "response"
    static let paymentInstruction = "paymentInstruction"
    static let paymentResponse = "payment_response"
    static let paymentType = "payment_type"
    static let txnId = "tx_id"
    static let totalAmount = "TotalAmount"
    static let safeGoldUserId = "safeGoldUserId"
    static let paymentMethodRequest = "paymentMethodRequest"
    static let digiGoldBankId = "bankID"
    static let digiGoldChannel = "channel"
    static let digiGoldSafeGoldUserId = "safeGoldUserID"
}

struct UserRegisterRequestConstants {
    static let logonPasswordVerify = "logonPasswordVerify"
    static let dateOfBirth = "dateOfBirth"
    static let personTitle = "personTitle"
    static let firstName = "firstName"
    static let lastName = "lastName"
    static let mobilePhone  = "mobilePhone1"
    static let countryCode  = "mobilePhone1Country"
    static let mobileCountryCode  = "mobileCountryCode"
    static let receiveEmail  = "x_receiveEmail"
    static let receiveSMS  = "x_receiveSMS"
    static let anniversaryDate = "anniversaryDate"
    static let xAnniversaryDate = "x_anniversaryDate"
    static let updatedFields = "x_updatedFields"
    static let isOptInSelected = "isOptInSelected"
    static let optInMedium = "optInMedium"
    static let optInMediumValue = "TanishqApp"
    static let otp = "otp"
}

struct UserSettingsRequestConstants {
    static let receiveEmail  = "receiveEmail"
    static let receiveSms  = "receiveSMS"
}

struct AddressRequestConstants {
    static let personTitle = "personTitle"
    static let firstName = "firstName"
    static let lastName = "lastName"
    static let mobilePhone  = "mobilePhone1"
    static let countryCode  = "mobilePhone1Country"
    static let addressField  = "xaddr_addressField1"
    static let addressLine  = "addressLine"
    static let zipCode  = "zipCode"
    static let state  = "state"
    static let country  = "country"
    static let country2DigitCode  = "countryCode"
    static let countryKey  = "country"
    static let countryName  = "xcont_countryName"
    static let city  = "city"
    static let nickName  = "nickName"
    static let primary  = "primary"
    static let email  = "email1"
    static let xstateName = "x_stateName"
    static let xContStateName = "xcont_stateName"
    static let stateName = "state"
}

struct PasswordRequestConstants {
    static let resetPassword  = "resetPassword"
    static let logonPasswordVerify  = "xcred_logonPasswordVerify"
    static let oldPassword  = "xcred_logonPasswordOld"
    static let challengeAnswer  = "challengeAnswer"
    static let verificationCode  = "xcred_validationCode"
    static let pageSource = "pageSource"
    static let channelKey  = "channel"
    static let otp = "otp"
    static let newMobileNumber = "newMobileNumber"
    static let action = "action"
}

struct OTPLoginRequestConstants {
    static let mobilePhone1Country = "mobilePhone1Country"
    static let mobilePhone1 = "mobilePhone1"
    static let resendOtpFlag = "resendOtpFlag"
    static let resendOTPTrue = 1
    static let validate = "validate"
    static let newMobileNumber = "newMobileNumber"
}

struct EncirleRequestConstants {
    static let mobileNumber  = "mobileNumber"
    static let isCheckOut  = "isCheckOut"
    static let isCardNumberMasked  = "isCardNumberMasked"
}

struct FindStateCityRequestConstants {
    static let pinCode  = "pinCode"
}

struct StateListInfoRequestConstants {
    static let countryCode = "countryCode"
    static let profileName = "profileName"
}

struct WishlistRequestConstants {
    static let name  = "descriptionName"
    static let timeStamp  = "x_field3"
    static let externalId  = "externalId"
    static let productId  = "productId"
    static let item  = "item"
    static let guestAccessKey  = "guestAccessKey"
}
struct ApplyPromotionRequestConstant {
    static let type = "type"
    static let taskType = "taskType"
    static let code = "code"
    static let orderId = "orderId"
    static let responseFormat = "responseFormat"
    static let activeCouponCode = "activeCouponCode"
    static let activePromoCode = "activePromoCode"
}
struct StoreLocatorRequestConstants {
    static let cityOrZipcode  = "cityOrZipcode"
    static let supportedBrand  = "supportedBrand"
    static let isServiceCenter  = "isServiceCenter"
    static let siteLevelStoreSearch  = "siteLevelStoreSearch"
    static let xchannel = "xChannel"
    static let lob = "lob"
    static let storied = "storied"
    static let htmlContent = "htmlContent"
    static let htmlresponses = ""
}
struct SearchRequestConstants {
    static let searchTerm  = "searchTerm"
    static let lob  = "lob"
    static let suggestType  = "suggestType"
    static let suggestTypeProduct  = "Product"
    static let suggestTypeCategory  = "Category"
    static let catalogId  = "catalogId"
    static let currency  = "currency"
    static let landingPage = "landingPage"
}
struct ProductRequestConstants {
    static let categoryId  = "categoryId"
    static let lob  = "lob"
    static let catalogId  = "catalogId"
    static let id  = "id"
    static let facets = "selectedFacet"
    static let outOfStock = "outOfStock"
    static let orderBy = "orderBy"
    static let urlKeywordName = "urlKeywordName"
    static let currency = "currency"
    static let landingPage = "landingPage"
    static let unboostFlag = "unboostFlag"
    static let brand = "brand"
    static let attrName = "attrName"

}
struct ProductDetailRequestConstants {
    static let lob  = "lob"
    static let catalogId  = "catalogId"
    static let productId  = "productId"
    static let urlKeywordName = "urlKeywordName"
}
struct CartRequestConstant {
    static let productId = "productId"
    static let quantity = "quantity"
    static let orderId = "orderId"
    static let orderItem = "orderItem"
}

struct RemoveItemFromCartRequestConstant {
    static let orderItemId = "orderItemId"
}

struct GetActivePromotionsRequestConstant {
    static let brandName = "brandName"
}

struct UpdateOrderItemQuantityRequestConstant {
    static let orderItem = "orderItem"
    static let orderItemId = "orderItemId"
    static let quantity = "quantity"
    static let x_calculateOrder = "x_calculateOrder"
    static let x_calculationUsage = "x_calculationUsage"
}
struct ContiueCheckoutRequestConstant {
    static let updatePrices = "updatePrices"
    static let calculationUsageId = "calculationUsageId"
    static let doFreeGift = "doFreeGift"
    static let orderId = "orderId"
    static let doPrice = "doPrice"
    static let name = "name"
    static let mobile = "mobile"
}
struct CalculateOrderRequestConstant {
    static let calculationUsageId = "calculationUsageId"
}

struct CheckOptinRequestConstant {
    static let mobileNumber = "mobileNumber"
}

struct CheckOptinResponseConstant {
    static let optIn = "optIn"
    static let optInMedium = "optInMedium"
    static let status = "status"
}
struct EncryptionKeyResponseConstant {
    static let keyToEncrypt = "keyToEncrypt"
    static let showLiveChat = "showLiveChat"
    static let manulCoachMarkFlag = "manulCoachMarkFlag"
}
struct OrderDeliveryInformationRequestConstants {
    static let isBillingShippingSame  = "isBillingShippingSame"
    static let shippingAddressId  = "shippingAddressId"
    static let pickUpInStoreDetails  = "pickUpInStoreDetails"
    static let shippingInstruction = "shippingInstruction"
    static let ordersId = "ordersId"
    static let personalInfoAddressId = "personalInfoAddressId"
    static let emailId = "email1"
    static let mobilePhone1 = "mobilePhone1"
    static let mobilePhone1Country = "mobilePhone1Country"
    static let personalInfo = "personalInfo"
}
struct OrderShippingInformationRequestConstants {
    static let orderId  = "orderId"
    static let orderItem  = "orderItem"
    static let orderItemId  = "orderItemId"
    static let shipModeId = "shipModeId"
    static let calculationUsage = "calculationUsage"
    static let calculationUsageValue = "-1,-2,-3,-4,-5,-6,-7"
}
struct DeliveryOptionRequestConstants {
    static let country  = "country"
    static let productId  = "productId"
    static let lob  = "lob"
    static let quantity = "quantity"
    static let partNumber = "partNumber"
}
struct EmiRequestConstant {
    static let productId  = "productId"
    static let quantity = "quantity"
    static let orderId = "orderId"
}
struct EncircleRequestConstants {
    static let email  = "emailId"
    static let firstName  = "firstName"
    static let lastName  = "lastName"
    static let salutation  = "salutation"
    static let mobileNumber  = "mobileNumber"
    static let otp  = "otp"
    static let isExistingUser  = "isExistingUser"
    static let points = "points"
}
struct BookAppointmentRequestConstant {
    static let email  = "emailId"
    static let name  = "name"
    static let phone  = "phone"
    static let city  = "city"
    static let storeName  = "storeName"
    static let stlocId  = "stlocId"
    static let appointmentDate  = "appointmentDate"
    static let appointmentDateValue  = "I don't mind"
    static let catentryId = "catentryId"
    static let notificationFlag = "notificationFlag"
    static let brand = "brand"
    static let storeIdentifier = "storeIdentifier"
}

struct GiftCardRequestConstant {
    static let giftCardPlpUrlKeyword = "m-jew-giftcard"
    static let giftCardPdpUrlKeyword = "gcft"
    static let gcCardNumber = "gcCardNumber"
    static let gcCardPin = "gcCardPin"
    static let gcRedeemAmount = "gcRedeemAmount"
    static let orderItem = "orderItem"
}

struct GenericSlotRequestConstant {
    static let subtype  = "subtype"
    static let subtypeValue  = "json"
}
//otpFgtPwd
struct CommonRequestConstants {
    static let gshEmailId  = "GHSEmailId"
    static let otpProfileUpdate = "otpProfileUpdate"
    static let otpForgetPwd = "app_forgotPwd"
    static let editMobileNumber = "app_editMobile"
    static let logonId  = "logonId"
    static let logonPassword  = "logonPassword"
    static let responseFormatKey  = "responseFormat"
    static let responseFormatValue  = "json"
    static let pageNumber  = "pageNumber"
    static let pageSize  = "pageSize"
    static let brand  = "x_brand"
    static let channel  = "x_channel"
    static let xChannel = "xChannel"
    static let channelValue  = "M-APP-JW"
    static let jewelleryLob = "jewellery"
    static let cityKey = "city"
    static let verifyCaptchaSource = "source"
    static let pageSource = "pageSource"
    static let channelKey  = "channel"
    static let otp = "otp"
    static let newMobileNumber = "newMobileNumber"
    static let action = "action"
    static let otpLogin = "otpLogin"
    static let otpSignUp = "otpSignUp"
    static let generate = "generate"
    static let intermediateOTP = "otpLogin"
    static let channelValueForSignupValidate = "web"
    static let validateSignupPageSource = "OtpSignUp"
    static let generateOTPApp = "generateOTPApp"
}

struct CommonResponseConstants {
    static let identifier  = "identifier"
    static let recordSetTotal  = "recordSetTotal"
    static let recordSetCount  = "recordSetCount"
    static let recordSetComplete  = "recordSetComplete"
    static let itemRecordSetCount  = "itemRecordSetCount"
}

struct ErrorResponseConstants {
    static let message1 = "message"
    static let errors  = "errors"
    static let errorMessageList  = "errorMessageList"
    static let message  = "errorMessage"
    static let errorMessage  = "Error message"
    static let errorMessage1  = "Response"
    static let errorMessage2  = "ErrorMessage"
    static let errorMsg  = "errorMSG"
    static let code  = "errorCode"
    static let errorDescription  = "description"
    static let reasonCode  = "reasonCode"
    static let error  = "error"
    static let errorAlternate  = "Error"
    static let excData  = "excData"
    static let errorMsgForDisplay = "errorMsgForDisplay"
    static let errorCodeString = "ErrorCode"
    static let deepLinkString = "redirectPage"
    static let deepLinkStringValue = "cart"
}
struct UserResponseConstants {
    static let wcToken              = "WCToken"
    static let sessionTimeOut       = "sessionTimeOut"
    static let userId               = "userId"
    static let wcTrustedToken       = "WCTrustedToken"
    static let personalizationID    = "personalizationID"
    static let addressId            = "addressId"
    static let email                = "email1"
    static let contact              = "contact"
    static let registrationDateTime = "registrationDateTime"
    static let preferredCurrency    = "preferredCurrency"
    static let customerPartyId      = "customerPartyId"
    static let ghsUser              = "ghsUser"
    static let isGhsUser            = "isghsUser"
    static let otp                  = "otp"
    static let customerHash         = "customerHash"
    static let accessToken          = "accessToken"
    static let mobileOsName         = "mobileOsName"
}
//struct CountryResponseConstants {
//    static let countryListWithCode  = "countryListWithCode"
//    static let name  = "name"
//    static let code  = "code"
//    static let state  = "State"
//    static let city  = "City"
//}
struct VerifyPasswordResponseConstants {
    static let isValidCredentials  = "isValidCredentials"
}
struct ProductResponseConstants {
    static let wishListItemID  = "giftListItemID"
    static let productId  = "productId"
    static let parentProductId  = "parentProductId"
    static let productName  = "productName"
    static let productNameAlternate  = "name"
    static let partNumber  = "partNumber"
    static let childPartNumber  = "child_partNumber_ntk"
    static let quantityBought  = "quantityBought"
    static let quantityRequested  = "quantityRequested"
    static let itemListPrice  = "itemListPrice"
    static let itemOfferPrice  = "itemOfferPrice"
    static let inventoryQuantity  = "inv_strlocqty_10151_10051"
    static let isInventoryAvailable  = "isInventoryAvailable"
    static let brand  = "brand"
    static let amountSaved  = "amountSaved"
    static let amountSavedinPercentage  = "amountSavedinPercentage"
    static let catentryId  = "CatentryId"
    static let productImage  = "productImage"
    static let productImageAlternate  = "fullImage"
    static let tags  = "tags"
    static let specialRibbons  = "specialRibbons"
    static let ribbons  = "ribbons"
    static let thumbnail  = "thumbnail"
    static let shortDescription  = "shortDescription"
    static let longDescription  = "longDescription"
    static let attributes  = "attributes"
    static let uniqueID  = "uniqueID"
    static let urlKeyword = "urlKeyword"
    static let storeID  = "storeID"
    static let price  = "price"
    static let alternatePrice  = "alternativePrice"
    static let childCatEntryId  = "catentry_id_child"
    static let fullImage  = "fullImage"
    static let attachments  = "attachments"
    static let altPriceAmountSaved  = "altPriceAmountSaved"
    static let descriptiveAttributes  = "descriptiveAttributes"
    static let techSpecsAttributes  = "techSpecsAttributes"
    static let featureAttributes  = "featureAttributes"
    static let specialAttributes  = "specialAttributes"
    static let blackBandAttributes = "blackBandAttributes"
    static let definingAttributes  = "definingAttributes"
    static let definingAttrMap  = "definingAttrMap"
    static let facetAttributes  = "facetAttributes"
    static let productType  = "Product"
    static let jewellery = "Jewellery Type"
    static let product = "Product"
    static let type = "Type"
    static let brandName = "Brand"
    static let metal = "Metal"
    static let emiAmount  = "emiAmount"
    static let thresholdQuantity  = "thresholdQuantity"
    static let numberOfSKUs  = "numberOfSKUs"
    static let promotions = "promotions"
    static let oosFlag = "oosFlag"
    static let buyable = "buyable"
    static let available = "available"
    static let isAvailable = "isAvailable"
    static let productUrl = "productUrl"
    static let parentCatalogGroupID = "parentCatalogGroupID"
    static let lob = "lob"
    static let hasSingleSKU = "hasSingleSKU"
    static let averageScore = "average_score"
    static let domainKey = "domain_key"
    static let sKUs = "sKUs"
    static let jewelleryType = "Product Type"
    static let discountAttr = "discountAttr"
    static let value = "VALUE"
    static let forMoreInfo = "forMoreInfo"
    static let inventoryLocationID = "inv_strlocIds"
}
struct InventoryRequestConstant {
    static let physicalStoreId = "physicalStoreId"
}
struct AttachmentResponseConstants {
    static let smallImage  = "IMAGE_SMALL"
    static let thumnailImages  = "ANGLEIMAGES_THUMBNAIL"
    static let fullImages  = "ANGLEIMAGES_FULLIMAGE"
    static let images  = "IMAGES"
    static let image360  = "IMAGE_360"
    static let image360Thumbnail = "IMAGE_360_THUMBNAIL"
    static let image3d  = "3D_IMAGE"
    static let video  = "MEDIA"
    static let videoThumbnail  = "MEDIA_THUMBNAIL"
    static let attachmentAssetPath  = "attachmentAssetPath"
    static let name  = "name"
    static let catentry_id  = "catentry_id"
    static let attachmentAssetID  = "attachmentAssetID"
    static let usage  = "usage"
    static let identifier  = "identifier"
}
struct ProductAttributeResponseConstants {
    static let identifier  = "identifier"
    static let uniqueID  = "uniqueID"
    static let values  = "values"
    static let description  = "description"
    static let name  = "name"
    static let value  = "value"
    static let skuList  = "skuList"
    static let title = "image1"
    static let imageURL = "image2"
    static let blacklistAttributeDescription = "field3"
    static let usdValue = "USDvalue"
}
struct ProductSkuResponseConstants {
    static let skus  = "sKUs"
    static let price  = "price"
    static let skuCatentryId  = "skuCatentryId"
    static let altPriceAmountSaved  = "altPriceAmountSaved"
    static let attributes  = "attributes"
    static let inventory  = "inventory"
    static let name  = "name"
    static let amountSaved  = "amountSaved"
    static let alternativePrice  = "alternativePrice"
    static let skuPartNumber  = "skuPartNumber"
    static let isSKUBuyable  = "isSKUBuyable"
    static let available  = "available"
    static let leastPriceSKU  = "leastPriceSKU"
    static let diamondWeight  = "diamondWeight"
    static let discountAttribute  = "discountAttribute"
}
struct GiftCardResponseConstants {
    static let gcPriceRange = "gcPriceRange"
    static let isGiftCard  = "isGiftCard"
    static let upperLimit  = "upperLimit"
    static let lowerLimit  = "lowerLimit"
    static let currency  = "currency"
}
struct InventoryResponseConstants {
    static let onlineStoreName  = "onlineStoreName"
    static let inventoryStatus  = "inventoryStatus"
    static let unitOfMeasure  = "unitOfMeasure"
    static let onlineStoreId  = "onlineStoreId"
    static let productId  = "productId"
    static let availableQuantity  = "availableQuantity"
}
struct YotpoProductConstant {
    static let yotpoId = "yotpo_id"
    static let product = "product"
}
struct SocialUserResponseConstants {
    static let isSocialUser  = "isSocialUser"
}
struct AddressResponseConstants {
    static let resourceName  = "resourceName"
    static let addressId  = "addressId"
    static let resourceId  = "resourceId"
    static let userId  = "userId"
    static let addressList  = "contact"
    static let attributes  = "attributes"
    static let addressField = "addressField1"
}

struct EncircleResponseConstants {
    static let encirclePointsRedeemed  = "encirclePointsRedeemed"
    static let result  = "result"
    static let encircleAmountRedeemed  = "encircleAmountRedeemed"
    static let cardNumber  = "cardNumber"
}
struct  BookAppointmentResponseConstant {
    static let pincode  = "pincode"
    static let message  = "message"
    static let phone  = "phone"
    static let appointmentDate  = "appointmentDate"
    static let storeName  = "storeName"
    static let storeHours  = "storeHours"
    static let state  = "state"
    static let storeAddress  = "storeAddress"
    static let longitude  = "longitude"
    static let latitude  = "latitude"
    static let country  = "country"
    static let city  = "city"
    static let email  = "email"
}
struct AddressAttributeConstants {
    static let value  = "value"
    static let key  = "key"
}
struct EncircleDetailResponseConstants {
    static let result  = "result"
    static let pointBalance  = "pointBalance"
    static let cardNumber  = "cardNumber"
    static let redeemableBalancePoints  = "redeemableBalancePoints"
    static let valueOfEachPoint  = "valueOfEachPoint"
    static let mobileNumber  = "mobileNumber"
}
struct EditAccountResponseConstants {
    static let viewTaskName  = "viewTaskName"
}
struct WishlistResponseConstants {
    static let externalIdentifier  = "externalIdentifier"
    static let uniqueId  = "uniqueID"
    static let storeId  = "storeId"
    static let item  = "item"
    static let name  = "descriptionName"
    static let wishList  = "GiftList"
    static let guestAccessKey  = "guestAccessKey"
}
struct StoreLocatorResponseConstants {
    static let physicalStore  = "PhysicalStore"
    static let phoneNumber  = "telephone1"
    static let addressLine  = "addressLine"
    static let description  = "Description"
    static let displayStoreName  = "displayStoreName"
    static let postalCode  = "postalCode"
    static let storeName  = "storeName"
    static let attributeList  = "Attribute"
    static let name  = "name"
    static let value  = "value"
    static let displayValue  = "displayValue"
    static let displayName  = "displayName"
    static let identifier  = "uniqueID"
    static let longitude  = "longitude"
    static let latitude  = "latitude"
    static let city  = "city"
    static let country  = "country"
    static let allowedBrands = "allowedBrands"
}
struct SearchResponseConstants {
    static let suggestionView  = "suggestionView"
    static let fullPathCategoryIds  = "fullPathCategoryIds"
    static let shortDescription  = "shortDescription"
    static let name  = "name"
    static let value  = "value"
    static let fullPath  = "fullPath"
    static let entry  = "entry"
    static let thumbnail  = "thumbnail"
    static let uniqueID  = "uniqueID"
    static let storeID  = "storeID"
    static let price  = "price"
    static let partNumber = "partNumber"
    static let storeFrontUrl = "storeFrontUrl"
}
struct PriceResponseConstants {
    static let description  = "description"
    static let value  = "value"
    static let usage  = "usage"
    static let currency  = "currency"
}
struct TagResponseConstants {
    static let name  = "name"
    static let associatedKeyword  = "associatedKeyword"
    static let value  = "value"
    static let uniqueID  = "uniqueID"
    static let values  = "values"
}
struct CategoryProductResponseConstants {
    static let recordSetTotal = "recordSetTotal"
    static let recordSetCount = "recordSetCount"
    static let facetView  = "facetView"
    static let catalogEntryView  = "catalogEntryView"
    static let landingPage = "landingPage"
    static let metaData = "metaData"
    static let spellcheck = "spellcheck"
    static let resourceId = "resourceId"
}
struct FacetResponseConstants {
    static let entry  = "entry"
    static let customLabel  = "customLabel"
    static let label  = "label"
    static let count  = "count"
    static let name  = "name"
    static let value  = "value"
    static let extendedData  = "extendedData"
    static let uniqueId  = "uniqueId"
    static let facetId = "facet_id"
    static let allowMultipleValueSelection  = "allowMultipleValueSelection"
    static let attridentifier = "propertyvalue"
}
struct RecentSearchResponseConstants {
    static let itemType  = "itemType"
    static let items  = "items"
}
struct CartResponseConstant {
    static let orderExtendAttributes = "orderExtendAttribute"
    static let recordSetTotal = "recordSetTotal"
    static let recordSetCount = "recordSetCount"
    static let storeUniqueID = "storeUniqueID"
    static let xIsPersonalAddressesAllowedForShipping = "x_isPersonalAddressesAllowedForShipping"
    static let totalSalesTaxCurrency = "totalSalesTaxCurrency"
    static let promotionCodes = "promotionCode"
    static let couponCodes = "couponCode"
    static let recordSetComplete = "recordSetComplete"
    static let orderItems = "orderItem"
    static let totalAdjustment = "totalAdjustment"
    static let totalShippingTax = "totalShippingTax"
    static let cartLineItemQuantity = "cartLineItemQuantity"
    static let resourceId = "resourceId"
    static let adjustments = "adjustment"
    static let totalProductPrice = "totalProductPrice"
    static let xIsPurchaseOrderNumberRequired = "x_isPurchaseOrderNumberRequired"
    static let storeNameIdentifier = "storeNameIdentifier"
    static let orderId = "orderId"
    static let resourceName = "resourceName"
    static let buyerDistinguishedName = "buyerDistinguishedName"
    static let shipAsComplete = "shipAsComplete"
    static let totalShippingTaxCurrency = "totalShippingTaxCurrency"
    static let totalQtyCount = "totalQtyCount"
    static let totalShippingCharge = "totalShippingCharge"
    static let totalShippingChargeCurrency = "totalShippingChargeCurrency"
    static let recordSetStartNumber = "recordSetStartNumber"
    static let grandTotal = "grandTotal"
    static let grandTotalCurrency = "grandTotalCurrency"
    static let orderStatus = "orderStatus"
    static let totalSalesTax = "totalSalesTax"
    static let buyerId = "buyerId"
    static let orderSummary = "orderSummary"
    static let lastUpdateDate = "lastUpdateDate"
    static let orderStatusDescription = "orderStatusDescription"
    static let xTrackingIds = "x_trackingIds"
    static let totalProductPriceCurrency = "totalProductPriceCurrency"
    static let prepareIndicator = "prepareIndicator"
    static let locked = "locked"
    static let totalAdjustmentCurrency = "totalAdjustmentCurrency"
    static let channel = "channel"
    static let comments = "comments"
    static let placedDate = "placedDate"
    static let displayItemImage = "displayItemImage"
    static let displayItemName = "displayItemName"
    static let totalOrderCount = "totalOrderCount"
    static let expectedDeliveryDate = "expectedDeliveryDate"
    static let detailedOrderStatusDescription = "detailedOrderStatusDescription"
    static let deliveryDate = "deliveryDate"
    static let isSafeGoldUser = "isSafeGoldUser"
    static let isPanVerified = "isPanVerified"
    static let modifiedTime = "Modifyts"
    static let orderType = "orderType"
}

struct AddToCartResponseConstant {
    static let currency = "currency"
    static let orderId = "orderId"
    static let orderItem = "orderItem"
    static let orderItemImage = "orderItemImage"
    static let orderItemName = "orderItemName"
    static let orderItemOfferPrice = "orderItemOfferPrice"
    static let orderItemPartnumber = "orderItemPartnumber"
    static let orderItemQuantity = "orderItemQuantity"
}

struct OrderExtendAttributeResponseConstant {
    static let attributeName = "attributeName"
    static let attributeValue = "attributeValue"
}

struct PromotionCodeResponseConstant {
    static let associatedPromotions = "associatedPromotion"
    static let code = "code"
}
struct PromotionResponseConstant {
    static let promotion = "Promotion"
    static let coupon = "Coupon"
    static let status = "status"
    static let priority = "priority"
    static let description = "description"
    static let shortDescription = "shortDescription"
    static let longDescription = "longDescription"
    static let effectiveDateTime = "effectiveDateTime"
    static let name = "name"
    static let expirationDateTime = "expirationDateTime"
    static let code = "code"
    static let type = "type"
    static let applicable = "applicable"
}
struct ApplyPromotionResponseConstant {
    static let promoCode = "promoCode"
    static let couponId = "couponId"
    static let orderId = "orderId"
}
struct CouponCodeResponseConstant {
    static let promotionAdminDescription = "promotionAdminDescription"
    static let effectiveDateTime = "effectiveDateTime"
    static let xcpcd_promotionStatus = "xcpcd_promotionStatus"
    static let status = "status"
    static let descriptions = "description"
    static let promotions = "promotion"
    static let expirationDateTime = "expirationDateTime"
    static let couponId = "couponId"
}

struct OrderItemResponseConstant {
    static let isJWSKU = "isJWSKU"
    static let unitQuantity = "unitQuantity"
    static let phone2 = "phone2"
    static let unitPrice = "unitPrice"
    static let totalAdjustment = "totalAdjustment"
    static let phone1 = "phone1"
    static let addressId = "addressId"
    static let city = "city"
    static let xitem_field2 = "xitem_field2"
    static let phone2Publish = "phone2Publish"
    static let postalCode = "postalCode"
    static let fulfillmentCenterName = "fulfillmentCenterName"
    static let orderItemInventoryStatus = "orderItemInventoryStatus"
    static let shippingTax = "shippingTax"
    static let nickName = "nickName"
    static let discrption = "discrption"
    static let orderItemStatus = "orderItemStatus"
    static let zipCode = "zipCode"
    static let carrier = "carrier"
    static let contractId = "contractId"
    static let quantity = "quantity"
    static let unitUom = "unitUom"
    static let salesTax = "salesTax"
    static let productInventoryThreshold = "productInventoryThreshold"
    static let middleName = "middleName"
    static let lastName = "lastName"
    static let isExpedited = "isExpedited"
    static let isBopis = "isBopis"
    static let orderItemFulfillmentStatus = "orderItemFulfillmentStatus"
    static let shipModeCode = "shipModeCode"
    static let shippingCharge = "shippingCharge"
    static let country = "country"
    static let productDetail = "productDetail"
    static let shipModeId = "shipModeId"
    static let language = "language"
    static let mobilePhone1Country = "mobilePhone1Country"
    static let deliveryInfos = "deliveryInfo"
    static let orderItemId = "orderItemId"
    static let state = "state"
    static let usableShippingChargePolicies = "usableShippingChargePolicy"
    static let currency = "currency"
    static let addressLines = "addressLine"
    static let availableDate = "availableDate"
    static let stateOrProvinceName = "stateOrProvinceName"
    static let adjustments = "adjustment"
    static let lineLevelPromotion = "lineLevelPromotion"
    static let shippingChargeCurrency = "shippingChargeCurrency"
    static let orderItemPrice = "orderItemPrice"
    static let phone1Publish = "phone1Publish"
    static let fax2 = "fax2"
    static let fulfillmentCenterId = "fulfillmentCenterId"
    static let fax1 = "fax1"
    static let correlationGroup = "correlationGroup"
    static let createDate = "createDate"
    static let firstName = "firstName"
    static let salesTaxCurrency = "salesTaxCurrency"
    static let partNumber = "partNumber"
    static let orderItemExtendAttributes = "orderItemExtendAttribute"
    static let giftMessage = "giftMessage"
    static let freeGift = "freeGift"
    static let focItem = "isFOCItem"
    static let grossWeight = "Gross Weight"
    static let diamondWeight = "Diamond Weight"
    static let xitemIsPersonalAddressesAllowedForShipping = "xitem_isPersonalAddressesAllowedForShipping"
    static let shipModeDescription = "shipModeDescription"
    static let email1 = "email1"
    static let email2 = "email2"
    static let shipModeLanguage = "shipModeLanguage"
    static let lastUpdateDate = "lastUpdateDate"
    static let productId = "productId"
    static let shippingTaxCurrency = "shippingTaxCurrency"
    static let offerID = "offerID"
    static let mobilePhone1 = "mobilePhone1"
    static let personTitle = "personTitle"
    static let uOM = "UOM"
    static let expectedShipDate = "expectedShipDate"
    static let productInventory = "productInventory"
    static let definingAttributes = "definingAttrvaluesMap"
    static let thumbnail = "thumbnail"
    static let shortDescription = "shortDescription"
    static let comments = "comments"
    static let name = "name"
    static let isGoldCoin = "isGoldCoin"
    static let productUrl = "productUrl"
    static let productCategory = "productCategory"
}

struct AdjustmentResponseConstant {
    static let amount = "amount"
    static let displayLevel = "displayLevel"
    static let descrption = "description"
    static let usage = "usage"
    static let language = "language"
    static let code = "code"
    static let descriptionLanguage = "descriptionLanguage"
    static let currency = "currency"
    static let xadjuCalUsageId = "xadju_calUsageId"
    
}

struct OrderSummaryResponseConstant {
    static let total = "total"
    static let promotionalCodeDiscount = "promotionalCodeDiscount"
    static let subtotal = "subtotal"
    static let shippingCharge = "shippingCharge"
    static let discount = "discount"
    static let isFreeGift = "isFreeGift"
    static let shipModes = "shipModes"
}

struct ChannelResponseConstant {
    static let descrption = "description"
    static let channelIdentifier = "channelIdentifier"
}

struct AssociatedPromotionResponseConstant {
    static let promotionId = "promotionId"
    static let descrption = "description"
    static let startDate = "startDate"
    static let endDate = "endDate"
    static let code = "code"
    static let associatePromotionId = "associatePromotionId"
}

struct CouponCodePromotionResponseConstant {
    static let uniqueID = "uniqueID"
    static let externalIdentifier = "externalIdentifier"
}

struct ExternalIdentifierResponseConstant {
    static let revision = "revision"
    static let name = "name"
    static let storeIdentifier = "storeIdentifier"
    static let version = "version"
}

struct DescriptionResponseConstant {
    static let displayStoreName = "displayStoreName"
    static let shortDescription = "shortDescription"
    static let longDescription = "longDescription"
    static let language = "language"
}

struct TotalAdjustmentResponseConstant {
    static let value = "value"
    static let currency = "currency"
}

struct ProductDetailResponseConstant {
    static let savingsPercent = "savingsPercent"
    static let itemName = "itemName"
    static let itemLongDesc = "itemLongDesc"
    static let productThresholdQty = "productThresholdQty"
    static let available = "available"
    static let collection = "collection"
    static let name = "name"
    static let freeOfCostItem = "freeOfCostItem"
    static let savingsAmt = "savingsAmt"
    static let prodCat = "prodCat"
    static let productUrl = "productUrl"
    static let gender = "gender"
    static let brand = "brand"
    static let thumbnailImg = "thumbnailImg"
    static let itemStrikeOffPrice = "itemStrikeOffPrice"
    static let itemShortDesc = "itemShortDesc"
    static let motherBrand = "motherBrand"
    static let parentProductId = "parentProductId"
    static let lob = "lob"
    static let size = "size"
    static let color = "color"
}

struct DeliveryInfoResponseConstant {
    static let nodeId = "nodeId"
    static let shipCharge = "shipCharge"
    static let deliveryMethodName = "deliveryMethodName"
    static let deliveryDate = "deliveryDate"
    static let shipModeId = "shipModeId"
    static let available = "available"
    static let emptyDeliveryDate = "emptyDeliveryDate"
    static let errorMessage = "errorMessage"
    static let proceedToPayment = "proceedToPayment"
    static let deliveryInfo = "deliveryInfo"
    static let deliveryOptions = "deliveryOptions"
    static let cod = "cod"
    static let codAvailble = "codAvailble"
    static let internationalDeliveryAvailable = "IntAvailble"
}

struct UsableShippingChargePolicyResponseConstant {
    static let name = "name"
    static let uniqueID = "uniqueID"
    static let type = "type"
}

struct LineLevelPromotionResponseConstant {
    static let formatGroupName = "formatGroupName"
    static let associatedPromotions = "associatedPromotions"
}

struct OrderItemExtendAttributeResponseConstant {
    static let attributeName = "attributeName"
    static let attributeValue = "attributeValue"
    static let attributeType = "attributeType"
}
struct GiftOrderItemExtendAttributeRequestConstant {
    static let orderItemExtendAttribute = "orderItemExtendAttribute"
    static let attributeName = "attributeName"
    static let attributeValue = "attributeValue"
    static let attributeType = "attributeType"
    static let attributeTypeString = "String"
}
struct DefiningAttrvaluesMapResponseConstant {
    static let name = "name"
    static let value = "value"
    static let identifier = "identifier"
}

struct ChannelIdentifierResponseConstant {
    static let channelName = "channelName"
    static let uniqueID = "uniqueID"
}

struct RemoveFromCartResponseConstant {
    static let orderId = "orderId"
}
struct ConitnueCheckoutResponseConstant {
    static let orderId = "orderId"
    static let viewTaskName = "viewTaskName"
}
struct CalculateOrderResponseConstant {
    static let viewTaskName = "viewTaskName"
    static let orderId = "orderId"
}

struct OrderGiftMessageItemResponseConstant {
    static let orderItem = "orderItem"
    static let orderId = "orderId"
    static let comment = "comment"
    static let orderItemId = "orderItemId"
}
struct CartCountResponseConstant {
    static let totalQtyCount = "totalQtyCount"
}
struct OrderDeliveryInformationResponseConstant {
    static let shippingInstruction = "shippingInstruction"
    static let hasHomeDeliveryItems = "hasHomeDeliveryItems"
    static let homeDeliveryShippingAddressId = "homeDeliveryShippingAddressId"
    static let hasBopisandHomeDeliveryItems = "hasBopisandHomeDeliveryItems"
    static let selfAddress = "selfAddress"
    static let ordersId = "ordersId"
    static let hasBopisItems = "hasBopisItems"
    static let isUserRegistered = "isUserRegistered"
    static let contacts = "contacts"
    static let orderId = "orderId"
    static let viewTaskName = "viewTaskName"
    static let orderItemId = "orderItemId"
    static let currency = "currency"
}
struct OrderShippingInformationResponseConstant {
    static let orderItem = "orderItem"
    static let orderId = "orderId"
}
enum ApplyPromoOrCouponTaskType: String {
    case add = "A"
    case remove = "R"
}

enum ApplyPromoOrCouponType: String {
    case promotion = "promotion"
    case coupon = "coupon"
}
struct AccountResponseConstant {
    static let contextAttribute = "contextAttribute"
    static let receiveEmailPreference = "receiveEmailPreference"
    static let attributeName = "attributeName"
    static let attributeValue = "attributeValue"
    static let storeId = "storeId"
    static let value = "value"
    static let storeID = "storeID"
}
struct EmiResponseConstant {
    static let interestRate  = "interestRate"
    static let minTxnAmount = "minTxnAmount"
    static let tenureDetails = "tenureDetails"
    static let name = "name"
    static let code = "code"
    static let amount = "amount"
    static let totalAmountPayable = "totalAmountPayable"
    static let emi = "emi"
    static let interestPaid = "interestPaid"
    static let interest = "interest"
    static let tenure = "tenure"
    static let minimumEMI = "minimumEMI"
    static let subEligible = "subEligible"
}

struct BankOfferConstants {
    static let slotDollar = "APP_PAY_SLOT4_Offer_USD"
    static let slotRupee  = "APP_PAY_SLOT4_Offer_INR"
}

struct BankOfferResponseConstant {
    static let offer = "BankOffers"
    static let paymentMethod = "paymentMethodName"
    static let termsAndCondition = "termsAndConditions"
    static let offers = "offers"
}

struct OrderResponseConstant {
    static let order  = "Order"
}
struct UsablePaymentInfoResponseConstant {
    static let googleCaptchaFlag = "googleCaptchaFlag"
    static let leftToPay = "leftToPay"
    static let leftToPayAmount = "leftToPayAmount"
    static let usablePaymentInformation = "usablePaymentInformation"
    static let position = "position"
    static let paymentTabDesc = "paymentTabDesc"
    static let paymentTab = "xupay_paymentTab"
    static let paymentMethodName = "paymentMethodName"
    static let isBankOffer = "xupay_isBankOffer"
    static let bankId = "xupay_bankId"
    static let name = "name"
    static let description = "description"
    static let orderId = "orderId"
    static let usedPaymentInformation = "usedPaymentInformation"
    static let popularBankList = "popularBankList"
    static let otherBankList = "otherBankList"
    static let bankList = "bankList"
    static let popularBankMap = "popularBankMap"
    static let imagePath = "imagePath"
    static let tabName = "mAppPaymentTabName"
    static let displayPaymentName = "xupay_mAppPaymentTabName"
}
struct UsedPaymentInfoResponseConstant {
    static let piId = "piId"
    static let piDescription = "piDescription"
    static let protocolData = "protocolData"
    static let name = "name"
    static let value = "value"
    static let paymentTab = "paymentTab"
    static let piAmount = "piAmount"
    static let piCurrency = "piCurrency"
    static let paymentMethodId = "payMethodId"
}
struct PaymentSummaryResponseConstant {
    static let total = "total"
    static let otherPayment = "otherPayment"
    static let isMixedOrder = "isMixedOrder"
    static let leftToPay = "leftToPay"
    static let youPaid = "youPaid"
    static let savings = "savings"
    static let subtotal = "subtotal"
    static let shippingCharge = "shippingCharge"
    static let restToBePaid = "restToBePaid"
    static let discount = "discount"
    static let currency = "currency"
    static let promotionalCodeDiscount = "promotionalCodeDiscount"
    static let totalAmount = "total_amount"
    static let purchaseGoldGram = "purchase_gold_gram"
    static let invoiceId = "invoice_ID"
    static let goldRate = "gold_rate"
    static let invoiceLink = "invoiceLink"
    static let dgOrderId = "dgOrderId"
    static let bankOfferDiscount = "bankOfferDiscount"
}
struct AddPaymentMethodResponseConstant {
    static let orderId = "orderId"
}
struct PaymentCheckoutResponseConstant {
    static let orderId = "orderId"
    static let paymentInstruction = "paymentInstruction"
    static let piId  = "piId"
    static let paymentDetailsForApp = "paymentDetailsForApp"
    static let msg = "msg"
    static let punchoutPopupURL = "xpapi_punchoutPopupURL"
}
struct GiftCardBalanceResponseConstant {
    static let giftCardBalance = "GiftCardBalance"
    static let gcEligibleItemsTotalAmount = "GCEligibleItemsTotalAmount"
    static let payMethodId = "PayMethodId"
    static let giftCardType = "GiftCardType"
    static let currency = "Currency"
    static let imageUrl = "imageURL"
    static let giftCardCreationType = "GiftCard_CardCreationType"
}
struct RedeemGiftCardResponseConstant {
    static let wcsPayId = "wcsPayId"
    static let giftCardAmountUpdated = "GiftCardAmountUpdated"
    static let giftCardAmountRedeemed = "GiftCardAmountRedeemed"
    static let currency = "Currency"
    static let orderId = "orderId"
}
struct CancelOrderResponseConstant {
    static let status = "Status"
    static let successStatusText = "Cancel Successful"
}
struct DigiGoldResponseConstant {
    static let purchaseDate = "purchaseDate"
    static let goldRate = "goldRate"
    static let totalAmount = "totalAmount"
    static let purchasedGold = "purchasedGold"
    static let mobileNumber = "mobileNum"
    static let userLoggedIn = "userLoggedIn"
}

struct VerificationKYCResponseConstant {
    static let safeGoldUserID = "safeGoldUserId"
    static let goldBalance = "gold_balance"
    static let mobileNumber = "mobile_no"
    static let emailID = "email"
    static let name = "name"
    static let responseMessage = "ResponseMessage"
}

struct  TanishqPromisesPDPResponseConstant {
    static let layoutType = "layoutType"
    static let assets = "assets"
    
    static let itemIndex = "itemIndex"
    static let itemLayoutType = "itemLayoutType"
    static let itemTitle = "itemtTitle"
    static let itemTitleColor = "itemTitleColor"
    static let itemTagTitle = "itemTagTitle"
    static let itemTagColor = "itemTagColor"
    static let itemTagBgColor = "itemTagBgColor"
    static let itemThumbnail = "itemThumbnail"
    static let itemContentLink = "itemContentLink"
    static let itemContentType = "itemContentType"
    static let itemProductId = "itemProductId"
    static let itemProductIdColor = "itemProductIdColor"
    static let itemTitleNeedsToDisplay = "itemTitleNeedsToDisplay"
}

struct ResetMpinResponseConstant {
    static let message = "message"
    static let otp = "otp"
    static let success = "success"
}

struct ResetMpinRequestConstant {
    static let action = "action"
    static let digiGoldMobileNo = "digiGoldMobileNo"
    static let dgCountryCode = "dgCountryCode"
    static let channel = "channel"
}

struct VerificationKYCRequestConstant {
    static let nameAsPerPAN = "name"
    static let panNumber = "pan_no"
    static let pinCode = "pin_code"
}

struct AddPanAPIConstant{
    static let email = "email"
    static let name = "name"
    static let orderID = "orderID"
    static let panNo = "panNo"
    static let verificationStatus = "verification_status"
}

struct ProductGroupResponseConstant {
    static let title = "title"
    static let layoutType = "layoutType"
    static let assets = "assets"
    static let contentIndex  = "contentIndex"
    static let layoutNeedsToDisplay = "layoutNeedsToDisplay"
    static let subItems = "subItems"
    static let banners = "Banners"
    static let itemIndex = "itemIndex"
    static let itemtTitle = "itemtTitle"
    static let itemTitle = "itemTitle"
    static let itemtLogo = "itemtLogo"
    static let itemLogo = "itemLogo"
    static let itemTitleColor = "itemTitleColor"
    static let itemThumbnail = "itemThumbnail"
    static let itemThumbnail2 = "itemThumbnail2"
    static let itemThumbnail3 = "itemThumbnail3"
    static let movableThumbnail = "movableThumbnail"
    static let itemContentLink = "itemContentLink"
    static let itemContentType = "itemContentType"
    static let itemDescription = "itemDescription"
    static let itemDescriptionColor = "itemDescriptionColor"
    static let itemNeedsToDisplay = "itemNeedsToDisplay"
    static let itemTitleNeedsToDisplay = "itemTitleNeedsToDisplay"
     static let itemDescriptionNeedsToDisplay = "itemDescriptionNeedsToDisplay"
    static let actionTitle = "actionTitle"
    static let actionNeedsToDisplay = "actionNeedsToDisplay"
    static let actionBGColor = "actionBGColor"
    static let actionBorderColor = "actionBorderColor"
    static let actionType = "actionType"
    static let actionTitleColor = "actionTitleColor"
    static let actionLink = "actionLink"
    static let price = "price"
    static let priceColor = "priceColor"
    static let contentType = "contentType"
    static let itemProductId = "itemProductId"
    static let itemProductIdColor = "itemProductIdColor"
    static let itemBackgroundColor = "itemBgColor"
    static let itemTagTitle = "itemTagTitle"
    static let itemTagTitleColor = "itemTagColor"
    static let itemTagBgColor = "itemTagBgColor"
    static let itemLayoutType = "itemLayoutType"
    static let actions = "actions"
    static let itemBorderColor = "itemBorderColor"
}

struct CollectionsResponseConstants {
    static let eventTitle = "eventTitle"
    static let eventTitleColor = "eventTitleColor"
    static let eventDescription = "eventDescription"
    static let eventDescriptionColor = "eventDescriptionColor"
    static let eventBGColor = "eventBGColor"
    static let subTitleToHighlight = "subTitleToHighlight"
}

struct YotpoOrderConfirmationResponseConstants {
    static let responseCode  = "response.code"

}

struct TransactionResponseConstants {
    static let transactions  = "transactions"
    static let sellPrice  = "sellPrice"
    static let transactionType  = "transactionType"
    static let dgOrderID  = "dgOrderID"
    static let tx_id  = "tx_id"
    static let goldRate  = "goldRate"
    static let transactionDate  = "transactionDate"
    static let invoiceLink  = "invoiceLink"
    static let goldAmount  = "goldAmount"
    static let buyPrice  = "buyPrice"
    static let bankName  = "bankName"
    static let goldAmountRs  = "goldAmountRS"
}

struct UploadBankResponseConstants {
    static let response  = "response"
    static let statusCode  = "statusCode"
    static let dgOrderId  = "dgOrder_id"
    static let txnId  = "tx_id"
    static let invoiceId  = "invoice_Id"
    static let invoiceLink  = "invoiceLink"
    static let message  = "message"
}

struct BankDetailsConstants {
    static let bankName  = "bank_name"
    static let accountNumber  = "account_number"
    static let ifscCode  = "ifsc_code"
    static let accountName  = "account_name"
    static let safeGoldUserId  = "safeGoldUserID"

}

struct AccountDetailConstants {
    static let id  = "id"
    static let pincode  = "pincode"
    static let pan_no  = "pan_no"
    static let isSafeGoldUser  = "isSafeGoldUser"
    static let tanishq_caratlane_balance  = "tanishq_caratlane_balance"
    static let other_gold_balance  = "other_gold_balance"
    static let safeGoldUserId  = "safeGoldUserId"
    static let ResponseCode  = "ResponseCode"
    static let isInternationCustomer  = "isInternationCustomer"
    static let mobile_no  = "mobile_no"
    static let gold_balance  = "gold_balance"
    static let name  = "name"
    static let sGUserId = "sgUserID"
    static let otherGoldBalanceINR = "otherGoldBalanceINR"
    static let goldBalanceINR = "goldBalanceINR"
    static let tanishqCaratlaneBalanceINR = "tanishqCaratlaneBalanceINR"
}

struct OrderDetailResponseConstants {
    static let deliveryDetails  = "deliveryDetails"
    static let contactDetails  = "contactDetails"
    static let addressDetails  = "addressDetails"
    static let orderStatusDescription  = "orderStatusDescription"
    static let orderDate  = "orderDate"
    static let totalBreakDown  = "totalBreakDown"
    static let orderSummary  = "orderSummary"
    static let allowCancel  = "allowCancel"
    static let billingInfo  = "billingInfo"
    static let orderId  = "orderId"
    static let orderCreateDate  = "orderCreateDate"
    static let placedDate = "orderPlacedDate"
    static let unitPrice  = "unitPrice"
    static let statusDate  = "statusDate"
    static let name  = "name"
    static let orderItemPrice  = "orderItemPrice"
    static let quantity  = "quantity"
    static let subBrand  = "subBrand"
    static let partNumber  = "partNumber"
    static let giftMessage  = "giftMessage"
    static let attrvaluesMap  = "attrvaluesMap"
    static let trackingId  = "trackingId"
    static let shipModeCode  = "shipModeCode"
    static let dispatchedDate  = "dispatchedDate"
    static let thumbnail  = "thumbnail"
    static let currency = "currency"
    static let expectedShipDate  = "expectedShipDate"
    static let definingAttributes = "definingAttrvaluesMap"
    static let conversionBrand = "conversionBrand"
    static let freeGift = "freeGift"
    static let lob = "LOB"
    static let parentProductId = "parentProductId"
    static let grossWeight = "Gross Weight"
    static let diamondWeight = "Diamond Weight"
    static let specialInstruction = "specialInstruction"
    static let itemName = "itemName"
    static let courierName = "courierName"
    static let childProductId = "childProductId"
    static let totalOrderQuantity = "totalOrderQuantity"
    static let isJWSKU = "isJWSKU"
    static let isGoldCoin = "isGoldCoin"
    static let productUrl = "productUrl"
    static let items = "Items"
    static let shipment = "shipment"
    static let cancelledItems = "cancelledItems"
    static let primeLineNo = "primeLineNo"
    static let subLineNo = "subLineNo"
    static let interimStatus = "interimStatus"
    static let totalQuantity = "TotalQuantity"
    static let statusDescription = "StatusDescription"
    static let interimStatusDate = "StatusDate"
    static let orderItemId = "orderItemId"
    static let pickupInformation = "pickupInformation"
    static let isPISShipment = "isPISShipment"
    static let storeDetails = "storeDetails"
    static let storeHourDetails = "storeHourDetails"
    static let trackingURL  = "TrackingURL"
}
struct EspotResponseConstant {
    static let resourceId  = "resourceId"
    static let resourceName  = "resourceName"
    static let marketingSpotData  = "MarketingSpotData"
    static let marketingSpotIdentifier  = "marketingSpotIdentifier"
    static let baseMarketingSpotActivityData  = "baseMarketingSpotActivityData"
    static let marketingContentDescription  = "marketingContentDescription"
    static let marketingText  = "marketingText"
    static let language  = "language"
    static let attachmentAsset = "attachmentAsset"
    static let attachmentAssetPath = "attachmentAssetPath"
}
struct ReverseInventoryResponseConstant {
    static let viewTaskName = "viewTaskName"
    static let orderId = "orderId"
    static let orderItemId = "orderItemId"
}
struct ConfirmOrderResponseConstant {
    static let viewTaskName = "viewTaskName"
    static let orderId = "orderId"
    static let paymentStatus = "paymentStatus"
    static let failure = "failure"
    static let invoiceLink = "invoiceLink"
}
enum GenericSlotResponseConstant {
    static let title  = "title"
    static let layoutType  = "layoutType"
    static let homescreenSlots  = "homescreenSlots"
    static let slots  = "slots"
    static let themeColor  = "themeColor"
    static let themeBackgroundImage  = "themeBackgroundImage"
}
struct VerifyCaptchaResponseConstant {
    static let success  = "success"
}
struct DefaultSortResponseConstant {
    static let defaultPLPSort  = "defaultPLPSort"
    static let defaultSearchSort  = "defaultSearchSort"
    static let defaultSortIndex  = 2
}
enum SlotResponseConstant {
    static let slotIndex  = "slotIndex"
    static let slotId  = "slotID"
    static let slotEndPoint  = "slotEndPoint"
    static let slotNeedsToDisplay  = "slotNeedsToDisplay"
    static let slotBgColor  = "slotBGColor"
    static let slotBgStyle  = "slotBGStyle"
    static let slotBgGradient  = "slotBGGradient"
    static let slotBgImage  = "slotBGImage"
    static let backgroundImage  = "backgroundImage"
    static let needToShowBirdGif  = "needToShowBirdGif"
    static let slotTitle  = "slotTitle"
    static let slotShortDescription = "slotShortDescription"
    static let slotShortDescriptionColor = "slotShortDescriptionColor"
    static let slotTitleColor  = "slotTitleColor"
    static let assets  = "assets"
    static let slotGiftingKeyword = "slotGiftingKeyword"
    static let slotThumbnail = "thumbnail"
    static let bannerImage = "bannerImage"
    static let bannerTitle = "bannerTitle"
    static let bannerTitleColor = "bannerTitleColor"
    static let itemContentLink = "itemContentLink"
    static let itemContentType = "itemContentType"
    static let image = "image"
    static let slotContentType = "slotContentType"
    static let slotContentLink = "slotContentLink"
}

struct ProductDetailGuideResponseConstant {
    static let layoutType = "layoutType"
    static let description = "description"
    static let layoutTitle = "layoutTitle"
    static let layoutTitleColor = "layoutTitleColor"
    static let descriptionColor = "descriptionColor"
    static let layoutBGColor = "layoutBGColor"
    static let assets = "assets"
}

struct loadEspotConstant {
    static let urlToLoad = "urlToLoad"
    static let productCategory = "product_category"
}

struct CurrencyConfiguationConstant {
    static let configurationId = "com.ibm.commerce.foundation.supportedCurrencies"
    static let configuarationName = "byConfigurationIds"
    static let langId = "-1"
    static let responseFormat = "json"

}

struct CurrencyRequestConstant {
    static let storeId = "store_id"
    static let catalogId = "catalogId"
    static let currency = "currency"
    static let langId = "langId"
    static let url = "URL"
    static let configurationId = "configurationId"
    static let configuarationName = "q"
    static let responseFormat = "responseFormat"
}

struct CurrencyResponseConstant {
    static let resourceId = "resourceId"
    static let additionalValue = "additionalValue"
    static let currencySymbol = "currencySymbol"
    static let primaryValue = "primaryValue"
    static let decimalPlaces = "decimalPlaces"
    static let configurationAttribute = "configurationAttribute"
    static let resultList = "resultList"
    static let name = "name"
    static let value = "value"
    static let currencyCode = "currencyCode"
}

struct ContactUsResponseConstant {
    static let customerCare = "customerCare"
    static let brandQueries = "brandQueries"
    static let officeLocations = "OfficeLocations"
}

struct CustomerCareResponseConstant {
    static let title = "title"
    static let email = "email"
    static let contactDetails = "ContactDetails"
    static let contactNumber = "contactNumber"
    static let message = "message"
}

struct FaqResponseConstant {
    static let faqs = "faqs"
    static let policies = "policies"
    static let title = "title"
    static let url = "url"
    static let thumbnail = "thumbnail"
    static let externalLink = "externalLink"
    static let id = "id"
}

struct PrivacyPolicyConstant {
    static let tandcUrl = "tandcUrl"
    static let privacyPolicyUrl = "privacyPolicyUrl"
    static let emiDisclaimerText = "emiDisclaimer"
    static let emiTandCUrl = "emiTandCUrl"
    static let updateType = "updateType"
    static let latestVersion = "latestVersion"
    static let iOSAppUpdate = "version.iOS"
    static let updateFrequency = "updateFrequency"
    static let internationalShipping_Faq = "internationalShipping_Faq"
    static let ghsTandCUrl = "ghsTandCUrl"
    static let rivaahTandCUrl = "rivaahTandCUrl"
    static let wcm = "version.WCM"
}

struct SplashScreenConstant {
    static let layoutType = "layoutType"
    static let assets = "assets"
    static let itemIndex = "itemIndex"
    static let itemtTitle = "itemtTitle"
    static let itemThumbnail = "itemThumbnail"
}
struct CustomerSupportConstant {
    static let email = "email"
    static let contactNumber = "contactNumber"
}

struct StateInfoConstant {
    static let stateCode = "stateCode"
    static let code = "code"
    static let displayName = "displayName"
    static let stateList = "StateList"
    static let stateName = "StateName"
    static let stateCodeKey = "StateCode"
}

struct BrandQueriesResponseConstant {
    static let title = "title"
    static let footerMessage = "footerMessage"
    static let brandLocations = "brandLocations"
    static let locationDescription = "description"
    static let email = "email"
    static let contactNumber = "contactNumber"
    static let fax = "fax"
}

struct OfficeLocationsResponseConstant {
    static let title = "title"
    static let locations = "Locations"
    static let officeType = "officeType"
    static let region = "region"
    static let isInternational = "isInternational"
    static let addressLine1 = "addressLine1"
    static let addressLine2 = "addressLine2"
    static let addressLine3 = "addressLine3"
    static let email = "email"
    static let contactNumber = "contactNumber"
    static let fax = "fax"
}

struct SizeGuideResponseConstant {
    static let sizingGuides = "sizingGuides"
    static let tabName = "tabName"
    static let tabDetails = "tabDetails"
    static let contentType = "contentType"
    static let contentIndex = "contentIndex"
    static let contentAction = "contentAction"
    static let setTabHidden = "setTabHidden"
}

struct BuyingGuideResponseConstant {
    static let buyingGuideDiamond = "BuyingGuideDiamond"
    static let title = "title"
    static let url = "url"
}

struct CouponDataResponseConstant {
    static let coupons = "coupons"
    static let code = "code"
    static let description = "description"
}

struct InventoryDetailResponseConstant {
    static let inventoryAvailability = "InventoryAvailability"
    static let inventoryStatus = "inventoryStatus"
    static let onlineStoreName = "onlineStoreName"
    static let unitOfMeasure = "unitOfMeasure"
    static let onlineStoreId = "onlineStoreId"
    static let availableQuantity = "availableQuantity"
    static let productId = "productId"
}

struct NotifyMeRequestConstant {
    static let name = "name"
    static let email = "email"
    static let muId = "muId"
    static let productId = "productId"
    static let brand = "brand"
    static let message = "message"
}

struct SecurityCheckConstant {
    static let name = "CustomUserLoginAuthJewel"
}

// MARK: - App Cache Policy

/* Specifies the cache policies used in the app
 - network : The data is directly fetched from the network and cache is updated
 - local   : The data is fetched from the cache (in our case 'Realm')
 - both    : The data is served from cache if not expired, otherwise from network */
enum CachePolicy: Int {
    case network
    case local
    case both
}

enum StoreAttributeName: String {
    case sundayOpeningHours = "sundayOpeningHours"
    case mondayOpeningHours = "mondayOpeningHours"
    case tuesdayOpeningHours = "tuesdayOpeningHours"
    case wednesdayOpeningHours = "wednesdayOpeningHours"
    case thursdayOpeningHours = "thursdayOpeningHours"
    case fridayOpeningHours = "fridayOpeningHours"
    case saturdayOpeningHours = "saturdayOpeningHours"
    case weekdayOpeningHours = "weekdayOpeningHours"
    case weekendOpeningHours = "weekendOpeningHours"
    case brand = "brand"
    case supportedBrand = "supportedBrand"
    case storeEmailId = "storeEmailId"
    case storeManagerMobile = "storeManagerMobile"
    case isServiceCenter = "isServiceCenter"

    static func openingHourAttributeName(for day: CalendarDay) -> StoreAttributeName? {
        switch day {
        case .sunday:
            return sundayOpeningHours
        case .monday:
            return mondayOpeningHours
        case .tuesday:
            return tuesdayOpeningHours
        case .wednesday:
            return wednesdayOpeningHours
        case .thursday:
            return thursdayOpeningHours
        case .friday:
            return fridayOpeningHours
        case .saturday:
            return saturdayOpeningHours
        }
    }
}

enum CalendarDay: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
}
enum ProductAttributeName: String {
    case motherBrand = "WT_TX_MOTHER_BRAND"
    case displayBrand = "WT_TX_DISPLAY_BRAND"
    case thresholdQuantity = "TX_PROD_QTY_THRESHOLD"
    case maxThresholdQuantity = "TX_QTY_MAX_THRESHOLD"
    case emiOption = "TX_EMI"
    
    case product = "WT_TX_PRODUCT_ID"
    case jewelleryProduct = "JW_TX_PRODUCT"
    case gender = "WT_TX_GENDER"
    case purityattribute = "JW_TX_KARATAGE"
    case collection = "WT_TX_COLLECTION"
    case metal = "WT_TX_METAL"
    case jewelleryType = "WT_TX_TYPE"
    case jwTxDesign = "JW_TX_DESIGN"
    case jwTxStyling = "JW_TX_STYLING"
    case jwTxCommunity = "JW_TX_COMMUNITY"
    case jwTxFinish = "JW_TX_SURFACE_FINISH"
    case jwTxDescription = "JW_TX_PDP_SCROLL_DESCRIPTION"
    case metalColor = "JW_TX_METAL_COLOR"
    case ocassion = "WT_TX_OCCASION"
    case function = "WT_TX_FUNCTION"
    case movement = "WT_TX_MOVEMENT"
    case dialColor = "WT_TX_DIAL_COLOR"
    case caseShape = "WT_TX_CASE_SHAPE"
    case caseMaterial = "WT_TX_CASE_MATERIAL"
    case caseLength = "WT_TX_CASE_LENGTH(6H-12H)_(MM)"
    case caseWidth = "WT_TX_CASE_WIDTH(3H-9H)_(MM)"
    case strapColor = "WT_TX_STRAP_COLOR"
    case starpMaterial = "WT_TX_STRAP_MATERIAL"
    case lockMechanism = "WT_TX_LOCK_MECHANISM"
    
    case waterResistance = "WT_TX_WATER_RESISTANCE"
    case warrentyPeriod = "WT_TX_WARRANTY_PERIOD"
    case giftCardLowerLimit = "WT_TX_GiftCard_LowerLimit"
    case giftCardUpperLimit = "WT_TX_GiftCard_UpperLimit"
    case isGiftCard = "WT_TX_IsGiftCard"
    
    case length = "WT_TX_TOTAL_LENGTH_(INCHES)"
    case color = "WT_TX_COLOR"
    case weight = "WT_TX_WEIGHT_(GRAMS)"
    case lapTopSize = "WT_TX_COMPATIBLE_LAPTOP_SIZE_(INCHES)"
    case material = "WT_TX_MATERIAL"
    case linningMaterial = "WT_TX_MATERIAL_(LINING)"
    case closureType = "WT_TX_CLOSURE_TYPE"
    case coinPocket = "WT_TX_COIN_POCKET"
    case family = "WT_TX_FAMILY"
    case perfumer = "WT_TX_PERFUMER"
    case shelfLife = "WT_TX_SHELF_LIFE"
    case sizeInches = "WT_TX_SIZE_(INCHES)"
    case mainCompartment = "WT_TX_BILL_COMPARTMENT"
    case secondaryCompartment = "WT_TX_SLIP_POCKET"
    case cardSlots = "WT_TX_CC_HOLDER"
    case pricingGroupType = "JW_ERP_PRICING_GROUP_TYPE"
    case productCode = "JW_ERP_PRODUCT_CODE"
    case goldRate = "JW_ERP_MAT_GOLD_RATE"
    case netGoldWeight = "JW_ERP_ACTUAL_NET_WEIGHT"
    case grossWeight = "JW_TX_GROSS_WEIGHT"
    case goldValue = "JW_ERP_GOLD_VALUE"
    case stoneValue = "JW_ERP_ACTUAL_F1"
    case makingCharges = "JW_ERP_F2"
    case discountValue = "JW_ERP_DISCOUNT_VALUE"
    case taxValue = "JW_ERP_TAX_AFTER_DISCOUNT"
    case karat = "JW_ERP_KARATAGE"
    case wastage = "JW_ERP_WASTAGE_VALUE"
    case virtualTryon = "JW_TX_VIRTUAL_TRYON"
    case virtualTryonCategory = "JW_TX_VIRTUAL_TRYON_CTG"
    case virtualTryonType = "JW_TX_VIRTUAL_TRYON_TYPE"
    case noOfDiamonds = "JW_TX_NO OF DIAMONDS"
    case diamondClarity = "JW_TX_DIAMOND_CLARITY"
    case diamondColor = "JW_TX_DIAMOND_COLOR"
    case diamondShape = "JW_TX_DIAMOND_SHAPE"
    case size = "JW_ERP_SIZE"
    case category = "JW_TX_CATEGORY"
    case sfsEnabled = "TX_isSFS"
    case focEnabled = "JW_TX_isFOC"
    case metalType = "JW_TX_METAL"
}
enum UserDetailAttributeName: String {
    case anniversaryDate = "TXAnniversaryDate"
    case socialSource = "TXSocialSource"
    case brand = "TXBrand"
    case ghsUser = "TXGHSUser"
}
enum GiftCardAttributeName: String {
    case dynamicGCAmt = "dynamicGCAmt"
    case modeOfReceive = "modeOfReceive"
    case recipientName = "recipientName"
    case recipientMail = "recipientMail"
    case recipientMobile = "recipientMobile"
    case message = "message"
    case theme = "theme"
    case deliveryDate = "deliveryDate"
    case isDynamicGC = "isDynamicGC"
    case lob = "lob"
    case motherBrand = "MotherBrand"
}
enum PriceType: String {
    case offer = "I"
    case actual = "L"
}
enum OrderStatus: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case m = "M"
    case f = "F"
    case g = "G"
    case all = "A,B,C,D,M,F,G"
    
    var statusDescription: String? {
        switch self {
        case .a:
            return "Order Placed"
        case .b:
            return "Order Placed"
        case .c:
            return "Order Placed"
        case .d:
            return "Order Placed"
        case .m:
            return "Order Placed"
        case .f:
            return "Order Placed"
        case .g:
            return "Order Placed"
        default:
            return ""
        }
    }
}

enum PaymentForm: String {
    case netBanking = "NetBanking"
    case wallets = "Wallets"
    case creditDebitCard = "CreditDebitCard"
    case cashOnDelivery = "COD"
    case emi = "EMI"
    case giftCard = "GiftCard"
    case encircle = "Encircle"
    case payPal = "PayPal"
    case dynamicQRCode = "DynamicQRCode"
    case eVoucher = "EVoucher"
    case safeGold = "SafeGold"
    case safeGoldOthers = "SafeGoldOthers"
    case razorPay = "RazorPay"
    case upiRazorPay = "UPIRazorPay"
    case cardRazorPay = "CardRazorPay"
    static var payTmDisplayName = "PayTM"
    case discountVoucher = "DVoucher"
    
    static var supportedPaymentForms: [PaymentForm] {
        var paymentForms = [PaymentForm]()
        paymentForms.append(PaymentForm.netBanking)
        paymentForms.append(PaymentForm.wallets)
//        if AppSessionManager.sharedInstance.currencyType != CurrencyType.rupee {
            paymentForms.append(PaymentForm.payPal)
//        }
        paymentForms.append(PaymentForm.creditDebitCard)
        paymentForms.append(PaymentForm.emi)
        paymentForms.append(PaymentForm.dynamicQRCode)
        return paymentForms
    }
    
    static var digiGoldSupportedPaymentForms: [PaymentForm] {
        var paymentForms = [PaymentForm]()
        paymentForms.append(PaymentForm.netBanking)
        paymentForms.append(PaymentForm.creditDebitCard)
        return paymentForms
    }
    
    static var supportedOtherPaymentForms: [PaymentForm] {
        var otherPaymentForms = [PaymentForm]()
        otherPaymentForms.append(PaymentForm.encircle)
        otherPaymentForms.append(PaymentForm.giftCard)
        otherPaymentForms.append(PaymentForm.eVoucher)
        otherPaymentForms.append(PaymentForm.discountVoucher)
        otherPaymentForms.append(PaymentForm.safeGold)
        otherPaymentForms.append(PaymentForm.safeGoldOthers)
        return otherPaymentForms
    }
    
    static var razorPaySupportedPaymentForms: [PaymentForm] {
        var paymentForms = [PaymentForm]()
        paymentForms.append(PaymentForm.cardRazorPay)
        paymentForms.append(PaymentForm.upiRazorPay)
        return paymentForms
    }
    
    // in case of thrid party SDKs, default nav bar is required to be shown when the SDK UI is loaded
    var hideDefaultNavBar: Bool {
        switch self {
        case .creditDebitCard:
            return false
        case .wallets:
            return false
        default:
            return true
        }
    }
    var doesRedirectToPaymentGateway: Bool {
        switch self {
        case .creditDebitCard, .wallets:
            return true
        default:
            return false
        }
    }
    
    var enforceMethod: String? {
        switch self {
        case .creditDebitCard:
            return "creditcard|debitcard"
        case .emi:
            return nil //"emi"
        default:
            return nil
        }
    }
    
    var dropCategory: String? {
        switch self {
        case .creditDebitCard:
            return "NB|EMI"
        case .emi:
            return "CC|DC|NB"
        default:
            return nil
        }
    }
    
    var pg: String? {
        switch self {
        case .creditDebitCard:
            return "creditcard|debitcard"
        case .emi:
            return "emi"
        default:
            return nil
        }
    }
}

enum EspotName: String {
    case cart = "Cart_Discount_Espot_INR"
    case cartUsd = "Cart_Discount_Espot_USD"
    case home = "homescreen"
    case brandL2 = "brandLanding"
    case categoryL2 = "categoryLanding"
    case brandOffers = "brandOffers"
    case pdpSlot2 = "APP_PDP_SLOT2"
    case pdpSlot3 = "APP_PDP_SLOT3"
    case sizeGuideSlot = "APP_PDP_SLOT4"
    case couponSlot = "APP_PDP_SLOT5"
    case loadEspot = "loadEspot"
    case plpSlot1 = "APP_PLP_SLOT1"
    case buyingGuide = "buying_guide_content"
}
enum ProtocolDataName: String {
    case giftCardNumber = "GiftCard_Number"
    case encircleCardNumber = "encircle_cardnumber"
    case encircleRedeemPoints = "encircle_redeem_points"
    case giftCardCreationType = "GiftCard_CardCreationType"
    case dVoucherNumber = "DVoucherNumber"
}

enum FilterConstant: String {
    case parentCatalogGroupFilterName = "ParentCatalogGroup"
    case oosFilterName = "Availability"
    case offerPriceFilterName = "OfferPrice_INR"
    case offerPriceUSDFilterName = "OfferPrice_USD"
    case oosFilterSubCategoryName = "true"
    case oosFilterSubCategoryDisplayName = "Include Out of Stock"
    case offerPriceFilterFacetName = "Price"
}

enum SlotName: String {
    case banner = "banners"
    case topBrands = "topBrands"
    case watchesFor = "watchesFor"
}

enum SearchResultLandingPage: String {
    case returnPolicy = "/faq?category=Returns%20and%20exchanges"
}

enum YfretProductOperationType: String {
    case unAvailable = "Unavailable"
    case unPublished = "Unpublished"
    case nonbuyable = "Nonbuyable"
    case notInStock = "Not in Stock"
    case published = "Published"
}

struct BrandConstants {
    static let mia = "Mia"
    static let tanishq = "Tanishq"
}

struct LOBConstants {
    static let jewellery = "jewellery"
    static let watches = "watches"
}

struct ActivePromocodeBrandName {
    static let jewellery = "MobileTQ"
}

struct ProductOverallRatingConstants {
    static let averageScore = "response.bottomline.average_score"
    static let totalReviews = "response.bottomline.total_reviews"
}
struct ProductReviewRequestConstant {
    static let perPage = "per_page"
    static let page = "page"
    static let sort = "sort"
    static let direction = "direction"
}

struct ReviewPostConstant {
    static let domain = "domain"
    static let sku = "sku"
    static let productTitle = "product_title"
    static let productDescription = "product_description"
    static let productUrl = "product_url"
    static let productImageUrl = "product_image_url"
    static let displayName = "display_name"
    static let userEmail = "email"
    static let reviewContent = "review_content"
    static let reviewTitle = "review_title"
    static let reviewScore = "review_score"
    static let userId = "user_reference"
}
struct QuestionPostConstant {
    static let reviewSource = "review_source"
    static let preventDuplicateReview = "prevent_duplicate_review"
    static let productTags = "product_tags"
}


struct ProductReviewResponseConstant {
    static let bottomline = "response.bottomline"
    static let totalReview = "total_review"
    static let averageScore = "average_score"
    static let starDistribution = "star_distribution"
    static let reviews = "response.reviews"
    static let reviewsId = "id"
    static let score = "score"
    static let votesUp = "votes_up"
    static let votesDown = "votes_down"
    static let content = "content"
    static let title = "title"
    static let createdAt = "created_at"
    static let productId = "product_id"
    static let displayName = "user.display_name"
    static let pagination = "response.pagination"
    static let total = "total"
}
struct QuestionAnswerResponseConstant {
    static let questions = "response.questions"
    static let totalQuestions = "response.total_questions"
    static let totalAnswers = "response.total_answers"
    static let page = "response.page"
    static let perPage = "response.per_page"
    static let id = "id"
    static let questionContent = "content"
    static let sortedPublicAnswers = "sorted_public_answers"
    static let answerContent = "content"
    static let votesUp = "votes_up"
    static let votesDown = "votes_down"
}

struct MyReviewResponseConstant {
    static let reviews = "response.reviews"
}

struct MyReviewsConstant {
    static let reviewTitle = "title"
    static let reviewDescription = "content"
    static let rating = "score"
    static let date = "updated_at"
    static let products = "products"

}

struct MyReviewProductsConstant {
    static let productName = "Product.name"
    static let productImage = "Product.images"
    static let productUrl = "Product.product_url"
}

struct MyReviewProductImageConstant {
    static let productImageUrl = "image_url"
}

struct MyReviewRequestConstant {
    static let userReference = "user_reference"
}

struct YotpoOrderRequestConstant {
    static let validateData = "validate_data"
    static let platform = "platform"
    static let email = "email"
    static let customerName = "customer_name"
    static let orderId = "order_id"
    static let orderDate = "order_date"
    static let currency = "currency_iso"
    static let products = "products"
    static let productUrl = "url"
    static let productName = "name"
    static let productImage = "image"
    static let productDescription = "description"
    static let price = "price"
    static let specs = "specs"
    static let upc = "upc"
    static let isbn = "isbn"
    static let productTags = "product_tags"
}
struct PromotedProductsResponseConstant {
    static let products = "response.products"
}

enum PlpResponseConstant {
    static let null = "null"
}

enum PlpRequestConstant {
    static let tryOn = "JW_TX_VIRTUAL_TRYON_TYPE,JW_TX_VIRTUAL_TRYON,JW_TX_VIRTUAL_TRYON_CTG"
}


enum OtpAction: String {
    case generate = "generate"
    case validate = "validate"
}

enum OptInMediumConstant {
    static let optInMediumValue = "TanishqApp"
}

struct CityListResponseConstants {
    static let listOfCities = "listOfCities"
}

struct SubmitCustomerDetailsConstants {
    static let name = "name"
    static let emailId = "emailId"
    static let phone = "phone"
    static let city = "city"
    static let storeName = "storeName"
    static let storeIdentifier = "storeIdentifier"
    static let stlocId = "stlocId"
    static let appointmentDate = "appointmentDate"
    static let notificationFlag = "notificationFlag"
    static let brand = "brand"
    static let appointmentTime = "appointmentTime"
    static let typeOfAppointment = "typeOfAppointment"
    static let brandValue = "WOT"
    static let notificationFlagValue = "y"
    static let defaultStoreIdentifier = "WEC"
    static let defaultStoreLocId = "715924384"
    static let address = "address"
}

struct SubmitCustomerDetailsResponseConstants {
    static let appointmentDate = "appointmentDate"
    static let phone = "phone"
    static let storeName = "storeName"
    static let storeHours = "storeHours"
    static let state = "state"
    static let storeAddress = "storeAddress"
    static let city = "city"
    static let country = "country"
    static let message = "message"
    static let pincode = "pincode"
    static let appointmentTime = "appointmentTime"
    static let storeEmailId = "storeEmailId"
    static let email = "email"
    static let longitude = "longitude"
    static let latitude = "latitude"
    static let appointmentType = "appointmentType"
    static let storeId = "storeId"
}

struct GoldRateRequestConstants {
    static let name = "name"
    static let value = "GOLD_RATE_TODAY_24,GOLD_RATE_TODAY_22,GOLD_RATE_TODAY_18"
}

struct GoldRateResponseConstants {
    static let goldRate22 = "GOLD_RATE_TODAY_22"
    static let goldRate18 = "GOLD_RATE_TODAY_18"
    static let goldRate24 = "GOLD_RATE_TODAY_24"
}

struct CancelOrderItemRequestConstants {
    static let cancelReason = "cancelReason"
    static let otherReason = "otherReason"
    static let quantity = "quantity"
    static let remainingQuantity = "remainingQuantity"
    static let orderItemId = "orderItemId"
    static let primeLineNo = "primeLineNo"
    static let subLineNo = "subLineNo"
}

struct StoreDetailResponseConstant {
    static let addressLine = "addressLine"
    static let lastName = "lastName"
    static let zipCode = "zipCode"
    static let city = "city"
    static let state = "state"
    static let country = "country"
}

struct StoreHoursResponseConstant {
    static let displayName = "DISPLAYNAME"
    static let value = "VALUE"
}

struct DigiGoldOtpResponseConstant {
    static let message = "message"
    static let isOTPValidated = "isOTPValidate"
    static let responseCode  = "ResponseCode"
}

struct RedeemSafeGoldResponseConstant {
    static let sgAmountRedeemed = "sgAmountRedeemed"
    static let sgTQAmountRedeemed = "sgTQAmountRedeemed"
    static let wcsPayId  = "wcsPayId"
    static let sgOthersAmountRedeemedINR = "sgOthersAmountRedeemedINR"
    static let sgOthersAmountRedeemed = "sgOthersAmountRedeemed"
    static let sgTQAmountRedeemedINR  = "sgTQAmountRedeemedINR"
    static let Currency = "Currency"
    static let orderId = "orderId"
}

/* {"sgAmountRedeemed":200.0,
 "sgTQAmountRedeemed":0.0200,
 "wcsPayId":"639502",
 "sgOthersAmountRedeemedINR":200.0,
 "sgOthersAmountRedeemed":0.0401,
 "sgTQAmountRedeemedINR":100.0,
 "Currency":"INR",
 "orderId":"214779759"}
 */



struct CountryResponseConstants {
    static let countryListWithCode  = "countryListWithCode"
    static let name  = "name"
    static let code  = "code"
    static let state  = "State"
    static let city  = "City"
    static let countryList = "CountryList"
    static let countryName = "Name"
    static let flag  = "Flag"
    static let countryCode  = "Code"
    static let noOfDigits = "NoOfDigits"
}

struct OTPResponseConstant {
    static let message = "message"
    static let success = "success"
}

struct StoreOrderResponseConstant {
    static let data  = "Data"
    static let locationCode  = "LocationCode"
    static let docNo  = "DocNo"
    static let docDate  = "DocDate"
    static let itemCode  = "ItemCode"
    static let unitPrice  = "UnitPrice"
    static let totalTax  = "TotalTax"
    static let totalValue  = "TotalValue"
    static let discount  = "Discount"
    static let quantity  = "Quantity"
    static let productUrl  = "ProductUrl"
    static let productName  = "ProductDescription"
    static let netWeight  = "NetWeight"
    static let diamondWeight  = "TotalDlWeight"
    static let diamondClarity  = "Diclarity"
    static let diamondColor  = "DiamondColor"
    static let stoneWeight  = "TotalCLRWeight"
    static let stoneType  = "StoneTypeCode"
    static let karatage = "Karatage"
    static let currency = "Currency"
    static let metalType = "MetalType"
    static let imageURLREF = "ImageURLREF"
    static let DigiCMLink = "DigiCMLink"
}
struct YotpoReviewRequestConstant {
    static let product = "product"
    static let externalId = "external_id"
    static let name = "name"
    static let description = "description"
    static let url = "url"
    static let imageUrl = "image_url"
    static let price = "price"
    static let currency = "currency"
    static let inventoryQuantity = "inventory_quantity"
    static let is_discontinued = "is_discontinued"
    static let group_name = "group_name"
    static let brand = "brand"
    static let sku = "sku"
    static let mpn = "mpn"
    static let gtins = "gtins"
    static let declared_type = "declared_type"
    static let value = "value"
    static let custom_properties = "custom_properties"
    static let is_blocklisted = "is_blocklisted"
    static let review_form_tag = "review_form_tag"
}

struct CoaOrderResponseConstant {
    static let coaDetail = "CoADetail"
    static let coaProductDetails = "CoAProductDetails"
    static let invoiceNo = "InvoiceNo"
    static let dateOfSale = "DateOfSale"
    static let coaProductDetail = "CoAProductDetail"
    static let purity = "Purity"
    static let productCode = "ProductCode"
    static let netMetalWeight = "NetMetalWeight"
    static let diamondDetails = "DiamondDetails"
    static let diamondClarity = "DiamondClarity"
    static let diamondWeight = "DiamondWeight"
    static let diamondColor = "DiamondColor"
    static let otherStoneDetails = "OtherStoneDetails"
    static let stoneWeight = "StoneWeight"
    static let stoneType = "Stonetype"
}

struct AppDownTimeResponseConstant {
    static let downTimeFlag = "downTimeFlag"
    static let downTimeMessage = "downTimeMessage"
}

struct AccountDeletionDetailsConstants {
    static let name = "FirstName"
    static let emailId = "EmailId"
    static let phone = "Phone"
    static let comments = "Message"
    static let ticketType = "TicketType"
    static let ticketTypeValue = "AccountDeletion"
    static let brand = "Brand"
}

struct ImageSearchRequestConstants {
    static let imageSearchValue = "AIzaSyAKoIbULnHUnEMICVSBLRnT1pvUYluq3pc"
    static let content = "content"
    static let image = "image"
    static let type = "type"
    static let imageSearchTypeValue = "PRODUCT_SEARCH"
    static let maxResults = "maxResults"
    static let features = "features"
    static let productSet = "productSet"
    static let productSetValue = "projects/elasticsearch-335910/locations/us-east1/productSets/Tanishq"
    static let categoryItem = "homegoods-v2"
    static let productCategories = "productCategories"
    static let productSearchParams = "productSearchParams"
    static let imageContext = "imageContext"
    static let requests = "requests"
}

struct ImageSearchResponseConstants {
    static let responses = "responses"
    static let productSearchResults = "productSearchResults"
    static let results = "results"
    static let score = "score"
    static let product = "product"
    static let productLabels = "productLabels"
    static let key = "key"
    static let value = "value"
}
