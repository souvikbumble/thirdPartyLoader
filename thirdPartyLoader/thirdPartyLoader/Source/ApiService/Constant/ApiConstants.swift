//
//  ApiConstants.swift
//  TanishqJewellery
//
//  Created by Kavitha on 06/02/20.
//  Copyright © 2020, TITAN LTD.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

enum ApiUrlPath {
    static let ghsSlots = "espot/tgh/"
    static let rivaahSlots = "espot/rivaah_ashirvad/"
    static let ghsEndPoint = "tgh/"
    static let collectionSlots = "collection_landing_page"
    static let hamburgerMenu = "espot/hamburgerMenu"
    static let brideDetail = "espot/bridedetailpage/"
    static let collection = "espot/collection/"
    static let allCollections = "espot/collections"
    static let homePage = "homepage/"
    static let occasionLandingPage = "espot/occasionlandingpage/"
    static let occasionDetail = "espot/occasiondetail/"
    static let categoryLandingPage = "espot/categoryLandingPage/"
    static let brandLandingPage = "espot/brandLandingPage/"
    static let exclusiveOnApp = "espot/exclusiveOnApp"
    static let brandStoryLandingPage = "espot/brandstory/"
    static let brideList = "espot/bridelist/"
    static let brideStoryList = "espot/bridestorylist/"
    static let offerLandingPage = "espot/offers/"
    static let feedback = "ConsumerAppFeedback/api/feedback"
    static let generateOtp = "auth/util/otp"
    static let verifyOtp = "auth/validateOTP/util/otp"
    static let getStoreAppointmentStores = "/storeAppointment/store_list"
    static let getStoreAppointmentCites = "/storeAppointment/storelocator/cities"
    static let submitCustomerDetails = "/storeAppointment/bookAppointment"
    static let getBannerDetails = "/espot/bookservicebanner"
    static let goldRate = "/home/goldRate"
    static let encryptionKey = "security/get-config-data"
    static let loginBanner = "espot/loginbanner"
    static let visitorID = "adobe/storeVisitorId?visitorId="
    static let submitAccountDeletion = "/salesforce/accountDeletion"
    static let getAccountDeletionStatus = "/salesforce/getUserDeletionFlag"
}

enum DigiGoldPath {
    static let digiGoldNonLoggedIn = "/espot/digigold_nl"
    static let digiGoldCommonEndpoint = "/espot/digigold"
    static let digiGoldLoggedIn = "/espot/digigold/digigold"
    static let digiGoldBuySell = "/espot/digigold/digigold_buysell"
    static let transactionAPI = "/digigold/getDGTransactions"
    static let verifyKYCAPI = "/digigold/validateUserDetails"
    static let getUserBalanceAPI = "/digigold/getUserBalance"
    static let buySellSlotAPI = "/digigold/getDGTransactions"
    static let buyGoldRate = "/digigold/getLivePrice"
    static let sellGoldRate = "/digigold/getLiveSellPrice"
    static let buyGoldInrToGram = "/digigold/buy/calculate-gm"
    static let buyGoldGramToInr = "/digigold/buy/calculate-inr"
    static let getSellCalculatedPrice = "/digigold/getSellCalculatedPrice"
    static let buyVerify = "/digigold/buyVerify"
    static let sellVerify = "/digigold/sellVerify"
    static let getBankList = "/digigold/getBankList"
    static let addBankDetails = "/digigold/upload-bank-details"
    static let buySellTopSlotEndpoint = "BuySell"
    static let transactionCommonEndPoint = "/espot/digigold/%@?subtype=json"
    static let fetchBalancePayment = "digigold/fetchBalancePayment"
    static let redeemDigiGoldSendOtp = "digigold/generateOTP"
    static let redeemDigiGoldVerifyOtp = "digigold/validateOTP"
    static let redeemSafeGold = "/digigold/redeemSafeGold"
    static let digiGoldExchange = "/espot/digigold/digigold_exchange"
    static let getOtpForResetMpin = "/digigold/getDGOTP"
}

enum TghUrlPath {
    static let accountList = "ghs/onlineUserGetAccount"
    static let accountDetail = "ghs/getGHSAccountDetail"
    static let profileDetail = "ghs/getCustomerDetails"
    static let nomineeDetail = "ghs/getNomineeDetails"
    static let instaPayRequest = "ghs/instaPaymentRequest"
    static let paymentRequest = "ghs/paymentRequest"
    static let confirmPayment = "/ghs/getPaymentResponse"
    static let autoDebitConfirmPayment = "ghs/PaymentResponseSI"
    static let validateAutoDebitAccount = "ghs/ValidateforSICreation"
    static let autoDebitAccountDetail = "ghs/getGHSAccountDetailForSI"
    static let registerInstaPay = "ghs/registerInstaPay"
    static let autoDebitPayRequest = "ghs/PaymentRequestSI"
    static let paymentGatewayList = "ghs/getPaymentgatewayList"
    static let restPassword = "auth/ghs/resetpassword"
    static let updateCustomerDetails = "ghs/onlineInsertUpdateCustomerDetail"
    static let searchForState = "ghs/searchForstate"
    static let ghsMore = "tgh/More"
    static let saveNewCutomerRequest = "ghs/saveNewCustomerRequest"
    static let getMobileAppNewCustomer = "ghs/getMobileAppNewCustomer"
    static let tghNonLogin = "home_landing/tgh_nl"
    static let getPaymentMethod = "ghs/getPaymentMethodforMobileApp"
    static let getCancelAchSiAccountList = "/ghs/CancelACHSIGetAccounts"
    static let getAchAccountDetail = "/ghs/CancelACHSIGetAccountDetailsForACH"
    static let getSiAccountDetail = "/ghs/CancelACHSIGetAccountDetailsForSI"
    static let sendOtp = "/ghs/CancelACHSISendOTP"
    static let verifyOtp = "/ghs/CancelACHSIVerifyOTPAndCancel"
    static let getNetbankingBankList = "/ghs/getNetBankingPGForMobileAPP"
}

enum RivaahUrlEndPoints {
    static let espot = "/espot"
    static let rivaahNonLogin = "home_landing/rivaah_nl"
    static let rivaahLogin = "home_landing/rivaah_login"
    static let rivaahAccountLogin = "/espot/rivaahloginaccount"
    static let getPaymentDetail = "/ghs/getGHSPaymentDetailForScheme"
}

enum EVoucherEndPoints {
    static let eVoucherBalance = "/payment/@self/getEVoucherBalance"
    static let redeemEVoucher = "/payment/@self/redeemEVoucher"
}

enum EGiftCardEndPoints {
    static let themes = "/espot/e-giftcard/themes"
    static let howToUse = "/espot/e-giftcard/howtouse"
    static let termsAndCondition = "/espot/e-giftcard/termsandconditions"
}

enum DCVoucherEndpoints {
    static let sendDCVoucherOtp = "/payment/@self/sendDVOTP"
    static let redeemDCVoucher = "/payment/@self/redeemDVoucher"
}

enum MenuResponseKey {
    static let layoutType = "layoutType"
    static let title = "title"
    static let tapAction = "tapAction"
    static let icon = "icon"
    static let assets = "assets"
    static let contentLink = "contentLink"
    static let contentType = "contentype"
    static let bgColor = "background-color"
    static let tag = "tag"
}

enum BrideDetailResponseKey {
    static let title = "title"
    static let description = "description"
    static let image = "image"
    static let assets = "assets"
    static let thumbnail = "thumbnail"
    static let contentLink = "contentLink"
    static let contentType = "contentType"
    static let assetInfo = "assetInfo"
    static let itemTitle = "itemTitle"
    static let itemThumbnail = "itemThumbnail"
    static let itemDescription = "itemDescription"
    static let layoutType = "layoutType"
}

enum BrideStoryResponseKey {
    static let comment = "comment"
    static let commentColor = "commentColor"
    static let video = "video"
    static let profileImage = "profileImage"
    static let profileName = "profileName"
    static let videoThumbnail = "videoThumbnail"
    static let profileNameColor = "profileNameColor"
    static let profileThumbnail = "profileThumbnail"
    static let location = "location"
    static let locationColor = "locationColor"
}

enum TghHomePageResponseKey {
    static let profileEmail = "profileEmail"
    static let profileEmailColor = "profileEmailColor"
}

enum RivaahPageResponseKey {
    static let itemStep = "itemStep"
    static let itemStepColor = "itemStepColor"
}

enum UpcomingEventResponseKey {
    static let eventLocation = "eventLocation"
    static let eventLocationColor = "eventLocationColor"
    static let eventDate = "eventDate"
    static let eventDateColor = "eventDateColor"
    static let eventVenue = "eventVenue"
    static let eventVenueColor = "eventVenueColor"
    static let eventTime = "eventTime"
    static let eventTimeColor = "eventTimeColor"
    static let eventNote = "eventNote"
    static let eventNoteColor = "eventNoteColor"
}

enum OccasionResponseKey {
    static let occasionType = "occasionType"
}

enum OccasionDetailResponseKey {
    static let title = "title"
    static let image = "image"
    static let specialInstructionNeedsToDisplay = "specialInstructionNeedsToDisplay"
    static let specialInstruction = "specialInstruction"
    static let tips = "tips"
    static let slots = "slots"
}

enum SpecialInstructionResponseKey {
    static let title = "title"
    static let titleColor = "titleColor"
    static let description = "description"
    static let descriptionColor = "descriptionColor"
    static let bgColor = "bgColor"
    static let actionTitle = "actionTitle"
    static let actionTitleColor = "actionTitleColor"
    static let actionBGColor = "actionBGColor"
    static let actionBorderColor = "actionBorderColor"
}

enum TipsResponseKey {
    static let title = "title"
    static let name = "name"
    static let description = "description"
    static let features = "features"
}

enum FeaturesResponseKey {
    static let title = "title"
    static let thumbnail = "thumbnail"
    static let description = "description"
    static let titleColor = "titleColor"
    static let descriptionColor = "descriptionColor"
}

enum CollectionResponseKey {
    static let banners = "banners"
    static let offers = "offers"
    static let assets = "assets"
}

enum BrandStoryResponseKey {
    static let designation = "designation"
    static let designationColor = "designationColor"
    static let companyName = "companyName"
    static let companyNameColor = "companyNameColor"
    static let innerItemTitle = "innerItemTitle"
    static let innerItemTitleColor = "innerItemTitleColor"
}

enum BannerAssetKey {
    static let contentLink = "contentLink"
    static let contentType = "contentype"
}

enum DefaultValues {
    static let rivaahCollectionName = "rivaah"
    static let engagementOccasionId = "engagement"
    static let engagementOccasionIdSlot = "engagementslot"
    static let titanBrandName = "m-titan"
    static let customerCareNumber = "1800-266-0123"
}

enum FeedbackRequestKey {
    static let emailId = "emailID"
    static let feedback = "feedback"
    static let imageName = "imageName"
    static let mobileOsKey = "mobileOS"
    static let mobileOsValue = "iOS"
    static let appVersion = "appVersion"
    static let fileName = "filename"
}

enum FeedbackResponseKey {
    static let uploadResult = "uploadResult"
    static let errorCode = "errorCode"
    static let errorMSG = "errorMSG"
    static let successErrorCode = 100
}

enum NewCustomerRequestRequestKey {
    static let name = "Name"
    static let mobileNumber = "MobileNo"
    static let pincode = "PinCode"
}

enum GhRequestKey {
    static let accNo = "accno"
    static let mobileNo = "MobileNo"
    static let accNumber = "AccountNo"
    static let customerID = "CustomerID"
    static let amount = "Amount"
    static let ghsCustomerID = "GhsCustomerID"
    static let noOfInstallment = "NoofInstallment"
    static let transactionType = "TransactionType"
    static let paymentGatewayResponse = "PaymentGatewayResponse"
    static let transactionId = "TransactionId"
    static let gatewayProvider = "GatewayProvider"
    static let fiscalYear = "Fiscalyear"
    static let selectedPaymentGateway = "selectedpaymentGateway"
    static let ccEndMonth = "ccEndMonth"
    static let ccEndyear = "ccEndyear"
    static let referPage = "ReferPage"
    static let instaPayTransactionTypeValue = "INSTANTPAYAPP"
    static let instaPayTransactionTypeForGhUserValue = "ADDINSTALLMENTAPP"
    static let autoDebitTransactionTypeValue = "INSTANT SIAPP"
    static let autoDebitTransactionTypeForGhsUserValue = "ADD SIAPP"
    static let oldPassword = "Oldpassword"
    static let newPassword = "Newpassword"
    static let userName = "UserName"
    static let fixedInstallmentScheme = "Fixed_Intallment_Scheme"
    static let goldScheme = "Gold_Scheme"
    static let goldSchemeValue = "0"
    static let paymentGatewayID = "PaymentGatewayID"
}

enum GhCommonResponseKey {
    static let status = "status"
    static let statusKey = "Status"
    static let message = "message"
    static let messageKey = "Message"
}

enum GhAccountResponseKey {
    static let onlineUserGetAccount = "OnlineUserGetAccount"
    static let customerName = "CustomerName"
    static let customerNo = "CustomerNo"
    static let docNo = "DocNo"
    static let shemeCode = "GHSchemeCode"
    static let docDate = "DocDate"
    static let status = "Status"
    static let noOfInstallmentsPaid = "No_Of_Installments_Payed"
    static let maturityDate = "MaturityDate"
    static let totalAmountReceived = "totalAmountReceived"
    static let installmentAmount = "Installment_Amount"
    static let isSmsEmailReminder = "isSmsEmailReminder"
    static let fiscalYear = "FiscalYear"
    static let totalNoOfInstallmentPaid = "TotalNoofInstallmentPaid"
    static let totalInstallmentAmount = "TotalInstallmentAmount"
    static let maturityLocationCode = "MaturityLocationCode"
    static let totalPendingInstallment = "TotalPendingInstallment"
    static let totalPendingAmount = "TotalPendingAmount"
    static let pendingInstallmentDueDate = "PendingInstallmentDueDate"
    static let pendingInstallmentNo = "PendingInstallmentNo"
    static let statementEndDate = "StatementEndDate"
    static let locationCode = "LocationCode"
    static let nextDueDate = "NextDueDate"
    static let paymentDetails = "PaymentDetails"
    static let installmentNumber = "InstallmentNumber"
    static let receiptDate = "ReceiptDate"
    static let paidLocation = "PaidLocation"
    static let receiptNumber = "ReceiptNumber"
    static let dueDate = "DueDate"
    static let installmentAmount1 = "Installamentamount"
    static let trackStatus = "TrackStatus"
    static let schemeType = "SchemeType"
    static let customerId = "CustomerId"
    static let mobileNo = "Mobileno"
    static let enrollmentLink = "enrollmentLink"
    static let estimatedDiscount = "EstimatedDiscount"
    static let noOfInstallmentsLapsed = "NoOfInstallmentsLapsed"
}

enum GhPaymentResponseKey {
    static let requestURL = "RequestURL"
    static let transactionId = "TransactionId"
}

enum UserDetailReponseKey {
    static let userDetails = "userDetails"
    static let kycVerified = "kycVerified"
    static let internationalCustomer = "internationalCustomer"
}

enum GhCustomerResponseKey {
    static let customerDetail = "customerDetail"
    static let accNo = "accno"
    static let accountNo = "accountNo"
    static let customerId = "customerID"
    static let name = "name"
    static let address1 = "address1"
    static let address2 = "address2"
    static let address3 = "address3"
    static let cityName = "cityName"
    static let cityId = "cityId"
    static let stateName = "stateName"
    static let stateId = "stateId"
    static let birthDate = "birthDate"
    static let spouseBirthday = "spouseBirthday"
    static let anniversaryDate = "anniversaryDate"
    static let imageName = "imageName"
    static let residencePhoneNo = "residencePhoneNo"
    static let mobileNo = "mobileNo"
    static let officePhoneNo = "officePhoneNo"
    static let pinCode = "pinCode"
    static let emailId = "emailID"
    static let customerNo = "customerNo"
    static let spouseName = "spouseName"
    static let createdDate = "createdDate"
    static let maritalStatus = "maritalStatus"
    static let status = "status"
    static let townName = "townName"
    static let password = "password"
    
    static let customerDetail2 = "CustomerDetail"
    static let stateName2 = "StateName"
}

enum GhCustomerRequestKey {
    static let customerId = "CustomerID"
    static let name = "Name"
    static let address1 = "Address1"
    static let address2 = "Address2"
    static let address3 = "Address3"
    static let cityName = "CityName"
    static let cityId = "City"
    static let state = "State"
    static let birthDate = "BirthDate"
    static let spouseBirthday = "SpouseBirthday"
    static let anniversaryDate = "AnniversaryDate"
    static let mobileNo = "MobileNo"
    static let pinCode = "PinCode"
    static let emailId = "EmailID"
    static let spouseName = "SpouseName"
    static let lastModifiedId = "LastModifiedID"
    static let lastModifiedDate = "LastModifiedDate"
    static let lastModifiedLocation = "LastModifiedLocation"
    static let maritalStatus = "MaritalStatus"
}

enum GhNomineeResponseKey {
    static let getNomineeDetails = "GetNomineeDetails"
    static let nomineeName = "NomineeName"
    static let phoneNumber = "PhoneNumber"
    static let address = "Address"
    static let dateOfBirth = "DateofBirth"
    static let relation = "Relation"
}

enum GhAutoDebitResponseKey {
    static let ghsAccountDetail = "GHSAccountDetail"
    static let ghAccountNo = "GHAccountNo"
    static let customerName = "CustomerName"
    static let numberOfPendingInstallments = "NumberOfPendingInstallments"
    static let installmentAmount = "InstallmentAmount"
    static let startDate = "StartDate"
    static let endDate = "EndDate"
}

enum GhAutoDebitAccountResponseKey {
    static let ghsAccountDetail = "GHSAccountDetail"
    static let accountNo = "GHAccountNo"
    static let customerName = "CustomerName"
    static let noOfPendingInstallments = "NumberOfPendingInstallments"
    static let installmentAmount = "InstallmentAmount"
    static let startDate = "StartDate"
    static let endDate = "EndDate"
}

enum GhPaymentGatewayResponseKey {
    static let paymentGatewayList = "PaymentGatewayList"
    static let paymentGatewayName = "PaymentGatewayName"
    static let paymentGateWayID = "PaymentGateWayID"
    static let testAmount = "TestAmount"
    static let isDefault = "isDefault"
}


enum GhPaymentMethodResponseKey {
    static let paymentType = "PaymentType"
    static let paymentGatewayIDAPP = "PaymentGatewayIDAPP"
    static let paymentGatewayList = "PaymentGatewayList"
}

enum RivaahPaymentDetailResponseKey {
    static let installmentAmount = "InstallmentAmount"
    static let gracePeriodMessage = "GracePeriodMessage"
    static let installmentAllowed = "InstallmentAllowed"
}

enum GoldRateResponseKey {
    static let rateValidity = "rate_validity"
    static let currentPrice = "current_price"
    static let applicableTax = "applicable_tax"
    static let rateId = "rate_id"
}

///Response key for Buy INR to Gram and Buy Gram to INR
enum GoldBuyCalculateResponseKey {
    static let calculateGramWithTax = "calculateGramWithTax"
    static let taxValue = "taxValue"
    static let calculatePriceWithTax = "calculatePriceWithTax"
}

///Response key for Sell INR to Gram and Sell Gram to INR
enum GoldSellCalculateResponseKey {
    static let calculateSellGrams = "calculateSellGrams"
    static let calculateSellPrice = "calculateSellPrice"
}

///Request key for Buy INR to Gram and Buy Gram to INR
enum GoldBuyCalculateRequestKey {
    static let purchaseGoldAmount = "purchase_gold_amount"
    static let goldRate = "gold_rate"
    static let applicableTax = "applicable_tax"
    static let purchaseGoldGram = "purchase_gold_gram"
}

///Request key for Sell INR to Gram and Sell Gram to INR
enum GoldSellCalculateRequestKey {
    static let sellGoldAmount = "sell_gold_amount"
    static let goldRate = "gold_rate"
    static let sellGoldGram = "sell_gold_gram"
}

enum GoldBuySellVerifyRequestKey {
    static let goldRate = "gold_rate"
    static let buyVerify = "buyVerify"
    static let goldAmount = "gold_amount"
    static let buyPrice = "buy_price"
    static let sellPrice = "sell_price"
    static let brand = "brand"
    static let sellBrand = "Brand"
}

enum GoldBuySellVerifyResponseKey {
    static let txId = "tx_id"
}

enum TransactionSlotRequestKey {
    static let transactionSuccess = "digigold_sell_transaction"
    static let transactionFailure = "digigold_transaction_failure"
    static let orderSuccess = "digigold_transaction"
}

enum DCVoucherSendOTPResponseKey {
    static let voucherBalance = "voucherBalance"
    static let DVEligibleItemsTotalAmount = "DVEligibleItemsTotalAmount"
    static let Currency = "Currency"
    static let MobileNumber = "MobileNumber"
    static let isAllowedGoldCoin = "isAllowedGoldCoin"
}

enum DCVoucherSendOTPRequestKey {
    static let dvCardNumber = "dvCardNumber"
    static let firstRedemption = "firstRedemption"
}

enum DCVoucherRedeemRequestKey {
    static let dvCardNumber = "dvCardNumber"
    static let dvOTP = "dvOTP"
    static let dvRedeemAmount = "dvRedeemAmount"
}

enum DCVoucherRedeemResponseKey {
    static let orderId = "orderId"
    static let isPIAffected = "isPIAffected"
}

enum VoucherBalanceResponseKey {
    static let giftCardBalance = "GiftCardBalance"
    static let giftCardTransactionId = "GiftCard_TransactionId"
    static let giftCardTermAppVersion = "GiftCard_TermAppVersion"
    static let phone = "Phone"
    static let giftCardDateAtClient = "GiftCard_DateAtClient"
    static let giftCardPOSName = "GiftCard_POSName"
    static let giftCardMerchantOutletName = "GiftCard_MerchantOutletName"
    static let gcEligibleItemsTotalAmount = "GCEligibleItemsTotalAmount"
    static let giftCardBatchNumber = "GiftCard_BatchNumber"
    static let giftCardAcquirerId = "GiftCard_AcquirerId"
    static let giftCardPOSEntryMode = "GiftCard_POSEntryMode"
    static let giftCardOrganizationName = "GiftCard_OrganizationName"
    static let giftCardPOSTypeId = "GiftCard_POSTypeId"
    static let giftCardApprovalCode = "GiftCard_ApprovalCode"
    static let payMethodId = "PayMethodId"
    static let giftCardType = "GiftCardType"
    static let currency = "Currency"
    static let giftCardIsForwardingEntityExists = "GiftCard_IsForwardingEntityExists"
    static let imageURL = "imageURL"
}

enum RedeemVoucherResponseKey {
    static let wcsPayId = "wcsPayId"
    static let giftCardAmountUpdated = "GiftCardAmountUpdated"
    static let giftCardAmountRedeemed = "GiftCardAmountRedeemed"
    static let currency = "Currency"
    static let orderId = "orderId"
}

enum VoucherBalanceRequestKey {
    static let gcCardNumber = "gcCardNumber"
}

enum RedeemVoucherRequestKey {
    static let gcCardNumber = "gcCardNumber"
    static let gcCardPin = "gcCardPin"
    static let gcRedeemAmount = "gcRedeemAmount"
}

enum RedeemSafeGoldRequestKey {
    static let rateId = "rate_id"
    static let tanishqGold = "gold_amount_tq"
    static let otherGold = "gold_amount_oth"
    static let safeGoldUserId = "safeGoldUserId"
    static let channel = "channel"
    static let Brand = "Brand"
    static let sgOTP = "sgOTP"
    static let goldRate = "gold_rate"
    static let mobileNumber = "mobileNum"
}

enum GiftCardThemeConstant {
    static let themes = "Themes"
    static let id = "id"
    static let name = "name"
    static let imageUrl = "imgUrl"
    static let subThemes = "subthemes"
    static let subImageUrl = "subImgUrl"
}

enum EGiftCardTemplateConstant {
    static let response = "response"
}

enum CancelAchSiResponseKey {
    static let ghs = "GHS"
    static let rivaah = "Rivaah"
    static let ach = "ACH"
    static let si = "SI"
    static let accountNumber = "AccountNo"
    
}

enum CancelAchSiAccountDetailResponseKey {
    static let siCreatedDate = "SICreatedDate"
    static let customerName = "CustomerName"
    static let installmentAmount = "InstallmentAmount"
    static let noOfMonthsForSi = "NoOfMonthsForSI"
    static let siFromDate = "SI_FromDate"
    static let siToDate = "SI_ToDate"
    static let remainingMonthsForDeduction = "RemainingMonthsForDeduction"
    static let achCreatedDate = "ACHCreatedDate"
    static let noOfMonthsForAch = "NoOfMonthsForACH"
    static let achFromDate = "ACH_FromDate"
    static let achToDate = "ACH_ToDate"
    static let bankAccountNo = "BankAccountNo"
    static let bankAccountName = "BankAccountName"
    static let bankName = "BankName"
    static let ifscCode = "IFSC_Code"
}

enum CancelAchSiAccountDetailRequestKey {
    static let mobileNo = "MobileNo"
    static let accountNumber = "AccountNo"
    static let type = "Type"
    static let resend = "Resend"
    static let otp = "OTP"
    static let achType = "ACHCancel"
    static let siType = "SICancel"
}

enum HomeScreenGoldRateResponseKey {
    static let homeScreenGoldRateKey = "HomeGoldRateResponseKey"
}

enum GhBankListResponseKey {
    static let bankName = "BankName"
    static let paymentGatewayIDAPP = "PaymentGatewayIDAPP"
    static let bankList = "BankList"
}

enum AccountDeletionResponseKey {
    static let status = "status"
    static let message = "message"
    static let ticketNumber = "sfcaseDetails"
}
