//
//  ConfigDoctor.swift
//  MediTimePatient
//
//  Created by BLT0010-MACMINI on 13/12/16.
//  Copyright © 2016 BlisslogixTechnologySolutions. All rights reserved.
//

import UIKit

class ConfigDoctor: NSObject {
    
    // Live Server
    //    //New Client testing  13.127.24.123
    
//        static let BASE_URL = "https://meditimes.co/meditimes/API/index.php/v2/"
//        static let BASE_URL1 = "https://meditimes.co/meditimes/API/index.php/v1/"             //Changes
//        static let BASE_ImageURL = "https://meditimes.co/meditimes/"
//        static let UPLOAD_IMAGE_URL = "https://meditimes.co/meditimes/API/index.php/v2/common/fileUpload"
//        static let UPLOAD_PATIENT_IMAGE_URL = "https://meditimes.co/meditimes/API/index.php/v2/patient/uploadReports"
  //  static let FOOTER_IMAGE_URL = "https://meditimes.co"
    
    
//
//        static let BASE_URL = "https://meditimes.ai/meditimes/API/index.php/v2/"
//        static let BASE_URL1 = "https://meditimes.ai/meditimes/API/index.php/v1/"
//
//    //Changes
//        static let BASE_ImageURL = "https://meditimes.ai/meditimes/"
//        static let UPLOAD_IMAGE_URL = "https://meditimes.ai/meditimes/API/index.php/v2/common/fileUpload"
//        static let UPLOAD_PATIENT_IMAGE_URL = "https://meditimes.ai/meditimes/API/index.php/v2/patient/uploadReports"
//    static let FOOTER_IMAGE_URL = "https://meditimes.ai"
    static let BASE_URL = "https://meditimes.co.in/meditimes/API/index.php/v2/"
    static let BASE_URL1 = "https://meditimes.co.in/meditimes/API/index.php/v1/"
    
    //Changes
    static let BASE_ImageURL = "https://meditimes.co.in/meditimes/"
    static let UPLOAD_IMAGE_URL = "https://meditimes.co.in/meditimes/API/index.php/v2/common/fileUpload"
    static let UPLOAD_PATIENT_IMAGE_URL = "https://meditimes.co.in/meditimes/API/index.php/v2/patient/uploadReports"
    static let FOOTER_IMAGE_URL = "https://meditimes.co"
    
    
//    static let BASE_URL = "http://13.127.24.123/meditimes/API/index.php/v2/"
//    static let BASE_URL1 = "http://13.127.24.123/meditimes/API/index.php/v1/"               //Changes
//    static let BASE_ImageURL = "http://13.127.24.123/meditimes/"
//    static let UPLOAD_IMAGE_URL = "http://13.127.24.123/meditimes/API/index.php/v2/common/fileUpload"
//    static let UPLOAD_PATIENT_IMAGE_URL = "http://13.127.24.123/meditimes/API/index.php/v2/patient/uploadReports"
    // static let FOOTER_IMAGE_URL = "https://meditimes.co"
//
    //SOCKET CONFIG:
    let userID = "235"
    let Connect:String = "connect"
    let network_disconnect:String = "Disconnect"
    let CreateRoom:String = "create_user"
    static let messageListen = "message"
    static let onlineStatus = "onlinestatus"
    //let SocketCreateRoomUrl:String = "https://meditimes.ai:39774"
    let SocketCreateRoomUrl:NSString="https://meditimes.ai:39774"
    //Listen to CreateUser
    let create_user:String = "create_user"
    //UserCreated Acknowledgement
    let usercreated:String = "usercreated"
    //Listen to offline messages
    let sc_get_offline_messages:String = "sc_get_offline_messages"
    //Listen to groupMessage
    let group:String = "group"
    //Check message deliever or not
    let sc_message_response:String = "sc_message_response"
    let sc_message:String = "sc_message"
    //Message acknowledgement
    let sc_message_ack:String = "sc_message_ack"
    let sc_contacts:String = "sc_contacts"
    let GetPhoneContact:String = "GetPhoneContact"
    
    let CreateGroup:String = "group"
    let sc_uploadImage = "app"+"/"+"fileUpload"
    let sc_recev_ImagePath = "app"+"/"+"received"
    let sc_changeProfilePic:String = "uploadImage"
    let appgetGroupList:String = "app"+"/"+"getGroupList"
    let getGroupDetails:String = "getGroupDetails"
    let remove_user:String = "remove_user"
    let sc_changeStatus = "changeProfileStatus"
    let sc_changeName:String = "changeName"
    let GetMobileSettings:String = "GetMobileSettings"
    let qrdata:String = "qrdata"
    let sc_get_server_time:String = "sc_get_server_time"
    let sc_get_user_Details:String = "sc_get_user_Details"

    
    //EMAIL AND MOBILE NUMBER EXIST VERIFICATION
    static let CHECK_EMAIL_EXIST = "post/Common/CommonEmailVerificationdoctor"
    static let CHECK_MOBILE_EXIST = "doctor/selfRegister"
    static let GET_ACCESS_TOKEN = "get/AccessRefresh/AccessToken"
    static let CHECk_ACCESS_TOKEN = "post/Common/ValidateAccessToken"
    static let GET_INTRO_IMAGES = "common/introImages"
    static let DOCTOR_REGISTER_API = "post/Doctor/DoctorRegister"

    static let DOCTOR_LOGIN = "doctor/login"
    static let DOCTOR_ASSISTANT = "assistant/activeAssistant"
    static let DOCTOR_RESEND_OTP = "common/generateOtp"
    static let DOCTOR_FORGOT_PASSWORD = "doctor/setNewPassword"
    static let DOCTOR_COMMON_OTP = "doctor/forgotPassword"
    static let DOCTOR_GET_OTP = "get/Common/GetOTP"
    static let DOCTOR_CALLBACK = "doctor/executiveCallback"
    static let DOCTOR_SELFREG = "doctor/confirmRegister"
    static let DOCTOR_PERSONAL = "doctor/updatePersonalDetails"
    
    static let GET_DOCTOR_PERSONAL = "doctor/personalDetails"
    static let DOCTOR_PROFESSIONAL = "doctor/updateProfessionalDetails"
    static let GET_DOCTOR_PROFESSIONAL = "doctor/professionalDetails"
    
    //DOCTOR DETAIL
    static let GET_COUNTRIES = "get/Common/GetCountrys"
    static let GET_STATES = "get/Common/SelectState"
    static let GET_CITIES = "common/checkPincode"    //GetCities"
    
    //SPECILITY PAGE
//    static let GET_SPECIALITY = "get/Common/GetSpecilaty"

    
    static let GET_QUALIFICATION = "common/qualificationList"
    static let GET_SPECIALIZATION = "get/Common/ListSpecilization"
    static let GET_REGIS_TYPE = "common/registrationList"
    static let GET_SPECIALIZATION_NEW = "common/specialityList"
    //Home
//    static let GET_MENU = "get/Usermenus/UserMenu"
    static let GET_REPORT_COUNT = "get/Doctorhospital/doctorlabreportcount?"
    static let GET_AD = "advertisement/lists"
    static let POST_AD_COUNT = "advertisement/view"
    static let GET_WALKINCOMPLETED_COUNT = "walkin/bookingListCount"
    
    //Availability
    static let GET_SESSION = "get/Doctor/GetSessionNames"
    static let GET_INTERVAL = "clinic/slotInterval"
    static let GET_AVAILABILITY = "clinic/availabilityList"
    static let GET_WEEKDAYS = "get/Common/GetWeekDays"
    static let GET_CLINICNAME = "clinic/lists"
    static let ADD_SESSION = "post/Doctoravailability/AddEditSlotName"
    static let GET_BOOKINGSLOT = "get/Doctorhospital/DoctorSlotsSummary"
    static let DELETE_BOOKINGSLOT = "post/Doctoravailability/DeleteTimeSlot"
    static let EDIT_BOOKINGSLOT = "post/Doctoravailability/EditbookingSlot"
    static let GET_BOOKEDSLOT = "post/Booking/DocotorBookingDetails?"
    static let CANCEL_BOOKEDSLOT = "post/Booking/booking_cancel_by_doctor"
    static let ADD_AVAILABILITY = "clinic/addAvailability"
    static let ADD_NONAVAILABILITY = "post/Clinic/AddClinicNonAvailability"
    static let UPDATE_AVAILABILITY = "clinic/updateAvailability"
    static let UPDATE_NONAVAILABILITY = "clinic/updateNonAvailability"
    
    //Appointment
    static let GET_DOCTORBOOKINGVIEW = "walkin/bookingList"
    static let GET_INTIME = "booking/updateIntime"
    
    //Multi Clinic
    static let GET_CLINIC = "clinic/lists"
    static let GET_CLINICDETAILS = "rx/clinicDetails"
    static let ADD_CLINIC = "clinic/add"
    static let REMOVE_CLINIC = "clinic/delete"
    static let EDIT_CLINIC = "clinic/edit"
    static let GET_WALKINCOUNT = "walkin/count"
    static let POST_GETPRESCRIPTIONSETTINGS = "rx/prescriptionSettings"
    //ASSISTANT
    static let GET_PERMISSION = "get/DoctorAssistant/Doctorassistantpermission?"
    static let GET_ASSISTANT = "assistant/lists"
    static let GET_IAMASSISTANT = "assistant/assisting"
    //CHATS
    static let GETCHAT_HISTORY = "chat/history"
    static let SEND_MESSAGE = "chat/sendMessage"
    static let GETCHAT_VIDEOSESSION = "tokbox/generateSession"

    static let ADD_ASSISTANT = "assistant/add"
    static let UPDATE_ASSISTANT = "assistant/edit"
    static let DELETE_ASSISTANT = "assistant/delete"
    static let SEARCH_PATIENT = "patient/search"
    static let SEARCH_PATIENTNAME = "patient/searchByPatientName"
    static let ADD_WALKIN = "walkin/add"
    static let ADD_FAMILY = "patient/addFamilyMember"
    static let ADD_WALKINAPPOINTMENT = "walkin/booking"
    
    //ADD REFERRAL
    static let SEARCH_REFERRAL = "post/Referencedoctor/SearchReferalDocotrs"
    static let ADD_REFERRAL = "post/Referencedoctor/AddNewReferalDoctor?"
    static let ADD_REFERRALNEW = "referraldoctor/add"
    static let ADD_REFERRALDOCTOR = "post/Referencedoctor/AddReferalDoctor?"
    static let EDIT_MEDIREFERRALDOCTOR = "referraldoctor/update"
    static let EDIT_REFERRALDOCTOR = "post/Referencedoctor/EditReferalDoctor?"
    static let GET_REFERRAL = "referraldoctor/lists"
    static let DEL_REFFERAL = "referraldoctor/delete"
    
  
    static let GET_SEVERITY = "get/Prescription/GetSeverity"
    static let GET_DURATION = "common/durationList"

    
    static let GET_PATIENTINFORMATION = "rx/patientHistory"
    static let GET_PATIENTHISTORY = "get/Prescription/patientprescriptionhistory?"
    static let GET_VITALS = "prescription/vitalSearch"
    
    static let GET_SYMTOMS = "rx/symptoms"
    static let GET_SYMTOMSDEFAULT = "rx/symptoms"
     static let GET_HISTORYRISKAUTOFILL = "rx/autofill"
    static let GET_NOTES = "rx/notes"
    static let GET_CHOICELIST = "rx/choiceLists"
    static let GET_TREATMENTS = "rx/treatmentPlan"
    
    //Prescription P2
    static let GET_FOLLOWUPSLOT = "clinic/slot"
    static let POST_BOOKAPPOINTMENT = "booking/add"
    static let GET_ADVICELIST = "rx/doctorAdvice"
    static let GET_LOADTEMPLATE = "rx/loadTemplate"
    static let GET_FOLLOWUPLIST = "rx/followup"
    static let GET_REFERTOLIST = "rx/referalDoctorList"
    static let ADD_PRESCRIPTION1 = "rx/aiRxDisease"
    static let ADD_PRESCRIPTION2 = "prescription/aiDrugs"
    static let ADD_PREDATAFORDISEASE = "rx/aiRxLabAndDiagnostics"
    static let POST_DOCTORQUESTION = "post/Doctorhospital/PostDoctorQuestion"
    static let GET_SEARCHQUESTION = "get/Prescription/SearchQuestion?"
    static let POST_PRIMARYDISEASES = "post/Doctorhospital/Postprimarydiseases"
    static let GET_DISEASELIST = "rx/diagnosis"
    static let GET_LABLIST = "rx/labs"
    static let GET_DIAGNOSISLIST = "rx/diagnostics"
    static let GET_DRUGLIST = "rx/drugs"
    static let GET_FREQUENCYLIST = "rx/frequency"
    static let GET_ROUTELIST = "rx/routes"
    static let CONFIRM_PRESCRIPTION = "rx/confirmPrescription"
    static let GET_GENERICLIST = "rx/searchGenerics"
    static let GET_MANUFACTURERLIST = "rx/manufacturerList"
    static let GET_MANUFACTURERBRANDLIST = "rx/manufacturerBrands"
    
    //postdrugslabs
    static let POST_ALTERNATESPONSOREDDRUGS = "rx/similarAlternateSponsoredDrugs"
    static let POST_BRANDDRUGS = "rx/strength"
    
    //Comments
    static let POST_PRESCRIPTIONCMDS = "post/Prescription/addcommentsprescription?"
    
    //Summary
    static let GET_PRESCRIPTIONSUMMARY = "rx/prescriptionSummary"

    static let POST_GETTEMPLATE = "rx/loadTemplate"
    static let POST_SAVETEMPLATE = "rx/saveTemplate"
    static let SAVE_TEMPLATE = "rx/saveTemplate"
    static let POST_CHOICE = "prescription/choice"
    static let POST_UPDATEPRESCRIPTIONSETTINGS = "rx/UpdatePrescriptionSettings"
    static let LOAD_TEMPLATE = "rx/loadTemplate"
    static let CONFIRM_TEMPLATE = "rx/confirmPrescription"
    
    //Reports
    static let GET_LABPRESCRIPTIONS = "get/Doctorhospital/GetLabprecscriptions?"
    static let GET_PRESCRIPTION1 = "post/Prescription/getPrescriptionone?"
    static let GET_PRESCRIPTION2 = "get/Doctorhospital/getPrescriptiontwo?"
    static let POST_STATUS = "post/Doctor/prescriptionstatus?"
    //Subscription][]]]
    static let UPDATE_PLANS = "plan/updatePlan"
    static let GET_PLANS = "common/planList"
    static let GETPAY_DETAILS = "payment/transaction"
    static let GETPAY_BALANCEDETAILS = "doctor/paymentdetails"
    static let GETPAY_DECREASEVALIDITY = "plan/switchPlan"
    static let SEND_PAYMENTDETAILS = "payment/applePayResponse"
    static let GET_SUBSCRIPTIONHISTORY = "common/getPlanHistory"
    //Info
    static let GET_GENERICMANUFACTURELIST = "common/doctorPrescribedList"
    static let GET_UPDATEGENERICMANUFACTURELIST = "common/brandAndGenericList"
    static let GET_GRAPHDETAILS = "doctor/info"
    //Records
    static let GET_PATIENTLIST = "patient/lists"
    static let GET_PATIENTRECORDS = "patient/records"
    static let GET_LABREPORTS = "booking/reports"
    static let GET_VIEWREPORTS = "booking/viewReports"
    static let GET_REVIEWREPORTS = "booking/reviewPrescription"
    static let GET_PRESCRIPTIONRECORDS = "get/Doctor/Patientreports?"
    
    
    
    //PROFILE API
    static let GET_DOCTOR_PROFILE = "get/Doctor/GetDoctorProfile"
    
    //INTROSCREEN UPDATE API
    static let CHECK_INTROSCREEN_UPDATE = "get/Common/CheckIntro"
    static let GET_ALL_PINCODE = "get/Common/GetAllPincodes"

    
    //GET AND EDIT TEMPLATE API
    static let GET_TEMPLATE_DATA = "get/Doctorhospital/DoctorClinicTemplate"
    static let ADD_TEMPLATE = "post/Doctorhospital/DoctorAddTemplate"
    
    //ADD SIGNATURE
    static let SAVE_SIGNATURE_API = "signature/add"
    static let GET_SIGNATURE_API = "signature/view"
    
    //QUERIES
    static let GET_QUERY = "doctor/patientQueryAndAnswer"
    static let POST_QUERY_ANS = "doctor/answerForPatientQuery"
    
}
