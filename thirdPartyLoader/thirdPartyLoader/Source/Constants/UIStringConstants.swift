//
//  UIStringConstants.swift
//  Titan
//
//  Created by Kavitha on 09/01/18.
//  Copyright © 2018, Cognizant Technology Solutions.
//  Written under contract by Robosoft Technologies Pvt. Ltd.
//

import UIKit

enum RatingsAlertConstants {
    static let alertTitle  = "Success!"
    static let alertDescription  = "You have successfully posted a review. We will publish it soon."

    static let alertFailTitle  = "Failed!"
    static let alertFailDescription  = "Review posting failed. Please try again later."
}

enum ErrorStringConstants {
    static let invalidRedemptionAmountError = "Invalid amount entered for redemption. Please enter an amount equal to or less than the total amount(in rupees) of jewellery items in cart."
    static let workInProgress  = "Work In Progress"
    static let unknownErrorMessage = "Something went wrong"
    static let networkUnavailableMessage = "Please check your network connection."
    static let purchaseTimeoutMessage = "Session Time out"
    static let serverConnectionFailure = "Unable to connect to server. Please try after some time."
    static let dataUnavailable = "Products not found"
    static let dataNotFound = "Data not found"
    static let noServiceCentersFound = "No Service centres found"
    static let failedTitle = "Error!"
    static let sessionTimeOutTitle = "Session Expired"
    static let sessionTimeOutMessage = "Please re-login to continue"
    static let guestSessionTimeOutMessage = "Clearing previous guest data"
    static let countryCodeErrorTitle = "Country call code list"
    static let noAddressFound = "Add address"
    static let locationServiceUnavailable = "Location service is disabled"
    static let unableToConnectToServer = "Our servers are busy . Please try after sometime"
    static let boardNameSuccess = "Board name created successfully"
    static let boardNameFailed = "Board name creation failed"
    static let login = "LOGIN"
    static let loginToAddOrRemoveWishlistItem = "Please Login to add product to wishlist."
    static let loginToAccessWishlist = "Please login to access wishlist."
    static let loginToAccessOrder = "Please login to access Orders."
    static let loginToCheckoutItems = "Please login to checkout items"
    static let deleteBoardConfirmationTitle = "Delete wishlist"
    static let deleteBoardConfirmationMessage = "Are you sure you want to delete the wishlist"
    static let wishlistDeleteBoardConfirmationMessage = "Are you sure you want to delete"
    static let itemDeleteBoardConfirmationMessage = "Are you sure you want to delete item from the wishlist"
    static let wishlistDeletedMessage = "The wishlist \"BOARD_NAME\" has been deleted successfully"
    static let sameProductCompare = "Product already added to Compare"
    static let productCompareMaximum = "Can’t compare more than two products, please delete any product from compare window"
    static let wishListItemDeletedMessage = "Item removed from wishlist"
    static let cartItemDeletedMessage = "Item removed from cart"
    static let invalidBoardNameMessage = "Enter a valid board name"
    static let itemAddedTocart = "Product added to cart"
    static let deleteCartItemTitle = "Confirm Deletion"
    static let deleteCartItemMessage = "Are you sure you want to delete this item?"
    static let sharelinkUnavailable = "Share link is not available"
    static let loginToUpdateSettings = "Please login to view/update the settings"
    static let loginToViewDigilocker = "Please login to view your orders"
    static let loginToGiveFeedback = "Please login to give feedback"
    static let unableToGetAccountDetail = "Unable to get the account details"
    static let unableToUpdateDetail = "Unable to update the account details"
    static let settingsUpdatedSuccessfully = "Settings updated successfully"
    static let settingsUpdateFailed = "Unable to update the Settings"
    static let pleaseLogin = "Please login"
    static let logoutSuccess = "Logged out successfully"
    static let logoutFailed = "Failed to log out"
    static let shareFailed = "Failed to share"
    static let shareSuccess = "Share is successful"
    static let pdfDownloadSuccessful = "Invoice is downloaded successfully"
    static let pdfDownloadFailure = "Failed to download the Invoice"
    static let itemDeliveryNotAvailable = "Item is not available"
    static let fewOrderItemsAreNotAvailable = "Some of the items in your order are not available"
    static let fewOrderItemsOutOfStock = "Some of the items in your cart are out of stock"
    static let modifyProductInWishlist = "Product already in %@ wishlist, to modify"
    static let fewCartItemsServiceabilityNotAvailabe = "For some of the items serviceability is not available"
    static let itemServiceabilityNotAvailable = "Serviceability not available"
    static let noChangeInBoardName = "No change in board name"
    static let addedToWishlist = "Added to wishlist"
    static let cancelOrder = "Cannot cancel this order"
    static let unableToGetCityOrPincode = "Unable to get city/pin code from location coordinates"
    static let productWishlisted = "Product has been wishlisted"
    static let emailIdUnavailable = "Email Id not available"
    static let fbSigninFailed = "Facebook signin failed"
    static let authTotkenUnavailable = "Auth token not available"
    static let emailPermissionNotGranted = "Email permission is not granted"
    static let fbSigninCancelled = "Facebook signin cancelled"
    static let googleSigninCancelled = "Google signin cancelled"
    static let googleSigninFailed = "Google signin failed"
    static let appleSigninCancelled = "Apple signin cancelled"
    static let orderCancellationOtherReason = "Please enter the cancellation reason."
    static let productIdNotFound = "Product ID not found"
    static let productsOfDifferentCategory = "Products are from different categories"
    static let giftCardPurchase = "Gift Card can only be purchased with INR"
    static let encircleErrorMessage = "Sorry we could not fetch your encircle details, please add your encircled linked mobile number"
    static let internationalAdressError = "Currently we are not serving international orders."
    static let errorCodeForGiftcard = "ERR_MSG_ADDRESS_MISSING"
    static let brandsListEmpty = "Sorry, no stores availablefor this pincode/city. Please try with a different pincode/city."
    static let invalidContentLink = "Invalid content link"
    static let contentLinkNotFound = "Content link not found"
    static let assetsNotFound = "Assets not found"
    static let contentLinkNotHandled = "Content link not handled currently"
    static let invalidAmountRange = "Installment amount should be within ₹2,000 and ₹10,00,000"
    static let invalidAmount = "Installment amount should in multiples of ₹1000"
    static let speechRecognitionDenied = "User denied access to speech recognition"
    static let speechRecognitionRestricted = "Speech recognition restricted on this device"
    static let speechRecognitionNotDetermined = "Speech recognition not yet authorized"
    static let audioSessionPropertiesNotSet = "audioSession properties weren't set because of an error."
    static let unableToCreateSpeechRecognitionObject = "Unable to create an SFSpeechAudioBufferRecognitionRequest object"
    static let audioEngineCouldnotStart = "audioEngine couldn't start because of an error."
    static let deviceRootedErrorTitle = "Device Rooted"
    static let deviceRootedErrorDesc = "This application is not supported on rooted devices."
    static let noPendingInstallments = "No pending installments"
    static let noEmailOrMobile = "Mobile number or email not found"
    static let pdfNotFound = "PDF was not found"
    static let invalidOTP = "Please enter valid OTP"
    static let emptyReviewTitle = "Please enter headline for your review"
    static let emptyReviewDescription = "Please enter description"
    static let emptyQuestion = "Please enter Question"
    static let invalidRaBenefitAmount = "Installment amount should be within ₹20,000 and ₹1,00,00,000"
    static let forbiddenErrorTitle = "Tanishq"
    static let forbiddenErrorMessage = "Something went wrong, Please try after some time."
    static let minAmountError = "Minimum amount for transaction can't be less than 100"
    static let maxAmountError = "Maximum amount for transaction cannot be more than 5000000. Please enter a valid amount"
    static let sellAmountError = "Sellable gold amount cannot be greater than Tanishq Caratlane Gold Balance. Please enter a valid amount."
    static let eVoucherErrorMessage = "Please enter valid E-Voucher card number"
    static let redeemErrorMessage = "Minimum amount for transaction cannot be less than %@. Please enter a valid amount"
    static let mobileNumberCode = "Mobile number code is not available"
    static let unRegisteredMobileUser = "Phone number entered is not registered with us. You can register for a new account (or) try to login with other login options."
    static let unRegisteredEmailUser = "Email entered is not registered with us. You can register for a new account (or) try to login with other login options."
    static let onlyGhUserErrorCode = "TX1057"
    static let emptyEmailOrMobile = "Please enter Email id / Mobile number"
    static let invalidEmailID = "Please enter registered Email id/Mobile."
    static let unRegisteredEmailGHS = "Email entered is not registered with us. You can register for a new account (or) try to login with other login options."
    static let insufficientBalanceError = "No sufficient balance"
    static let errorOnAddItemToWishlist = "An unexpected error was encountered while adding the product to wishlist .We request you to retry"
    static let productAddedToWishlist = "The product %@ has been successfully added to your wishlist"
    static let sizingGuideError = "We are sorry! We could not able to fetch the size guide"
    static let productDetailError = "We are unable to fetch details of the product. Kindly  be patient .We would get back soon!"
    static let internalServerError = "Something wasn't right, please try later"
    static let internalServerErrorFromResponse = "internal server error"
    static let emptyComments = "Please enter Comments"
}

enum UILabelStringConstants {
    static let facebook = "Facebook"
    static let googlePlus = "Google"
    static let loginError = "You have entered an invalid email or password"
    static let instruction1 = "Sign in to use coupon linked accounts and Encircle benefits"
    static let instruction2 = "Register for Encircle during checkout & get amazing deals on your favourite Titan Products"
    static let instruction3 = "Please enter your email ID & we will send you a reset link"
    static let instruction4 = "A reset link has been sent to\n"
    static let instruction5 = "Please click on the link in your mail to reset your password"
    static let verifyPasswordInstruction = "For your security, please enter your password."
    static let guest = "Guest"
    static let helloText = "Hello,"
    static let helloTextForNonLoggedIn = "Login or Sign up for exciting deals & offers "
    static let yourEncirclePoints = "Your Encircle points"
    static let tataNeuCoinBalance = "TataNeu Coin Balance: "
    static let guestUser = "Guest User"
    static let redeemPoints = "Redeem points"
    static let hiText = "Hi"
    static let logout = "LOGOUT"
    static let seeMore = "See more"
    static let pickStoreIntstruction = "Pick stores for the pincode"
    static let instructionForServiceCenters = "Locate a Store or Book an Appointment at the nearest store"
    static let locateMe = "Use My Location"
    static let selectBrand = "Select Brand*"
    static let selectLocation = "Enter a pincode or Location"
    static let selectLocationText = "Enter a pincode or Location"
    static let goText = "GO"
    static let searchText = "Search"
    static let showing = "Showing "
    static let storesFor = " Stores for "
    static let productFilterInstruction = "%d products match your style"
    static let compareProductSelectedInstruction = "%d out of 2 items"
    static let specificationListHeaderTitle = "Tech Specs" //"Specification"
    static let seeLess = "See less"
    static let moreOptions = "more options"
    static let addGiftMessage = "Add a gift message"
    static let applyPromoCode = "Apply Promo code"
    static let leftQuanitySuffix = "Left"
    static let free = "FREE"
    static let enterPincode = "Enter Pincode"
    static let enterZipcode = "Enter Zipcode"
    static let enterCountry = "Select Country"
    static let enterOTP = "Enter one time password*"
    static let cod = "Pay On Delivery"
    static let emiStartsAt = "EMI starts at "
    static let change = "Change"
    static let deliveryOptionsFor = "Delivery options for "
    static let openNow = "Open now"
    static let linkEncircleAccountInstruction = "We have noticed that the mobile number below has an affiliated encircle account, but this is not yet verified.\n\nTo make sure we track your points, please verify your number"
    static let encircleLinkMobileTitle = "Mobile*"
    static let validTill = "Valid till"
    static let accountRegistered = "You have successfully registered with Titan." //"You have successfully registered to the app."
    static let shippingAddresss = "Shipping Address"
    static let billingAddress = "Billing Address"
    static let deliveryAddress = "Delivery Address"

    static let encircleRegistrationInstruction = "We don’t currently have your details on your loyalty scheme. To start earning points, please complete our fast registration process.\n\nPlease confirm the details below to register:"
    static let linkEncircleByOTPInstruction = "We’ve noticed that the mobile number below has an affiliated Encircle account, but is not verified yet. To make sure we track your points, please verify your number."
    static let registrationByOTPInstruction = "We’ve sent you a one time password (OTP) to the mobile number, please verify below"
    static let insufficientEncirclePoints = "You have insufficient points to redeem for this order"
    static let contactSupportInstruction = "If you can’t receive your one time password, please contact support on "
    static let myOrdersContactSupportInstruction = "If you have any Questions or Queries with your order please feel to contact us here"
    static let customerSupportNumber = "1800 266 0123"
    static let customerContactMessage = "To cancel or return please call our call center"
    static let points = " points"
    static let encircleCreatedSuccessInstruction = "Encircle Account successfully created!"
    static let encircleLinkSuccessInstruction = "Encircle Account successfully linked!"
    static let redemptionInstruction = "Enter the amount of points, you want to redeem on this card (1 point = %@)"
    static let redemptionSuggestion1 = "You can redeem a "
    static let redemptionSuggestion2 = "maximum of %@ points"
    static let redemptionSuggestion3 = " for this order"
    static let pointsToRedeemPlaceholder = "Points to redeem"
    static let skuPrefix = "SKU #"
    static let playVideo = "PLAY VIDEO"
    static let giftCardMaxRedeemableAmountInstruction1 = "You can redeem a"
    static let giftCardMaxRedeemableAmountInstruction2 = "maximum of %@"
    static let giftCardMaxRedeemableAmountInstruction3 = "for this order"
    static let giftCardRedeemAmountInputInstruction = "Enter any value in multiples of %d"
    static let interNationalOffice = "International office"
    static let selectAccountNumber = "Select Account Number"
    static let installmentNo = "Installment No: %@"
    static let due = "Due %@"
    static let smsBody =  "Dear Customer you have made payment of %@ installment which is %@ in your %@  A/C %@ on %@. Total Val %@. Call 1800-258-2598."
    static let ghUserNoteForLogin = "Golden Harvest/Rivaah Aashirwaad Customers use mobile number to login"
    static let ghUserNoteForFPW = "Golden Harvest/Rivaah Aashirwaad Customers use mobile number"
    static let apply = "Apply"
    static let giftCardRedeemNoteText = "Note: Use Respective Brand's Gift Cards in order to Redeem on the Respective Brand's Product."
    static let liveChatBoxText = "How can I help you?"
    static let liveChatBoxSideText = "Live Chat"
}

struct TextFieldCellConstants {
    static let emailId = "Email"
    static let password = "Create password"
    static let firstName = "First name*"
    static let lastName =  "Last name*"
    static let dateOfBirth = "Date of birth*"
    static let anniversary = "Wedding anniversary"
}

struct TextViewPlaceholderConstant {
    static let addGiftmesssage = "Enter your gift message here"
    static let orderCancellationReason = "Please specify the reason..."
    static let reviewDescriptionMessage = "Enter your review here"
    static let reviewTitleMessage = "Headline for your review"
}

struct GiftCardConstant {
    static let alreadyHaveAGiftCardTitle = "Already have a gift card?"
    static let alreadyHaveAGiftCardDescription = "Tap below to enter your gift card/e-gift card number and 6-digit pin to check balance"
    static let checkBalanceResultTitle = "Your World of Fastrack Gift Card"
    static let  balanceIs = "Balance is"
    static let  checkBalanceResultInstruction = "You can use this amount at checkout to make payment"
    static let  enterAmountInstruction = "Enter any value in multiples of %@"
    static let  enterAmountTextFieldPlaceHolder = "Enter amount"
    static let  enterAmountError = "Please enter amount"
    static let  enterValidAmountError = "Please enter a valid amount"
    static let  loginToCheckBalance = "Please login to check your gift card balance"
    static let  loginAfeterChallengeRecieve = "Please login"
    static let  enterBelowUpperLimit = "Please enter a value below or equal to %@"
    static let  enterValidMultiple = "Please enter the value in multiples of %@"
    static let  zeroAmount = "Please enter a value greater than zero"
    static let giftCardRangeErrorMessage = "Please enter the limit range between %@ to %@"
    static let knowMore = "KNOW MORE"
    static let enterAboveLowerLimit = "Please enter a value above or equal to %@"
    static let myGiftDescription = "This is a gift card from Tanishq. This card can be loaded with a preferred value in any denomination between Rs.100 and Rs. 10,000 with the multiple of Rs. 100 and can be"
    static let tanishqGiftCard = "Your Tanishq Gift Card"
}

struct OrderCancellationConstant {
    static let orderItemCancellationRequestInstruction = "You are about to cancel %@ from your order, please let us know the reason for this cancellation"
    static let orderCancellationRequestInstruction = "You are about to cancel your %@ %@ please let us know the reason for this cancellation"
    static let orderCancellationPlaceholder = "Reason for cancellation"
    static let others = "Others"
    static let orderItemCancellationConfirmationInstruction = "Cancellation request for %@ has been received. Your request will be processed in the next 48 hours"
    static let orderCancellationConfirmationInstruction = "Cancellation request has been received. Your request will be processed in the next 48 hours"

}

struct EmiOptionsConstant {
    static let pdpTermsAndConditionString = "For Terms and Conditions, please "
    static let paymentTermsAndConditionString = "By placing the order, you have read and agreed to Titan.co.in Terms and Conditions and Privacy Policy."
    static let paymentSelectPlanHeaderString = "Please now select a plan"
    static let youPay = "You pay"
    static let selectBankHeaderString = "Please select an option for your easy monthly installments"
    
    static let selectBankTextFieldPlaceholderString = "Bank name*"
}

struct CashOnDeliverConstant {
    static let termsAndConditionString = "Pay On Delivery through Debit or Credit Cards, NetBanking, UPI, Wallets.\n\nBy placing the order, you have read and agreed to Titan.co.in "
    static let verifyHumanString = "Please verify that you are a human before proceeding with Pay On Delivery"
    
}

struct NetBankingScreenConstant {
    static let instruction = "We will redirect you to your bank website to authorize the payment \n\nBy placing the order, you have read and agreed to Titan.co.in "
    static let termsAndCondition = "Terms and Conditions"
    static let and = " and "
    static let privacyPolicy = "Privacy Policy."
}

struct SubscriptionCellConstants {
    static let newsletterSubscription = "Newsletter subscription"
    static let agreeToTermsAndCondition = "I agree to Terms & Conditions"
    static let viewTermsAndConditions = "View Terms & Conditions"
    static let viewPrivacyPolicy = "View Privacy Policy"
    static let createAccount = "REGISTER"
    static let updateOnWhatsapp = "Get updates on "
    static let whatsapp = "Whatsapp"
}
struct GenderCellConstants {
    static let gender = "Title*"
    static let male = "Mr"
    static let female = "Ms"
    static let mrs = "Mrs"
}
struct MobileNumberCellConstants {
    static let countryCallCode = "+91"
    static let country = "India"
    static let countryCode = "IN"
    static let countryCodeIN = "91"
}
struct AddressCellConstants {
    static let defaultAddress = "Set as default address"
    static let save = "SAVE"
}
struct ButtonNameConstants {
    static let panCardVerification = "PAN CARD VERIFICATION"
    static let ok = "OK"
    static let yes = "YES"
    static let no = "NO"
    static let edit = "EDIT"
    static let done = "DONE"
    static let clearAll = "CLEAR ALL"
    static let reset = "RESET"
    static let cancel = "CANCEL"
    static let delete = "DELETE"
    static let loginToContinue = "LOGIN TO CONTINUE"
    static let submit = "SUBMIT"
    static let resendResetLink = "RESEND RESET LINK"
    static let continueShoppingText = "CONTINUE SHOPPING"
    static let shopNow = "SHOP NOW"
    static let verify = "VERIFY"
    static let resendPassword = "RESEND PASSWORD"
    static let resetPassword = "RESET PASSWORD"
    static let updatePassword = "UPDATE PASSWORD"
    static let undoDelete = "UNDO"
    static let next = "NEXT"
    static let visitStore = "Proceed to Book an Appointment"
    static let checkAtStore = "CHECK AT STORE"
    static let moveToCart = "Move to Cart"
    static let notifyMe = "Notify Me"
    static let addToCart = "ADD TO CART"
    static let close = "CLOSE"
    static let addToCartInWordCase = "Add to Cart"
    static let notifyMeInWordCase = "Notify Me"
    static let compare = "COMPARE"
    static let compareNow = "COMPARE NOW"
    static let login = "LOGIN"
    static let wishList = "WISHLIST"
    static let sizingChart = "Sizing chart"
    static let seeSizeChart = "see size chart"
    static let homeDelivery = "Home Delivery"
    static let storePickup = "Store Pickup"
    static let proceedToCheckout = "PROCEED TO CHECKOUT"
    static let continueToOrderReview = "CONTINUE TO REVIEW ORDER"
    static let proceedToPayment = "PROCEED TO PAYMENT"
    static let addNewDeliveryAddress = "ADD NEW DELIVERY ADDRESS"
    static let retry = "RETRY"
    static let register = "REGISTER"
    static let proceed = "PROCEED"
    static let callBack = "BOOK APPOINTMENT"
    static let changeAddress = "CHANGE/EDIT ADDRESS"
    static let addNewAddress = "ADD NEW ADDRESS"
    static let addShippingAddress = "ADD SHIPPING ADDRESS"
    static let buyGiftCard = "BUY A GIFT CARD"
    static let redeem = "REDEEM"
    static let free = "FREE"
    static let viewDetails = "VIEW DETAILS"
    static let cancelItem = "CANCEL ITEM"
    static let checkBalance = "CHECK BALANCE"
    static let tapHere = "tap here"
    static let moveToWishlist = "MOVE TO WISHLIST"
    static let goToWishList = "GO TO WISHLIST"
    static let selectThisPlan = "SELECT THIS PLAN"
    static let cancelOrder = "CANCEL ORDER"
    static let cancelProduct = "CANCEL PRODUCT"
    static let backToOrderDetails = "BACK TO ORDER DETAILS"
    static let itemCancelled = "ITEM CANCELLED"
    static let downloadInVoices = "DOWNLOAD INVOICES"
    static let confirmOrder = "CONFIRM ORDER"
    static let verified = "VERIFIED"
    static let payNow = "PAY NOW"
    static let stores = "Stores"
    static let serivceCenters = "Service centres"
    static let applyNow = "APPLY NOW"
    static let apply = "APPLY"
    static let remove = "REMOVE"
    static let save = "Save"
    static let superScript = "99+"
    static let viewAll = "VIEW ALL"
    static let continueShopping = "CONTINUE SHOPPING"
    static let info = "Info"
    static let makePayment = "MAKE PAYMENT"
    static let tryOn = "TRY ON"
    static let revampTryonText = "Try on"
    static let tryItOn = "   Try it On   "
    static let three60DegreeView = "360° VIEW"
    static let buyInAmount = "Buy in Rupees"
    static let buyInGrams = "Buy in Grams"
    static let sellInAmount = "Sell in amount"
    static let sellInGrams = "Sell in Grams"
    static let mobile = "MOBILE"
    static let email = "E-MAIL"
    static let onlineOrders = "Online Orders"
    static let storeOrders = "Tanishq Store Orders"
    static let openOrders = "Open Orders"
    static let closedOrders = "Closed Orders"
    static let cancelledOrders = "Cancelled Orders"
    static let similarProducts = "   Similar Products   "
    static let viewMore = "View More"
    static let createNewWishlist = "Create a New Wishlist"
}

struct LabelNameConstants {
    static let password = "password"
}

struct ScreenNameConstants {
    static let panCardVerify = "Pan Card Verification"
    static let digiExchange = "Digital Gold"
    static let verifyKYC = "KYC verification"
    static let forgotPassword = "Forgot password"
    static let changePassword = "Change password"
    static let register = "Register"
    static let addressBook = "Address Book"
    static let addNewAddress = "Add new address"
    static let editAddress = "Edit address"
    static let wishlist = "Wishlist"
    static let addNewBoard = "Add new board"
    static let profileDetails = "Profile Details"
    static let verifyPassword = "Verify Password"
    static let bookAnAppointment = "Book an appointment"
    static let listOfStores = "List of stores"
    static let centreLocator = "Store locator" //"Centre locator"
    static let wishList = "Wishlist"
    static let editWishList = "Edit Wishlist"
    static let filterBy = "Filter by"
    static let customerSupport = "Customer Support"
    static let settings = "Settings"
    static let compare = "Compare"
    static let login = "Login"
    static let myCart = "My cart"
    static let applyPromoCode = "Apply Promo Code"
    static let changePincode = "Change Pincode"
    static let pincodeCheck = "Pincode Check"
    static let deliveryAddress = "Delivery Address"
    static let deliveryMethod = "Delivery Method"
    static let addGiftMessage = "Add a gift message"
    static let deliveryInformation = "Delivery information"
    static let encircle = "Encircle"
    static let linkEncircleAccount = "Link Encircle account"
    static let encircleCardRegistration = "Encircle card registration"
    static let redeemEncirclePoints = "Redeem Encircle points"
    static let orderReview = "Order review"
    static let faq = "FAQ's"
    static let confirmation = "Confirmation"
    static let storeForm = "Enter your details"
    static let visitStore = "Check at store"
    static let policies = "Policies"
    static let encircleAccountLinked = "Encircle account linked"
    static let termsAndConditions = "TERMS AND CONDITIONS"
    static let giftCard = "Gift Card/E-Gift Card"
    static let giftCardBalance = "Gift Card Balance"
    static let eGiftCardBalance = "E-Gift Card Balance"
    static let orderDetails = "Order Details"
    static let emiOptions = "EMI options"
    static let emi = "EMI"
    static let paymentTitle = "Payment"
    static let myOrders = "My Orders"
    static let cashOnDelivery = "Pay On Delivery"
    static let orderCancellation = "Cancellation request"
    static let orderCancellationConfirmation = "Cancellation confirmation"
    static let redeemGiftCard = "Redeem Gift Card/E-Gift Card"
    static let orderConfirmation = "Order confirmation"
    static let verification = "Verification"
    static let netbanking = "Netbanking"
    static let brandOffers = "Brands Offers"
    static let bankOffers = "Bank Offers"
    static let contactUs = "Contact us"
    static let sizeGuide = "Size guide"
    static let termsAndCondition = "Terms and Conditions"
    static let reviewsAndRatings = "Reviews and Ratings"
    static let writeReview = "Write a Review"
    static let myReview = "My Reviews"
    static let offers = "Offers"
    static let reviews = "Reviews"
    static let askAQuestions = "Ask a Questions"
    static let sizeComparison = "Size Comparison"
    static let voiceSearch = "Voice search"
    static let instaPay = "InstaPay"
    static let autoDebit = "Auto Debit"
    static let payInstallments = "Pay Installments"
    static let paymentHistory = "Statement of Account"
    static let profile = "Profile"
    static let myAccounts = "My Accounts & Benefits"
    static let addToWishlist = "Add to wishlist"
    static let brandStory = "Brand Story"
    static let buyingGuides = "Buying Guides"
    static let benefitCalculator = "Benefit Calculator"
    static let schemes = "Schemes"
    static let rivaahAshirwaad = "Rivaah Aashirwaad"
    static let schemeEnrollment = "Scheme Enrollment"
    static let purchaseDetails = "Purchase details"
    static let sellingDetails = "Selling details"
    static let transactionConfirmation = "Transaction confirmation"
    static let help = "Help"
    static let trackOrder = "Track Order"
    static let deleteAccount = "Delete Account"
    //OTP login
    static let enterPassword = "Enter password"
}

struct ErrorMessage {
    static let invalidOTpForMpin = "Please enter a valid otp"
    static let emptyMpin = "Please enter mpin"
    static let validMpin = "Please enter valid mpin"
    static let emptyConfirmMpin = "Please enter confirm mpin"
    static let validConfirmMpin = "Please enter valid confirm mpin"
    static let mpinDoesNotMatch = "New mpin and confirm mpin does not match"
    static let nameAsPerPAN = "Please enter name as per PAN card"
    static let emptyPanNumber = "Please enter PAN Number"
    static let panNumber = "Please enter valid PAN Number"
    static let email = "Please enter valid Email ID"
    static let emptyEmail = "Please enter Email ID"
    static let emptyEmailForLoginScreen = "Please Enter Email id / Mobile No"
    static let invalidEmailOrMobile = "Please Enter Valid Email id / Mobile No"
    static let emptyEmailOrMobile = "Please enter Email id / Mobile number"
    //static let passwordMinimumLength = "Please enter valid password (Enter minimum " + String(FieldLengthConstant.passwordMinimumLength) + " characters)"
    static let logInErrorMessage = "Specified Logon Id or Password are not correct. Verify the Information and login again"
    static let passwordSpecialCharacter = "Password should have atleast 1 special character"
    static let passwordAlphabet = "Password should have atleast 1 alphabet"
    static let passwordNumber = "Password should have atleast 1 number"
    static let passwordValidationErrorMessage = "Enter atleast 1 special character, 1 alphabet, 1 number."
    static let emptyPassword = "Please enter password"
    static let emptyNewPassword = "Please enter new password"
    static let emptyConfirmPassword = "Please enter confirm password"
    static let passwordsDontMatch = "New password and Confirm password does not match"
    static let firstName = "Please enter only alphabets in first name"
    static let emptyFirstName = "Please enter first name"
    static let lastName = "Please enter only alphabets in last name"
    static let emptyLastName = "Please enter last name"
    static let mobileNumber = "Please enter valid mobile number"
    static let validPincode = "Please enter a valid pincode"
    static let validZipcode = "Please enter a valid zipcode"
    static let emptyMobileNumber = "Please enter mobile number"
    static let gender = "Please select Title"
    static let dateOfBirth = "Please select date of birth"
    static let subscription = "Please check agree to the terms & conditions."
    static let emptyAddressTitle = "Please enter the address title"
    static let emptyNickName = "Please enter Nick name"
    static let validNickName = "Please enter valid Nick name"
    static let validAddressTitle = "Please enter valid address title"
    static let pincode = "Please enter the pincode"
    static let zipCode = "Please enter the zipcode"
    static let houseNumber = "Please enter flat/house number/building name"
    static let street = "Please enter the Colony/Street/Locality"
    static let town = "Please enter the valid town/city"
    static let emptyTown = "Please enter the town/city"
    static let country = "Please enter the country"
    static let state = "Please enter the valid state"
    static let emptyState = "Please enter state"
    static let emptyLocation = "Please enter city or PIN code"
    static let emptyBrand = "Please select a brand"
    static let emptyCouponCode = "Please enter a coupon code"
    static let emptyCountry = "Please select a country"
    static let invalidCountry = "Please select a valid country"
    static let emptyFullName = "Please enter full name"
    static let fullName = "Please enter a valid full name"
    static let emptyOTP = "Please enter the OTP"
    static let emptyShippingAddress = "Please enter shipping address"
    static let emptyBillingAddress = "Please enter billing address"
    static let giftCardNumberEmpty = "Please enter gift card number"
    static let sixDigitPinEmpty = "Please enter 6-digit pin"
    static let giftCardNumber = "Please enter valid gift card number"
    static let sixDigitPin = "Please enter valid 6-digit pin"
    static let validRedeemPoints = "Please enter points between 0 to %@"
    static let emptyWishlistBoardName = "Sorry, wishlist name cannot be blank or space. Please re-enter"
    static let invalidWishListBoardName = "Please enter a wishlist name with alphabets and numbers. You can only use Special Characters SPACE, DOT, &, @"
    static let reasonForOrderCancellation = "Please select reason for order cancellation"
    static let emptyCity = "Please enter the city"
    static let validateCaptcha = "Please verify captcha before proceeding"
    static let sixDigitOTP = "Please enter valid 6-digit OTP"
    static let sixDigitOTPEmpty = "Please enter 6-digit OTP"
    static let giftCardMaxValueErrorMessage = "Please enter 16-digit gift card number"
    static let encirclePhoneNumberChange = "Updating the phone number will remove your encircle number linked to the account."
    static let encircleCountryCodeChange = "Updating the country code will remove your encircle number linked to the account."
    static let sizeSelectionMessage = "Please select size to proceed"
    static let grossWeightSelectionMessage = "Please select gross weight to proceed"
    static let comingSoon = "Coming Soon"
    static let contactNumberNotFound = "Contact Number Not Found"
    static let emailNotFound = "Contact Email Not Found"
    static let galleryNotFound = "This device does not have a Photo Gallery"
    static let cameraNotFound = "This device does not have a Camera"
    static let imagePickerGenericError = "Image data not found"
    static let unsupportedImageType = "Image type not supported"
    static let imageSizeTooLarge = "Maximum image size allowed is 1 MB"
    static let accountNumber = "Please enter valid account number"
    static let emptyAccountNumber = "Please enter account number"
    static let feedbackSubmitSuccess = "Thank you for your feedback, your feedback is very much helpful in improving our app"
    static let name = "Please enter name"
    static let expiryDate = "Please enter expiry date to proceed"
    static let emptyEmailAddress = "Please enter email address"
    static let loadUrlError = "can't load url"
    static let expiryDateLimit = "Credit card validity expires before GH Account's End Date. Please check"
    static let emptyAddress1 = "Please enter Door No/Flat No"
    static let emptyAddress2 = "Please enter Street/Road/Sector/Building"
    static let emptyAddress3 = "Please enter Main/Area/Locality/Colony/LandMark"
    static let emptySpouseName = "Please enter Spouse name"
    static let emptySpouseBirthday = "Please enter Spouse birthday"
    static let emptyAnniversary = "Please enter Marriage Anniversary"
    static let unableToReachGhApi = "Golden Harvest is under maintenance. Will be back soon"
    static let unableToInitializeRazorPay = "Unable to initialize RazorPay"
    static let emptyStore = "Please select a store"
    static let emptyAppointmentDate = "Please enter date"
    static let emptyAppointmentTime = "Please enter time"
    static let amountNotValid = "Please enter amount above or equal to %@"
    static let enterValidMultiple = "Please enter amount in multiples of 1000"
    static let emptyOccasion = "Please enter the occasion"
    static let expectedDeliveryDate = "Please select an expected delivery date"
    static let eVoucherErrorMessage = "Please enter valid E-Voucher card number"
    static let dcVoucherErrorMessage = "Please enter valid Discount Voucher card number"
    static let nonGhUser = "You do not have any Golden Harvest account"
    static let emptyEmailForLOTPLoginScreen = "Please enter mobile number/email"
    static let samePinError = "Entered MPIN is same as existing. Please enter new MPIN"
    static let minCharacterError = "There should be at-least 4 characters in the address field"
    static let maxCharacterError = "Maximum character for address field cannot be more than 30"
    static let flowerBracketError = "Please remove the character '{' or '}' from the address field"
}

struct SuccessMessage {
    static let success = "Success!"
    static let successInstruction = "You have set your new password successfully"
    static let successfullyEdited = "Your changes have been saved"
    static let successfullySentOTP = "OTP sent successfully"
    static let passwordChanged = "Password changed successfully"
}

struct AddressBookAlertConstants {
    static let deleteAddressAlertTitle = "Confirm Deletion"
    static let deleteAddressAlertDescription = "Are you sure you want to delete this address?"
    static let deleteAddressAlertNote = "Please note: Deleting this address will not delete any pending orders being shipped to this address"
    static let adddressSuccessTitle = "Success!"
    static let adddressCreationSuccessDescription = "Address has been created"
    static let adddressUpdationSuccessDescription = "Address has been updated"
    static let adddressUndoSuccessDescription = "Undo successful"
}

struct BoardNameConstants {
    static let boardNamePlaceholder = "Board name"
    static let newWishlistPlaceholder = "Enter Wishlist Name"
    static let newWishlist = "Create a New Wishlist"
    static let createBoardNameTitle = "Create"
    static let submitButtonTitle = "Save"
    static let boardNameSuccessTitle = "Success!"
    static let boardNameCreationSuccessDescription = "The wishlist \"BOARD_NAME\" has been created successfully"
    static let boardNameUpdationSuccessDescription = "The wishlist \"BOARD_NAME\" has been updated successfully"
    static let boardNameUndoSuccessDescription = "Undo successful"
    static let wishlistName = "Enter Wishlist Name"
    static let editWishlist = "Edit Wishlist Name"
}

struct MobileNumberAlertConstants {
    static let updateMobileNumberAlert = "Your mobile number is not updated in our system. Please update your mobile number"
    static let update = "UPDATE"
    static let cancel = "CANCEL"
    static let title  = "PROFILE"
}

struct AddressBookConstants {
    static let editAddressTitle = "EDIT"
    static let deleteAddressTitle = "DELETE"
    static let deliveryAddressTitle = "DELIVER TO THIS ADDRESS"
}

struct WishListConstants {
    static let addProductsToWishList = "Add products to\nthis wishlist"
    static let more = "more itmes"
    static let plus = "+"
}

struct NotifyMeConstants {
    static let instructionLabel = "Please provide the email ID where you would want to be notified once the product is back in stock"
    static let notifyMeTitle = "Notify me"
    static let emailPlaceholder = "Email"
}

struct SearchViewConstants {
    static let recentSearchHeader = "Recent Searches"
    static let popularSearchHeader = "Popular Products"
}

struct NoSearchCellConstants {
    static let instructionLabel = "Please refine your search by:"
    static let firstInstruction = "Double check the spelling. Try varying the spelling"
    static let secondInstruction = "A more general term will lead you to similar products"
    static let noSearchLabel = "We did not find any products for\n "
    static let predictionLabel = "Did you mean?"
}

struct NoResultsViewConstants {
    static let wishListInstruction = "Your wishlist is empty.Create your own wishlit and share with your friends"
    static let cartEmptyInstruction = "There are no items in your shopping cart"
    static let emptyAddressBookInstruction = "Your address book is empty. You can add a delivery address by clicking on the below button"
    static let emptyPromocodeListInstruction = "You have no promocodes available."
    static let emptyGiftCardListInstruction = "We are currently not offering any gift cards for purchase."
    static let emptyOrdersListInstruction = "Your confirmed orders will be shown here "
    static let emptyNotificationListInstruction = "You haven’t received any notifications yet"
    static let nonLoggedInWishlistInstruction = "Hi There, Looks like you have not logged in.\nTo Access your wishlist please login. "
}

struct ProductDescriptionControllerConstants {
    static let descriptionTitle = "Description"
}

struct ProductMetadataControllerConstants {
    static let itemUnavailable = "out of stock"
    static let diamondWeight = "Diamond weight"
    static let carat = "carat"
    static let ringSize = "Ring not in your size? Find sizes here to get the perfect ring - "
    static let ringSizeContentLink = "|Ring Size_%@"
    static let ringSizeAppendContentLink = ",Ring Size_%@"
    static let ringSizeFacet = "Ring Size"
    static let ringSizeConfirmationMessage = "You have selected %@ ring size. To confirm please click proceed"
}

struct ProductDetailActionConstants {
    static let productDetailFirst = "Only "
    static let productDetailSecond = " left in stock"
    static let addToCartTitle = "Add to cart"
    static let notifyMeTitle = "Notify me"
    static let inStock = "In stock"
    static let buyNow = "Buy Now"
}

struct SizingComparisionConstants {
    static let sizingComparision = "Sizing comparision"
    static let bookAnAppointmentButtonTitle = "BOOK AN APPOINTMENT"
    static let proceedButtonTitle = "EXPLORE"
    static let availableSizeTextForPDP = "The nearest available size is as below. Please select either one to confirm"
    static let availableSizesTextForPDP = "The nearest available sizes are as below. Please select either one to confirm"
    static let availableSizesTextForBanner = "Your ring size doesn't match exactly, the nearest ring sizes are available below"
    static let availableSizeTextForBanner = "Your ring size doesn't match exactly, the nearest ring size is available below"
}
struct PincodeCheckCellConstants {
    static let pincodeCheck = "Pincode check"
}

struct pincodeCheckConstant {
    static let checkPincode = "Check Pincode"
}

struct CurrencyStringConstants {
    static let rupee = "₹"
    static let dollar = "$"
}
struct SpecialInstructionCellConstants {
    static let placeholder = "Special instructions if any"
}

struct OrderReviewCellConstants {
    static let giftItem = "  This is a gift item"
}

struct CartScreenConstant {
    static let addPincode = "Add Pincode"
    static let homeDelivery = "Home Delivery"
    static let storePickup = "Store pickup"
    static let orderSummaryTitle = "Order summary"
    static let jewelleryGrossWeight = "Weight in gram: "
    static let diamondWeight = "Diamond weight: "
    static let carat = " carat"
    static let addGiftMessage = "Add a gift message"
    static let addedGiftMessage = "Gift message applied"
    static let capsAddedGiftMessage = "Gift Message Applied"
    static let total = "Total"
    static let quantity = "Quantity: "
}

enum ObserverKeyPathConstant {
    static let contentSize = "contentSize"
    static let contentImage = "image"
}

struct GiftCellConstants {
    static let giftMessage = "Enter your gift message here"
    static let addGiftMessage = "Add a gift message"
}

struct DeliveryInfoHeaderConstants {
    static let deliver = "Deliver"
    static let items = "items"
    static let item = "item"
    static let to = "to"
}

struct StoreConfirmationConstants {
    static let thankYou = "Thank you for registering your interest with us"
    static let callBack = "Please expect a call back from us in the next"
    static let hoursConstant = " 48 "
    static let hours = "hours"
}

struct PaymentScreenConstants {
    static let grandTotal = "Grand Total"
    static let totalSavings = "Total Savings"
    static let taxDescription = "*Inclusive of all taxes"
    static let totalBreakDown = "Total breakdown"
    static let paymentDescription = "In order to process your order, we need to gather your payment details, please select a form of payment below"
    static let giftCardDescription = "Now you can use your Encircle & E-Gift card first and then pay the remaining amount using prepaid methods"
    static let discount = "Discount"
    static let bankOfferDiscount = "Bank Offer Discount"
    static let promotionalDiscount = "Promotional code"
    static let subtotal = "Subtotal"
    static let giftCardEnding = "Gift card ending"
    static let eGiftCardEnding = "E-Gift card ending"
    static let eVoucherCardEnding = "E-Voucher card ending"
    static let dcVoucherCardEnding = "DVoucher card ending"
    static let encirclePoints = "Encircle points"
    static let shipping = "Shipping"
    static let encircleApplied = "Encircle Card points applied"
    static let balanceEnciclePoints = "Balance: "
    static let anotherGiftCard = "Use another Gift Card/E-Gift Card"
    static let anotherEVoucherCard = "Use another E-Voucher"
    static let anotherDCVoucherCard = "Use another D Voucher"
    static let paymentTypeInstruction = "Complete your order using \n another payment method"
    static let cashOnDelivery = "Total to be paid via Cash"
    static let codOrderHistroy = "To be paid via Cash"
    static let giftCardUsed = "This card is already used"
    static let bankOffers = "Bank Offers"
    static let encircleSignIn = "SignIn/SignUp"
    static let free = "FREE"
    static let chargesApply = "CHARGES APPLY*"
    static let selectBank = "Select Bank"
    static let selectBankMessage = "Please select bank"
    static let selectPlanMessage = "Please select plan"
    static let ordersubtotal = "Order Subtotal"
    static let orderTotal = "Order Total"
    static let taxTotal = "Tax Total"
    static let items = "items"
    static let item = "item"
    static let nonSafeGoldUserText = "Unfortunately we have not found any Digital Gold A/c \nlinked to mobile"
    static let dollarSymbol = "$ "
    static let rsSymbol = "₹ "
    static let unitPrice = "Unit Price"
    static let total = "Total*"
}

struct OrderDetailBillingInforationCellConstants {
    static let totalPaidViaPrepaid = "Total paid via prepaid"
    static let billingInformation = "Billing information"
    static let totalPaiViaGiftCard = "Total paid via Gift card"
    static let totalPaiViaEGiftCard = "Total paid via E-Gift card"
    static let totalPaidViaEncirclePoints = "Total paid via Encircle points"
    static let totalPaidVia = "Total paid via "
    static let totalPaidViaNetbanking = "Total paid via net banking"
    static let totalPaidViaEmi = "Total paid via EMI"
    static let totalPaiViaEVoucherCard = "Total paid via E-Voucher"
    static let totalPaidViaDVoucherCard = "Total paid via DVoucher"
    static let totalPaiViaTanishqDigitalGold = "Total paid via Tanishq Digital Gold"
    static let totalPaiViaOtherDigitalGold = "Total paid via Other Digital Gold"
}

struct OrderInfoScreenConstants {
    static let orderNo = "Order no.: "
    static let placedOn = "Placed on "
    static let status = "Status: "
    static let orderCancelledState = "Order Cancelled"
}

struct StoreOrderInfoScreenConstants {
    static let invoiceNo = "Invoice no   : "
    static let price =    "Price            : "
    static let itemCode = "Item Code   : "
    static let product =  "Product       : "
    static let productDetail =  "Product      : "
    static let invoiceNumber = "Invoice number"
    static let weight =   "Weight        : "
    static let sku =      "SKU            : "
    static let quantity = "Quantity     : "
}

enum AppTourScreenConstants {
    static let search = "Search by Voice to choose from a wide range of products"
    static let ringSize = "Ring Size Calculator lets you measure your ring size even without visiting a store"
    static let encircle = "A unified Loyalty program which allows members to earn & redeem points"
    static let multipleDevice = "Enjoy seamless app experience available across multiple devices"
    static let tgh = "Turning your jewellery wishlist into a reality with the Tanishq Golden Harvest"
    static let callback = "Get instant call back from our Customer Care in case you require assistance"

    static let done = "DONE"
    static let next = "NEXT"
    static let skip = "SKIP"
}

struct TrackingOrderScreenConstants {
    static let orderPlaced = "Order \nplaced"
    static let orderProcessing = "Order \nprocessing"
    static let orderShipping = "Order \nshipping"
    static let orderDelivered = "Order \ndelivered"
    static let orderCancelled = "Order \ncancelled"
    static let readyForPickup = "Ready for Pick up"
    static let costumerPickedup = "Customer Picked up"
    static let orderPacked = "Order \npacked"
    static let trackingTitle = "Tracking number "
    static let courierName = "Courier name "
}

struct ContactDetailCellConstants {
    static let contactDetail = "Contact details:"
    static let deliveryDetail = "Delivery details:"
    static let storeDetail = "Store details:"
    static let mobileNumber = "Mobile number: "
    static let emailId = "Email: "
}

struct BrowserViewConstants {
    static let textHTML = "text/html"
    static let utf8 = "utf-8"
    static let html = "html"
    static let faqTitanStaticTemplateTail = "titan_static_template_tail"
    static let faqTitanStaticTemplateHead = "titan_static_template_head"
    static let pdpDescriptionTemplate = "titan_static_template"
    static let localHost = "http://localhost/"
    static let pdpDescriptionLoadMethod = "loadData(\'%@\')"
    static let pdpDescriptionHead = "titan_seemore_template_head"
    static let pdpDescriptionTail = "titan_seemore_template_tail"
}

struct CustomerSupportConstants {
    static let call = "Call"
    static let email = "Email"
    static let callUnsupported = "Call unsupported"
    static let emailNotSupported = "Email not supported"
    static let emailNotConfigured = "Looks like you have not configured your mailbox ! Please configure it."
    static let chatFeatureNotAvailable = "Chat feature not available"
    static let emailSent = "Email sent"
    static let emailNotSent = "Email not sent"
    static let smsSent = "SMS sent"
    static let smsNotSent = "SMS not sent"
    static let smsNotConfigured = "Your device is not able to send text messages"
}

struct GiftCardCheckBalanceScreenConstants {
    static let useGiftCard = "Use Gift card/E-Gift card"
    static let giftCardNumber = "Gift card/E-Gift card number"
    static let giftCardPin = "6-digit pin"
    static let enterGiftCardNumber = "Enter Gift card/E-Gift card Number"
    static let giftBalanceTitleLabel = "Balance for Gift card/E-Gift card"
}

struct InboxNotificationScreenConstants {
    static let noMessages = "No notifications found"
}

struct OnlineEnrollmentConstants {
    static let enrollment = "enrollment"
    static let lead = "lead"
    static let onlineEnrollmentLink = "https://www.tanishqgoldenharvest.co.in/online/account/onlineenrollment"
}

struct HomeScreenConstants {
    static let loginToGetOffers = "Login to get exclusive deals & offers"
    static let autoDebit = "Auto Debit"
    static let instaPay = "InstaPay"
    static let benefitCalculator = "Benefit Calculator"
    static let diamond = "T&C"
    static let openNewAccount = "Open New Account"
    static let cancelACHOrSH = "Cancel ACH/SI"
    static let greetingToast = "Hi %@, welcome back !"
    static let watchVideo = "WATCH VIDEO"
}

struct PDPScreenConstants {
    static let disclaimerText = "*Weight and price of the jewellery item may vary subject to the stock available."
    static let weight = "weight"
    static let size = "size"
    static let grossWeight = "JW_TX_GROSS_WEIGHT"
    static let sizeListString = "inches|mm|cm|size"
    static let selectSizeWithMeasure =  "Select %@ (in %@)"
    static let selectSize =  "Select %@"
    static let ucpProduct = "UCP"
    static let coinProductCode = "Z"
}

enum InterAppDeeplinkConstants {
    static let plp = "PLP"
    static let web = "Web"
    static let webCollection = "Web_Collection"
    static let pdp = "PDP"
    static let pdf = "Pdf"
    static let video = "Video"
    static let youtubeVideo = "Youtube Video"
    static let youTubeVideo = "YouTubeVideo"
    static let categoryLandingL2 = "CategoryLandingL2"
    static let brandLandingL2 = "BrandLandingL2"
    static let collectionPage = "CollectionPage"
    static let bridesList = "Brides"
    static let brideDetail = "BrideDetail"
    static let brideStory = "BrideStory"
    static let occasionsLandingPage = "OccasionsLandingPage"
    static let occasionDetail = "Occasion"
    static let categoryLandingPage = "CategoryLandingPage"
    static let benifitCalculator = "benifitCalculator"
    static let videoGallery = "VideoGallery"
    static let knowYourRingSize = "KnowYourRingSize"
    static let faq = "FAQ"
    static let contactUs = "ContactUs"
    static let feedback = "Feedback"
    static let storeLocator = "StoreLocator"
    static let tghTnc = "tgh_tnc"
    static let whatsup = "whatsup"
    static let ghs = "GHS"
    static let collectionListPage = "CollectionListPage"
    static let giftCards = "GiftCards"
    static let buyGiftCard = "BuyGiftCards"
    static let buyguide = "buyguide"
    static let goldenHarvestInfo = "GoldenHarvestInfo"
    static let rivaahAshirwaadInfo = "RivaahAshirwaadInfo"
    static let storeVisit = "store_visit"
    static let storeVideoCall = "store_videocall"
    static let storeService = "store_service"
    static let youTube = "youtube"
    static let chatWithUs = "whatsup"
    static let instaPay = "ghs_insta_pay"
    static let autoDebit = "ghs_auto_debit"
    static let openNewAccount = "ghs_open_new_account"
    static let benefitCalculator = "ghs_benefit_calcuter"
    static let termsAndCondition = "ghs_TandC"
    static let cancelAchSi = "cancel_ach_si"
    static let digiGoldExchange = "digigoldExchange"
    static let sectionPlp = "sectionPlp"
    static let TrousseauList = "RivaahTrousseauList"
    static let TrousseauDetail = "RivaahTrousseauDetail"// Its hardcoded due to not api change from backend.. timebeing
}

struct DeeplinkConstants {
    static let deeplinkType = ["deeplinkPLP", "deeplinkPDP", "deeplinkOrderDetails", "deeplinkOrderList", "Video", "deeplinkCart","deeplinkWishlist", "deeplinkWishlistItem","deeplinkHome", "digigold_landing", "sectionPlp", "chatWithUs", "deeplinkMyOrders"]
    static let type = "type"
    static let value = "value"
    static let productId = "productId"
    static let urlKeywordName = "urlKeywordName"
    static let partNumber = "partNumber"
    static let catEntryId = "catEntryId"
    static let categoryId = "categoryId"
    static let lob = "lob"
    static let orderId = "orderId"
    static let extOrderId = "extOrderId"
    static let plpUrlKeyWordName = "url_keyword_name"
    static let brand = "brand"
    static let selectedFacet = "selectedFacet"
    static let attrName = "attrName"
    static let orderBy = "orderBy"
    static let url = "url"
    static let deeplink = "deeplink"
    static let deeplink_type = "deeplink_type"
    static let aps = "aps"
    static let contentAvailable = "content-available"
    static let isOutOfStock = "isOutOfStock"
    static let wishlistId = "wishlistId"
    static let wishlistName = "wishlistName"
    static let accountNumber = "accountNumber"
    static let schemeType = "schemeType"
    static let mobileNumber = "mobileNumber"
    static let moe_ScreenName = "screenName"
    static let app_extra = "app_extra"
    static let screenData = "screenData"
}

struct OrderConfirmationConstants {
    static let thankYouForYourOrder = "Thank you for your order!"
    static let orderNumber = "Order number"
    static let instruction = "If you have any questions about your order, we are happy to take your call at"
    static let specialInstructions = "Special Instructions"
    static let qty = "qty"
    static let id = "id"
    static let orders = "orders"
}
struct CaptchaMessageConstant {
    static let captchaExpired = "Captcha Expired"
    static let captchaSolvedButNoResponse = "Captcha Verified; but did not get any response from captcha."
    static let captchaSolved = "Captcha Verified"
    static let captchaSolvedButNoToken = "Captcha Verified; but token not received"
}

struct PaymentMessageConstant {
    static let unableToLoadPg = "Unable to load PG UI"
    static let unableToCreatePaymentRequest = "Unable to create Payment request"
    static let paymentFailed = "Transaction failed"
    static let paymentCancelled = "Transaction cancelled"
    static let orderCreationFailed = "Could not create the transaction order"
    static let missingParams = "Missing payment parameters"
    static let cancelTransaction = "Are you sure you want to cancel this transaction?"
    static let missingRazorpayKey = "Razor pay key is missing"
}
struct VideoPlayerMessageConstant {
    static let unableToPlayVideo = "Unable to play the video"
}

struct BankOfferScreenConstant {
    static let selectOffer = "Please select a bank offer"
}

struct ColorConstants {
    static let clearColor = "#00FFFFFF"
}

struct VerifyPasswordScreenConstant {
    static let passwordDontMatch = "Entered Password is not matching with old password"
}

struct ProductAvailabilityWarningConstant {
    static let outOfStock = "Out of stock"
    static let productOutOfStock = "Product out of stock"
    static let productNotAvailable = "Product no longer available"
    static let discontinuedItem = "DISCONTINUED ITEM"
    static let orderExceeded = "Please enter the quantity up to %d"
}

struct CurrencyUpadateMessage {
    static let success = "Currency changed"
    static let fail = "Failed to change currency"
    static let alreadySelected = "Currency already selected"
}

struct NoNetworkConstant {
    static let youAreOffline = "Network Unavailable"
    static let noNetworkMessage = "Network could not be reached at this time. Please try again later"
    static let noInternetConnection = "No Internet Connection"
    static let retry = "TRY AGAIN LATER"
}

struct FilterAlertConstant {
    static let filterAlertTitle = "Do you want to discard your changes?"
    static let filterAlertMessage = "You modified some filters. What would you like to do with these changes?"
    static let discard = "DISCARD"
    static let apply = "APPLY"
}

struct AddGiftMessageConstant {
    static let emptyCommentMessage = "Sorry! You cannot leave a gift message blank"
    static let giftMessageApplied = "Gift message applied"
    static let giftMessageRemoved = "Gift message removed"
}

struct HomeDeliveryStatusCellConstants {
    static let expectedDelivery = "Estimated delivery - "
    static let headerValue = "Delivery status "
}

struct StandardDeliveryConstants {
    static let standardDelivery = "Standard delivery"
    static let sameDayDelivery = "Same Day Delivery"
    static let standardInternational = "Standard International"
    static let internationalDelivery = "International delivery"
    static let available = " available for "
    static let notAvailable = " is not available for "
    static let recievedBy = " Will be delivered by "
    static let pincode = "Pincode "
    static let city = "city "
    static let codMessage = "\n \nPay On Delivery is not available for International Orders"
    static let zipCode = "Zipcode "
}

struct ShareLinkPrefixConstant {
    static let message = "Check this out! - "
    static let shareAppMessage = "Check out this awesome app on Apple Store - "
}

struct ImageEndPointConstants {
    static let listing = "?pView=listing"
    static let pdp = "?pView=pdp"
    static let pdpZoom = "?pView=zoom"
    static let thumbNail = "?pView=thumb"
}

struct ValidationConstants {
    
    static let storeFinderPincode = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
}

enum CaptchaInstruction {
    static let bookAppointmentScreen = "Please verify that you are a human"
    static let forgotPasswordScreen = "Please verify that you are a human before proceeding with reset password"
    static let userRegistrationScreen = "Please verify that you are a human"
    static let accountDeletionScreen = "Please verify that you are a human"

}
struct ProductReviewScreenConstants {
    static let reviews = "Reviews"
    static let questions = "Questions"
    static let loginErrorForQuestions = "Looks like you are not logged in,\nTo ask a question you will have to login."
    static let up = "up"
    static let down = "down"
    static let viewAllProducts = "VIEW ALL PRODUCTS"
    static let writeAReview = "WRITE A REVIEW"
    static let review = "Review*"
    static let title = "Title*"
    static let reviewCountString = "This product has %d Reviews"
    static let averageRating = "Average rating %.2f of 5"
    static let noReview = "This product has no reviews"
    static let reviewCount = "%d review"
    static let reviewsCount = "%d reviews"
}
struct QuestionsAlertConstants {
    static let alertTitle  = "Thank you for posting a Question!"
    static let alertDescription  = "Please click on the link in the confirmation email we just sent you to submit questions\n\nYour questions will apear when someone answer it."

    static let alertFailTitle  = "Failed!"
    static let alertFailDescription  = "Sorry something went wrong, Please try after sometime"
}
struct BlackRibbenConstants {
    static let blackRibbenValue1 = "new arrival";
    static let blackRibbenValue2 = "trending";
    static let blackRibbenValue3 = "exclusive";
    static let blackRibbenValue4 = "new";
    static let noCostEmi = "no cost emi";
}

struct GamoogaConstants {
    static let pdpPage = "Product Description"
    static let comparePage = "Product Comparison"
    static let wishlistPage = "Wishlist"

}

struct RivahHomePageConstants {
    static let rivaahBride = "Rivaah Bride"
    static let watchTheFilm = "Watch The Film"
    static let swipeLeftToExplore = "Swipe left to explore"
    static let viewAll = "View All"
    static let followUsOn = "Follow Us On"
    static let isRivaahAshirvadTnCAccepted = "isRATermsAndConditionAccepted"
    static let termsAndConditionSegue = "TnC"
}

struct BenefitCalculatorConstants {
    static let topDescriptionLabelText = "Tell us your monthly installment amount and we will help you to calculate your total benefits."
    static let depositStaticLabelText = "I want to deposit"
    static let depositDescriptionLabelText = "min. ₹2000 or multiples of ₹1000 for 10 months through cash/online in our Tanishq Golden Harvest website or Tanishq APP / ACH / SI / PDC"
    static let totalAmountStaticLabelText = "Your total amount for 10 months"
    static let redemptionTimePeriodLabelText = "13th month period"
    static let redemptionValueStaticLabelText = "TOTAL VALUE OF REDEMPTION"
    //slider constants
    static let topLabelText = "How to use Benefit Calculator"
    static let slider1Text = "Pay monthly installment of min. ₹2000 or multiples of ₹1000 for 10 months"
    static let slider2Text = "Avail a special discount of upto 75% of 1 installment amount, at the time of redemption"
    static let slider3Text = "Own your favourite Tanishq Jewellery with the total redemption value!"
    static let skip = "SKIP"
    static let done = "DONE"
    static let navigationTitle = "Benefit Calculator"
    //imageConstants
    static let bgImage2 = "BenefitCalculatorBg2"
    static let sliderImage1String = "BenefitCalculatorSlider1"
    static let sliderImage2String = "BenefitCalculatorSlider2"
    static let sliderImage3String = "BenefitCalculatorSlider3"
    static let plus = "Plus"
    static let minus = "Minus"
    static let plusMinusAmount = 1000
    static let defaultAmount = "2000"
    static let default10MonthsAmount = "20,000"
    static let defaultRedemptionAmount = "21,500"
    static let maxAmount = 1000000
    static let minAmount = 2000
    static let allowedCharacters = "0123456789"
    static let topDescriptionLineSpacing: CGFloat = 5
    static let depositDescriptionLineSpacing: CGFloat = 3
    static let factorFor10Months = 10
    static let factorForRedemption = 0.75
    static let benefitCalculatorInfoShown = "BenefitCalculatorInfoShown"
}

struct QueenOfHeartsConstants {
    static let aboutText = "About"
    static let ghsText = "GHS"
    static let ghsDescriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"
    static let loginText = "LOGIN"
    static let exploreText = "EXPLORE"
    static let readMoreText = "READ MORE..."
    static let readLessText = "READ LESS..."
}

struct AboutUsConstants {
    static let readMoreText = "READ MORE"
    static let readLessText = "READ LESS"
}

struct TestimonialsConstants {
    static let readMoreText = "Read More..."
    static let readLessText = "Read Less..."
}

struct wishlistConstants{
    static let placeHolderText = "Enter Wishlist Name"
}

struct BridesConstants {
    static let listControllerNavigationTitle = "Rivaah Brides"
}

struct CollectionsConstants {
    static let knowMoreText = "KNOW MORE"
    static let naviagtionTitle = "Collections"
}

struct NibConstants {
    static let readMoreView = "ReadMoreView"
    static let appDownView = "AppDownView"
}

enum ContactScreenConstant {
    static let title = "Help"
    static let chatButtonTitle = "Chat with us"
    static let videoCall = "Live Video Call"
    static let bookAnAppointment = "Book An Appointment"
    static let whatsappChatButtonTitle = "WhatsApp us"
    static let whatsappPhoneNumber = "918147349242"
    static let whatsAppText = "Hi, Can I connect with Tanishq customer care!"
}

struct LoginSegmentConstants {
    static let forgotPasswordText = "Forgot Password?"
    static let faceBookButtonText = "Facebook"
    static let googleButtonText = "Google"
    static let appleIdButtonText = "Apple ID"
    static let loginText = "Login"
    static let registerText = "Register"
    static let maxNumberofCells = 500
    static let numberofCells = 2
}


enum OccasionDetailConstants {
    static let type1ImageLeading: CGFloat = 17
    static let type1ImageTrailing: CGFloat = 38
    static let type1ViewLeading: CGFloat = 72
    static let type1ViewTrailing: CGFloat = 15
    static let type2ImageLeading: CGFloat = 40
    static let type2ImageTrailing: CGFloat = 15
    static let type2ViewLeading: CGFloat = 17
    static let type2ViewTrailing: CGFloat = 58
    static let topBottomHeightConstant: CGFloat = 170
    static let type3TopBottomHeightConstant: CGFloat = 45
    static let type3ImageTopConstant: CGFloat = -180
    static let defaultImageTopConstant: CGFloat = -55
}

struct OfferConstants {
    static let knowMore = "KNOW MORE"
    static let inSalesSize: CGFloat = 114
    static let hotDealHeight: CGFloat = 200
    static let hotDealWidth: CGFloat = 187
    static let commonCollectionViewCellHeight: CGFloat = 161
    static let commonCollectionViewHeight: CGFloat = 184
}

enum TghHomeConstants {
    static let more = "More"
    static let installmentsPaid = "%@/10 installments paid"
    static let status = "Status - %@"
}

enum FeedbackConstants {
    static let feedbackScreenTitle = "Feedback"
    static let feedbackScreenInfoTitle = "We would like to hear from you"
    static let feedbackScreenDescription = "Your feedback is important to us. Please help us in improving our app"
    static let ratingTitle = "Are you liking our app?"
    static let writeFeedbackScreenDescription = "Tell us what went wrong in the app or how can we make it better."
    static let writeFeedbackFieldTitle = "Write your feedback"
    static let uploadAttachmentButtonTitle = "Upload Attachment"
    static let imageSizeText = "Image size 1 MB"
    static let feedbackNoteText = "Please feel free to connect with us on our All India toll-free number "
    static let contactNoLink = "tel:/"
    static let emailLink = "mailto:/"
    static let timingText = " between 10 AM and 10 PM (IST) on all 7 days or email us at "
    static let feedbackPlaceholder = "Enter your feedback here"
    static let maxTextCount = 750
    static let feedbackScreenInfoTitleLineSpacing: CGFloat = 8
    static let feedbackScreenDescriptionLineSpacing: CGFloat = 6
    static let feedbackNoteLineSpacing: CGFloat = 15
    static let uploadFileName = "Feedback_image"
}

enum ImageSourceConstants {
    static let camera = "Click a Photo"
    static let gallery = "Upload image"
    static let feedbackCameraDescription = "Use your phone camera to click a photo"
    static let feedbackGalleryDescription = "Choose an image from your gallery"
    static let searchCameraDescription = "Use your phone camera to click a photo of the product you are searching for."
    static let searchGalleryDescription = "Choose an image from your gallery for the product you are searching for."
    static let uploadImageNote = "Image size 1 MB.  Format - jpg , png"
    static let searchScreenTitle = "Search"
    static let sourceSubTitleLineSpacing: CGFloat = 6
}

enum CoachmarkConstants {
    static let gotIt = "GOT IT"
    static let close = "CLOSE"
    static let closeButtonHeight: CGFloat = 60
}

enum InstaPayConstants {
    static let ghtitle = "Paying your Tanishq Golden Harvest instalment is now just 2 clicks away."
    static let ratitle = "Paying your Tanishq Rivaah Aashirwaad instalment is now just 2 clicks away."
    static let disclaimer = "Pay online through Debit card, Credit card, Netbanking, UPI or Google pay"
    static let one = "1"
    static let two = "2"
    static let firstSectionTitle = "InstaPay"
    static let secondSectionTitle = "Installment Details"
    static let firstButtonTitle = "GET DETAILS"
    static let secondButtonTitle = "PROCEED"
    static let cellHeight: CGFloat = 80
    static let smallerLabelHeight: CGFloat = 38
    static let biggerLabelHeight: CGFloat = 48
}

enum NonTghProfileConstants {
    static let description = "Tanishq Golden Harvest is a smart, secure and convenient way to acquire exquisite Tanishq jewellery of your choice at the best price."
    static let interestedButtonTitle = "Open New Account"
    static let homeButtonTitle = "Home"
    static let extraHeight: CGFloat = 240
    static let phoneNumber = "1800-258-2598"
    static let thankYouDescription = "Thank you for your interest in Tanishq Golden Harvest Plan, we will get in touch with you shortly to understand your preferences better. Please feel free to call us at"
}

enum MyAccountsConstants {
    static let title = "My Accounts & Benefits"
    static let maxItems = 3
    static let accountNumber = "Account Number"
    static let revampedAccNo = "Account Number :"
    static let maturityLocation = "Maturity Location"
    static let schemeType = "Scheme Type"
    static let revampedschemeType = "Scheme Type :"
    static let accountDetails = "Account Details"
    static let nomineeDetails = "Nominee Details"
    static let statementOfAccount = "Statement of Account"
    static let maturityDate = "Maturity Date"
    static let enrollmentDate = "Enrollment Date"
    static let transactionInvoice = "Transaction Invoice"
    static let pdfFileName = "TransactionInvoice.pdf"

}

enum TghUserLoginConstants {
    static let mobileFieldTitle = "Mobile Number"
    static let emailPlusMobileFieldTitle = "Mobile Number/Email Id"
    static let emailPlusMobileFieldPlaceholderText = "Enter Mobile Number/Email Id"
    static let mobileFieldPlaceholderText = "Enter Mobile Number"
    static let sendOtpButtonTitle = "SEND OTP"
    static let resendOtpButtonTitle = "RESEND OTP"
    static let proceedButtonTitle = "PROCEED"
    static let submitButtonTitle = "SUBMIT"
    static let forgotPassword = "Forgot Password"
    static let editMobileNumber = "Edit Mobile Number"
    static let addMobileNumber = "Add Mobile Number"
    static let enterNewPassword = "Enter New Password"
    static let confirmNewPassword = "Confirm New Password"
    static let otpSentToMobileNoMessage = "Otp sent to your mobile number "
    static let otpSentToEmailIdMessage = "Otp sent to your email id "
    static let defaultTimerValue = 30
    static let maxOtpCount = 6
    static let minutesPRefix = "00:"
    static let secondsFormatString = "%02d"
    static let appForgotPassword = "app_forgotPwd"
    static let appEditMobileNumber = "app_editMobile"
    static let appAddMobile = "app_addMobile"
    static let passwordValidationNote = "Minimum password length should be 8 and Password should contain alphanumeric characters and atleast one special character"
    static let note = "Note: "
}

enum SegmentDetailConstants {
    static let proceedButtonTitle = "PROCEED"
    static let shareButtonTitle = "SHARE"
    static let smsButtonTitle = "SMS"
    static let paid = "paid"
    static let paidStatus = "Paid"
    static let buttonHeightConstant: CGFloat = 80
    static let maxOtherAccounts: Int = 3
    static let installmentLapsed = "%@ installment is lapsed"
    static let installmentsLapsed = "%@ installments are lapsed"
}

enum ShareConstants {
    static let subject = "Subject"
    static let subjectKey = "subject"
}

enum AccountStatusConstants {
    static let open = "open"
    static let closed = "closed"
    static let hold = "hold"
}

enum AutoDebitConstants {
    static let title = "Standing Instructions"
    static let subTitle = "Account Details"
    static let description = "To make an Auto debit we would require your below details"
    static let sectionTitle = "Register to Auto Debit"
    static let nextButtonTitle = "GET DETAILS"
    static let bottomConstant: CGFloat = 70
}

enum LoggedInBenefitCalculatorConstants {
    static let description = "Please select the account number below to check the estimated discount benefits"
    static let sectionTitle = "Benefit Calculator"
    static let nextButtonTitle = "PROCEED"
    static let tableViewHeight: CGFloat = 260
}

enum LoginOverlayConstants {
    static let title = "Please enter email id below to proceed"
    static let emailIdMissing = "Email id is missing in the profile"
    static let emailPlaceholder = "Email ID*"
}

enum PaymentHistoryConstants {
    static let paid = "Paid On Track"
    static let paidLate = "Paid Late"
    static let pending = "Pending"
    static let sortArray = ["Paid on Track", "Pending"]
}

enum AutoDebitCreditCardConstants {
    static let sectionTitle = "Credit Card Details"
    static let lineSpacing: CGFloat = 6
    static let bottomCellHeight: CGFloat = 200
    static let cellHeight: CGFloat = 80
    static let tableViewBottomHeight: CGFloat = 20
    static let transactionAmountDescription = "SI Test Transaction Amount: "
    static let transactionAmount: Int = 2
    static let description = "\n(Note: Test Transaction amount will be refunded in 5 days)"
    static let proceedToPayment = "PROCEED TO PAYMENT"
    static let expiryDate = "Credit card expiry"
}

enum UpdateAlertConstants {
    static let ignoredUpdate = "ignoredUpdate"
    static let updateAction = "UPDATE"
    static let noThanksAction = "NO, THANK YOU"
    static let updateTitle = "New version available"
    static let forceUpdateText = "Please, update app to new version"
    static let optionalUpdateText = "Please, update app to new version to continue using"
}

enum AppleLoginConstants {
    static let characterSet = "0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._"
    static let invalidLoginRequest = "Invalid state: A login callback was received, but no login request was sent."
    static let noToken = "Unable to fetch identity token"
    static let noAuthCode = "Unable to fetch auth code"
    static let appleProviderId = "apple.com"
    static let emailKey = "email"
    static let noEmail = "Unable to fetch user email"
    static let noUserData = "Unable to fetch user data"
}

enum PaymentAlertConstants {
    static let successTitle = "Success"
    static let successMessage = "Your payment is successful."
    static let failureTitle = "Oh no, Sorry"
    static let failureMessage = "Your payment has failed, to continue you will have to make a payment again or check with your bank for further details."
}

enum GhsScreenConstants {
    static let enrollmentDate = "Enrollment Date"
    static let maturityDate = "Maturity Date"
    static let status = "Status"
    static let totalAmount = "Total Amount"
    static let installmentsPaid = "Installments paid"
    static let nomineeName = "Nominee Name"
    static let mobileNumber = "Mobile Number"
    static let birthday = "Birthday"
    static let address = "Address"
    static let relationship = "Relationship"
    static let estimatedDiscount = "Estimated Discount"
    static let hiText = "Hi! "
    static let guest = "Guest"
    static let name = "Name"
    static let accountNumber = "Account number"
    static let installmentAmount = "Installment Amount"
    static let noOfPendingInstallment = "No of pending installments"
    static let startDate = "Start date"
    static let endDate = "End date"
    static let accountNo = "Account No:  %@\n"
    static let amountPaid = "Amount Paid: %@\n"
    static let isGhsTermsAndConditionAccepted = "isGhsTermsAndConditionAccepted"
    static let accept = "ACCEPT"
    static let termsAndConditions = "Terms & Conditions"
}

//NonGhsRevamp
enum NonGhsUseRevampConstant {
    static let aboutGhs = "About Golden Harvest"
    static let ghsDesc = "Tanishq Golden Harvest is a smart, secure & convenient way to acquire exquisite Tanishq Jewellery of your own choice at the best price"
    static let message = "Enter your mobile number (As per aadhar) and proceed"
}
enum NonLoggedInUserGHSRevampConstant {
    static let openAccountStep = "Open your New Account in just 1 step below"
    static let or = "OR"
    static let makePayement = "To make payment and view details of your account please login"
}
enum PaymentTypeConstants {
    static let cod = "COD"
    static let billDesk = "BillDesk"
    static let payTM = "PayTM"
    static let payU = "PayU"
    static let payPal = "PayPal"
    static let razorPay = "RazorPay"
    static let techProcess = "TechProcess"
}

enum RazorPayConstants {
    static let paymentId = "razorpayPaymentId"
}

enum SideMenuProfileConstants {
    static let defaultHeight: CGFloat = 130
    static let currencySWitcher = "Currency Switcher"
}

enum MaritalStatusConstants {
    static let title = "Marital Status"
    static let single = "Single"
    static let married = "Married"
}

enum MaritialStatusValues {
    static let married = "Married"
    static let single = "Single"
}

enum TghProfileConstants {
    static let success = "Success!"
    static let failure = "Failed!"
}

enum RazorpayResponseConstants {
    static let orderId = "razorpay_order_id"
    static let paymentId = "razorpay_payment_id"
    static let signature = "razorpay_signature"
    static let captured = "||"
}

enum ProductMoreInfoConstant {
    static let amountTitle = "MRP"
    static let amountValue = "%@ (Incl. of all taxes)"
    static let quantityTitle = "Net QTY"
    static let quantityValue = "1 N"
    static let customerDetail = "Contact customer care executive at the manufacturing address above or call us at 1800-266-0123\n\nEmail us at customercare@titan.co.in"
}

enum GoldRateConstant {
    static let gold18ktValue = "18 KT GOLD RATE 1GM = %@"
    static let gold22ktValue = "22 KT GOLD RATE 1GM = %@"
    static let gold24ktValue = "24 KT GOLD RATE 1GM = %@"
}
enum TryonConstant {
    static let productData = "productData"
    static let items = "items"
    static let type = "type"
    static let username = "username"
    static let password = "password"
    static let iosSdk = "ios_sdk"
    static let brandId = "brandId"
}

enum DigiGoldNonLoggedInScreenConstant {
    static let readMoreTitle = "Read More"
}

enum DigiGoldLoggedInScreenConstant {
    static let totalAmount = "Total amount"
    static let goldRatePerGram = "Gold rate/g"
    static let downloadInvoice = "Download Invoice"
    static let viewAll = "View All"
}

enum TransactionConstant {
    static let transactionFailure = "Transaction Unsuccessful!"
    static let transactionSuccess = "Transaction Successful!"
    static let balanceTitle = "Total Gold/Digi locker balance"
    static let transactionNote = "Your Tanishq Digital gold is sold successfully & the amount will be credited to your registered bank within 2 working days. "
    static let checkTanishq = "Check your Tanishq digital gold vault or locker"
    static let downloadInvoice = "Download invoice"
    static let tryAgain = "Try again"
    static let purchaseSuccessful = "Purchase Successful!"
    static let purchaseFailure = "Purchase Failure!"
}

enum DigiGoldBuySellGoldRateScreenConstants {
    static let timerIntervalInSeconds = 1
    static let defaultTimerValue = 1000
    static let timeFormatString = "%01d:%02d"
    static let minute = " min"
    static let goldRateUpdated = "Gold rate updated"
    static let initialTime = "15:00 min"
    static let goldRateBuyTitle = "Gold buying rate"
    static let goldRateSellTitle = "Gold selling rate"
    static let taxInfo = "(Including ₹ %@ of %@"
    static let taxInfoSuffix = "% GST ) of the amount."
    static let goldFeature = "24k  99.9% purity"
    static let warningLabelForBuy = "Start buying for as low as Rs 100"
}

enum DigiGoldBuySellConstants {
    static let enterAmount = "Please enter Amount"
    static let enterGrams = "Please enter Grams"
    static let rsSymbol = "₹ "
    static let perGram = "/g"
    static let amountOptions = ["100", "500", "1000", "10000"]
    static let gramsOptions = ["5 gms", "10 gms", "15 gms", "30 gms"]
    static let taxInclusive = "Inclusive of %@"
    static let percentage = "% GST"
    static let proceed = "Proceed"
    static let proceedToBuy = "Proceed to buy"
    static let equals = "= "
    static let gram = " g"
    static let balanceGrams = " Grams"
    static let minAmount: Double = 100
    static let maxAmount : Double = 5000000
    static let tanishqGoldBalance = "Tanishq Gold Balance "
    static let otherChannelGoldBalance = "Other Channel Gold Balance "
}

enum BuySellInformationConstants {
    static let goldquantity = "Gold quantity ( 24 kT )"
    static let karat = "( 24 kT )"
    static let gstText = "GST ( %@"
    static let gst = "( %@"
    static let percent = " % )"
    static let amount = "Amount"
    static let total = "Total"
    static let nameTitle = "Name:  "
    static let priceValid = "price valid for"
    static let proceedToPayment = "Proceed to payment"
    static let proceedToSell = "Proceed to sell"
    static let acceptTerms = "I agree to share my data with Safe Gold to create a digital gold account."
    static let sellDigiGoldMarkedText = "Your Tanishq Digital Gold once sold successfully. The amount will be credited to your provided bank within 2 working days Check your bank account in 2-3 days."
}

enum EVoucherConstants {
    static let sendOtp = "SEND OTP "
    static let eVoucherCardtitle = "E-Voucher"
    static let eVoucherOtpTitle = "Verify OTP"
    static let eVoucherRedemptiontitle = "Redemption"
    static let redemptionTitle = "Redemption Screen"
    static let availableBalance = "Available balance: "
    static let errorMessage = "You can't redeem this voucher on current transaction"
    static let redeemNote = "You have successfully redeemed %@ E-Voucher for card number %@"
    static let redeemNew = "Redeem New E-Voucher"
    static let proceedToPayment = "Proceed To Payment"
    static let enterEVoucher = "Please Enter E-Voucher"
}

enum DiscountVoucherConstants {
    static let discountVoucherCardtitle = "Discount Voucher"
    static let redeemNoteForDCVoucher = "You have successfully redeemed %@ Discount Voucher for card number %@"
    static let redeemNewDCVoucher = "Redeem New Discount Voucher"
    static let enterDCVoucher = "Please Enter Discount Voucher"
}

enum RivaahBenefitCalConstants {
    static let title = "WEDDING DECISIONS MADE EASY"
    static let info = "A monthly contribution for a wedding in your family will make things a lot easier for you. With the Rivaah Aashirwaad purchase plan, you can plan your jewellery purchase over 10 months, with the flexibility of redemption from the 7th month. An unparalleled discount of up to 40%* on the making charges of your gold jewellery is just the cherry on top!"
    static let monthlyInstallments = "Monthly Installments"
    static let monthlyInstallmentsValue = "20000"
    static let installmentsPaid = "Installments Paid"
    static let installmentsPaidValue = "6"
    static let monthsOfRedemption = "Months of Redemption"
    static let monthsOfRedemptionValue = "7"
    static let discountPercentage = "% Discount on Making Charges"
    static let discountPercentageValue = "10.00%"
    static let maxAmount = 100000000
    static let minAmount = 20000
    static let minMonth = 6
    static let maxMonth = 11
    static let months: [Int] = [6, 7, 8, 9, 10, 11]
    static let firstDiscountCharge: [Int: String] = [6: "10.00%",7: "15.00%", 8: "20.00%", 9: "25.00%", 10: "30.00%"]
    static let secondDiscountCharge: [Int: String] = [6: "20.00%",7: "25.00%", 8: "30.00%", 9: "35.00%", 10: "40.00%"]
    static let discountChangeAmount = 50000
}

enum ProductServiceConstants {
    static let title = "Select any option"
    static let cancel = "Cancel"
    static let textColorKey = "titleTextColor"
}

enum PriceBreakupConstants {
    static let goldRate = "Gold Rate"
    static let netGoldWeight = "Gold Weight (Grams)"
    static let goldValue = "Gold Value"
    static let stoneValue = "Stone Value"
    static let makingCharges = "Making Charges"
    static let subTotal = "Sub Total"
    static let discountValue = "Discount"
    static let subTotalAfterDiscount = "Sub Total After Discount"
    static let taxValue = "GST"
    static let grandTotal = "Grand Total"
    static let karat = " (%@ KT)"
    static let perGram = " / gm"
    static let gram = " gm"
    static let noteText = "(MRP Incl. of all taxes)"
    static let stoneWeight = "Stone Detail"
    static let grossWeight = "Gross Weight"
    static let karatUnit = " ct / "
    static let headerTitle = "Price Breakup"
    static let headerSubTitle = "(Gold rate, Making charges etc)"
}

enum ProductViewConstants {
    static let newTag = "NEW"
}

enum RivaahAshirwaadConstants {
    static let next = "NEXT"
    static let cancel = "CANCEL"
    static let ok = "OK"
}

enum CancelACHOrSIConstants {
    static let screenTitle = "Cancel ACH / SI"
    static let maxItems = 3
    static let achTitle = "ACH Accounts"
    static let siTitle = "SI Accounts"
    static let achDescText = "You can cancel your ACH"
    static let siDescText = "You can cancel your SI"
    static let achErrorText = "No Account is available for Cancellation."
    static let siErrorText = "No Account is available for Cancellation."
    static let loadMoreText = "LOAD MORE"
    static let loadLessText = "LOAD LESS"
    static let successCancel = "Cancellation is successful"
    static let continueShopping = "CONTINUE SHOPPING"
    static let cancelACH = "CANCEL ACH"
    static let cancelSI = "CANCEL SI"
    static let achAccountDetail = "ACH Account Details"
    static let siAccountDetail = "SI Account Details"
}

enum OtpConstants {
    static let maxOTPCount = 6
    static let minOTPCount = 4
    static let fieldSize: CGFloat = 32
    static let separatorSpace: CGFloat = 10
    static let defaultTimerValue = 60
    static let minutesPRefix = "00:"
    static let zeroSeconds = "00:00"
    static let secondsFormatString = "%02d"
    static let otpSentMessage = "An OTP has been sent to %@"
    static let otpNotReceivedMessage = "Have’nt receieved a code yet!"
    static let resend = "RESEND"
    static let verifyOtp = "VERIFY OTP"
    static let verifyOtpTitle = "Verify OTP"
}

enum EGiftCardConstants {
    static let errorMessage = "Partial redemption is not allowed on E-Gift card"
    static let virtual = "Virtual"
    static let eGiftCardChildPartNo = "eGCTanishq"
    static let giftCardChildPartNo = "GCTanishq"
    static let eGiftCardPartNo = "eGCTanishq_P"
    static let myGiftDescription = "This is a gift card from Tanishq. This card can be loaded with a preferred value in any denomination between Rs.100 and Rs. 10,000 with the multiple of Rs. 100 and can be"
    static let myEGiftDescription = "This is a e-gift card from Tanishq. This card can be loaded with a preferred value in any denomination between Rs.100 and Rs. 10,000 with the multiple of Rs. 100 and can be"
    static let tanishqGiftCard = "Your Tanishq Gift Card"
    static let tanishqEGiftCard = "Your Tanishq E-Gift Card"
    static let greetingText = "Hi %@,"
    static let recieverText = "Receiver"
    static let tanishqOnlineGiftCard = "You've got a Tanishq Online E-Gift"
    static let messageText = "Your message will appear here"
    static let noData = "   No Data Found"
    static let giftCardAppliedText = "Gift Card"
    static let eGiftCardAppliedText = "E-Gift Card"
}

enum DigitalGoldRedemptionConstants {
    static let digitalGold = "Digital Gold"
    static let tanishqDigiGoldRedemption = "Tanishq Digital Gold"
    static let otherDigiGoldRedemption = "Other Digital Gold"
    static let secondsFormatString = "%02d"
    static let otpSentMessage = "An OTP has been sent to %@"
    static let otpNotReceivedMessage = "Have’nt receieved a code yet!"
    static let resend = "RESEND"
    static let verifyOtp = "VERIFY OTP"
}

enum ACHDetailTitleConstants {
    static let accNo = "Account No"
    static let createdDate = "ACH Created date"
    static let customerName = "Customer Name"
    static let installmentAmount = "Installment Amount"
    static let noOfMonthsForACH = "No of months for ACH"
    static let bankAccNo = "Bank Account No"
    static let bankAccName = "Bank Account Name"
    static let bankName = "Bank Name"
    static let ifscCode = "IFSC code"
    static let achFromDate = "ACH From Date"
    static let achToDate = "ACH To Date"
    static let remainingMonthsForDeduction = "Remaining months for deduction"
}

enum SIDetailTitleConstants {
    static let accNo = "Account No"
    static let createdDate = "SI Created date"
    static let customerName = "Customer Name"
    static let installmentAmount = "Installment Amount"
    static let noOfMonthsForSI = "No of months for SI"
    static let siFromDate = "SI From Date"
    static let siToDate = "SI To Date"
    static let remainingMonthsForDeduction = "Remaining months for deduction"
}
//OTP Login
enum LoginScreenConstants {
    static let otpLoginTitle = "Login via OTP"
    static let passwordLoginTitle = "Login via password"
    static let socialLoginTitle = "Login using social accounts"
    static let newUserTitle = "New User?"
    static let registerTitle = "Register"
}

public enum EnterOTPScreenConstants {
    static let immediateOtpScreen = "Generate OTP"
    static let loginEnterOtpTitle = "OTP"
    static let loginMobileNumberInputTitle = "Enter mobile number or email ID for OTP"
    static let signUpMobileNumberInputTitle = "Enter mobile number"
    static let mobileEmailTitle = "Mobile Number/Email ID"
    static let EmailTitle = "Enter Email ID"
    static let mobileNumberTitle = "Mobile number"
    static let otpTitleEmailPlaceHolder = "Enter email for OTP"
    static let otpTitleMobilePlaceHolder = "Enter mobile number for OTP"
    static let incorrectMobileNumberText = "Please check your mobile number again."
    static let getOTPText = "Get OTP"
    static let unRegisteredUserText = "If you are not registered with us please Signup"
    static let otpSentToMobileNoMessage = "Enter the 6 digit code sent to "
    static let otpSentToEmailIdMessage = "Enter the 6 digit code sent to "
    static let forgotPassword = "Forgot password?"
    static let login = "Login"
    static let minutesPRefix = "00:"
    static let secondsFormatString = "%02d"
    static let defaultTimerValue = 60
}

//MPIN
public enum MPINScreenConstants {
    static let mpinHeader = "Keep Your DigiGold account even more safe."
    static let mpinSubHeader = "Create a four digit PIN for your DigiGold account"
    static let changeMpin = "Change MPIN"
    static let confirmMpin = "Confirm  New MPIN"
    static let mpinWarning = "Only for DigiGold users"
    static let changeMpinPlaceHolder = "Enter Current MPIN"
    static let successMessageForChangePin = "Digi gold MPIN changed Successfully!"
    static let successMessageForCreatePin = "Four digit PIN created Successfully!"
    static let resetMpin = "Reset MPIN"
    static let newMpin = "Enter New MPIN"
    static let forgotMpinLabelText = "It seems you have forgotten your four digit pin, to reset. Click Here"
    static let enterMPinTitle = "Enter your four-digit MPIN"
    static let touchIdTitle = "or use your fingerprint"
    static let failureMessageForCreatePin = "Something went wrong, please try entering the pin after some time"
}

//SORT Filter Grid Bottom bar view constant
public enum BottomBarViewConstants {
    static let sort = "Sort"
    static let exploreAll = "Explore All Categories"
}

//PAN card addition
public enum PanCardAdditionConstant {
    
    static let  panCardWarning = "You are almost there! Please enter PAN details of the Tanishq account holder to proceed to the next stage and make the payment"
    static let MaxAmountToShowPanCard : Double = 200000
    static let MaxAmountInDollarToShowPancard : Double = 2650.56
    static let verifyAndContinue = "VERIFY AND CONTINUE"
    static let addPanCardError = "Pan Card Details entered does not match with the data provided by NSDL."
    static let panCardVerifiedNotice = "Your Pan card information is already captured. You may proceed to the next stage for payment."
}


//Digi Locker
public enum DigiLockerConstants {
    static let noOfDaysToShowCOA: Int = 15
    static let itemCode = "{ITEM_CODE}"
    static let grams = " gram"
    static let otherWeightUnit = " Carats"
    static let karatageUnit = " Karat"
}

public enum MyOrdersScreenConstants {
    static let noteLineSpacing: CGFloat = 2
}

// Rivaah ghs Widget
public enum RivaahGhsWidgetScreenConstants {
    static let agreeToTnCText = "Please accept Terms and Conditions to proceed with payment."
    static let nameText = "Hi %@!"
    static let totalAmt = "Total Amount Accumulated: Rs %@"
    static let lastInstallmentPaidOn = "Last Installment Paid On: "
    static let totalInstallMents = "Total Installments Paid: "
    static let outOf = "%@ out of %@"
    static let nextDueText = "Your %@ Installment is due on: "
    static let payNextInstallment = "Pay Installment"
    static let wishlist = "Wishlist Products"
    static let findAStore = "Find a Store"
    static let noNextDue = "No pending installment to be paid."
    static let ghsAccountno = "GHS account no"
    static let rivahAccountno = "Rivaah account no"
    static let ghsAccountBal = "GHS account balance"
    static let rivahAccountBal = "Rivaah account balance"
    static let installPaid = " installments paid"
    static let nextDue = "Next installment due on"
    static let matuitryAmount = "Benefit Amount"
    static let currencySym = "₹ "
    
}
//Rivaah Trousse Wideget
public enum RivaahTrousseScreenConstants {
    static let shopthelook = "Shop the look"
    static let speaktospecialist = "Speak to a Specialist"
    static let explore = "Explore"
}
public enum PickUpFromWhereYouLeftConstants {
    static let currencySym = "₹ "
    static let viewProductButtonTitle = "View Product"
}

enum CacheDataConstants {
    static let cachedKey = "CachedResponse"
    static let cachedValue = "CachedResponseValue"
}

//Filter constants
public enum FilterConstants {
    static let price = "Price"
    static let priceFilterIdentifier = "price_inr"
}

public enum OrderReviewShipmentConstants {
    static let SDDShipModeName = "same day delivery"
}

public enum OrderHistorySourceConsants {
    static let noScreenName = "NoScreenName"
    static let homeScreen = "HomeScreen"
    static let myOrders = "MyOrders"
}

public enum ErrorMessageConstants {
    static let tryAgain = "TRY AGAIN"
    static let ok = "OKAY"
    static let goBack = "GO BACK"
    static let shopNow = "SHOP NOW"
    static let refresh = "REFRESH"
    static let forbiddenTitle = "403 Forbidden"
    static let unauthorizedTitle = "Unauthorized"
    static let noDataTitle = "No data found"
    static let plpNoProducts = "No Products are available under this category"
    static let plpError = "Unable to fetch the product list"
    static let forbiddenMessage = "We’re sorry. You don’t have permission to access this server"
    static let unAuthorisedLoggedIn = "Invalid Credentials. Please go back and try again"
    static let unAuthorisedNonLoggedIn = "Clearing previous guest data"
    static let unableToConnectToServerMessage = "Failed to connect to the server. Please check your internet and proxy settings to try again"
    static let noOrderUserMessage = "Looks like you haven’t made your order yet"
    static let noOrderPageMessage = "Load next page"
    static let noOrderTitle = "No Order found"
    static let orderListErrorTitle = "Unable to fetch the order list"
    static let wishlistListErrorTitle = "Oops!"
    static let wishlistListErrorMessage = "Unable to fetch your wishlist"
}

// MoEngage in app constants

public enum InAppMessagingDeeplinks {
    static let deeplink = "deeplink"
    static let deeplinkType = "deeplink_type"
    static let actionType = "actionType"
    static let deeplinkPdp = "deeplinkPDP"
    static let deeplinkPLP = "deeplinkPLP"
    static let deeplinkCart = "deeplinkCart"
    static let deeplinkLogin = "deeplinkLogin"
    static let deeeplinkHome = "deeplinkHome"
    static let deeplinkDigigold = "digigold_landing"
    static let deeplinkHamburgerMenu = "deeplinkHamburgerMenu"
    static let contentTypePdp = "PDP"
    static let contentTypePlp = "PLP"
    static let deepLinkGHsPayment = "ghsnotification5"
}

public enum AddtoCartInAppPayload {
    static let addToCart = "addToCart"
    static let productId = "productId"
    static let productUrl = "productUrl"
    static let quantity = "quantity"
    static let name = "name"
    static let uniqueId = "uniqueId"
    static let selectedSkuPartumber = "selectedSkuPartumber"
    static let category = "category"
    static let motherBrand = "WT_TX_MOTHER_BRAND"
    static let displayBrand = "WT_TX_DISPLAY_BRAND"
    static let actaulPrice = "actaulPrice"
    static let offerPrice = "offerPrice"
    static let discount = "discount"
    static let imageUrl = "imageUrl"
    static let availability = "availability"
    static let gender = "gender"
    static let tagRibbons = "tagRibbons"
    static let fullImagePath = "fullImagePath"
    static let partNumber = "partNumber"
    static let collection = "collection"
    static let shortDescription = "shortDescription"
}

public enum InAppScreenNames {
    static let plpInapp = "Plp"
    static let pdpInapp = "Pdp"
    static let homeInapp = "Home"
    static let loginInapp = "Login"
    static let digigoldInapp = "Digigold"
    static let cartInapp = "Cart"
    static let checkpoutInapp = "Checkout"
    static let paymentInapp = "Payment"
    static let chechoutSuccessInapp = "CheckoutSuccess"
    static let sideMenuInapp = "HamburgerMenu"
}


enum ApxorConstants {
    static let beginningOfTimeDate = "0001-01-01"
}

enum MyOrderListConstants {
    static let hello = "Hello "
    static let user = "User"
    static let currentOrderStatus = "Current Online\nOrders"
    static let pastOrderStatus = "Past Online\nOrders"
    static let pastStoreOrder = "Past Store\nOrders"
    static let orderNo = "Order Number : "
    static let invoiceNo = "Invoice Number : "
    static let itemCode = "Item Code : "
    static let product = "Product : "
    static let orderPlacedOn = "Order Placed on : "
    static let orderStatus = "Status : "
    static let showMoreButtonText = "Show more"
    static let orderDelivered = "Order Delivered"
}

enum DeleteAccountConstants {
    static let comments = "Comments"
    static let astrick = "*"
    static let commentPlaceHolder = "Enter your comments here"
    static let maxTextCount = 300
    static let infoText = "You are just one step away form deleting your account. If you delete your account you won’t be able to reactivate it later"
    static let verify = "Verify"
    static let verified = "Verified"
    static let submit = "Submit"
    static let confirmSubmit = "Are you sure you want to submit a request to Delete your Account Permanently?"
    static let no = "No"
    static let yes = "Yes"
    static let accountDeletionSubmitted = "Your request for deletion of account is submitted to our customer care team, who will review the billing and cancellation information & revert to you."
    static let ok = "OK"
    static let noProfileDetails = "Unable to fetch the profile details, Please try again after some time"
    static let accountDeleted = "Your request for account deletion is in progress"
    static let accountDeletionStatusError = "Something went wrong, Please try again after some time"
    static let accountDeletionError = "Your request for user account deletion is not possible right now. Please try after some time."
}

enum FloatingTextFieldConstants {
    static let astrick = "*"
}

enum ActivityIndicatorConstants {
    static let loadingMessage = "Please wait this page is laoding..."
}

enum SubMenuConstants {
    static let login = "Login"
    static let signUp = "Signup"
    static let or = "or"
    static let message = "to access your profile"
}

enum SearchScreenConstants {
    static let searchPlaceholder = "Search our products"
    static let search = "Search"
    static let openCamera = "Open Camera"
    static let uploadImage = "Upload Image"
    static let imageSearchMaxScore: Double = 0.95
    static let imageSearchMinScore: Double = 0.3
}
