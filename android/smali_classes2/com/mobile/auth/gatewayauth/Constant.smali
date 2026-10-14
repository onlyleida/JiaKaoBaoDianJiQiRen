.class public Lcom/mobile/auth/gatewayauth/Constant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mobile/auth/gatewayauth/annotations/AuthNumber;
.end annotation


# static fields
.field public static final ACTION_AUTH_PAGE_LOGIN:Ljava/lang/String; = ".authpage.login"

.field public static final ACTION_AUTH_PAGE_PROTOCOL:Ljava/lang/String; = ".authpage.protocol"

.field public static final ACTION_AUTH_PAGE_RETURN:Ljava/lang/String; = ".authpage.return"

.field public static final ACTION_AUTH_PAGE_START:Ljava/lang/String; = ".authpage.start"

.field public static final ACTION_AUTH_PAGE_SWITCH:Ljava/lang/String; = ".authpage.switch"

.field public static final ACTION_CHECK:Ljava/lang/String; = "sdk.check"

.field public static final ACTION_CMCC_AUTH_TOKEN:Ljava/lang/String; = "cmcc.getoken"

.field public static final ACTION_CMCC_LOGIN_CODE:Ljava/lang/String; = "cmcc.get.logincode"

.field public static final ACTION_CMCC_LOGIN_TOKEN:Ljava/lang/String; = "cmcc.get.logintoken"

.field public static final ACTION_CTCC_AUTH_TOKEN:Ljava/lang/String; = "ctcc.getoken"

.field public static final ACTION_CTCC_LOGIN_CODE:Ljava/lang/String; = "ctcc.get.logincode"

.field public static final ACTION_CTCC_LOGIN_TOKEN:Ljava/lang/String; = "ctcc.get.logintoken"

.field public static final ACTION_CUCC_AUTH_TOKEN:Ljava/lang/String; = "cucc.getoken"

.field public static final ACTION_CUCC_LOGIN_CODE:Ljava/lang/String; = "cucc.get.logincode"

.field public static final ACTION_CUCC_LOGIN_TOKEN:Ljava/lang/String; = "cucc.get.logintoken"

.field public static final ACTION_HOOK:Ljava/lang/String; = "anti.hook"

.field public static final ACTION_PHONE_LOGGER_ENABLE:Ljava/lang/String; = "sdk.logger.enable"

.field public static final ACTION_PHONE_UPLOAD_ENABLE:Ljava/lang/String; = "sdk.upload.enable"

.field public static final ACTION_QUERY_VENDOR_LIST:Ljava/lang/String; = "pns.vendor.querylist"

.field public static final ACTION_SDK:Ljava/lang/String; = "sdk."

.field public static final ACTION_SDK_AUTH_TOKEN:Ljava/lang/String; = ".getoken"

.field public static final ACTION_SDK_CMCC_AUTH_TOKEN:Ljava/lang/String; = "sdk.cmcc.getoken"

.field public static final ACTION_SDK_CRASH:Ljava/lang/String; = "sdk.crash"

.field public static final ACTION_SDK_CRASH_OCCURRED:Ljava/lang/String; = "sdk.crash.occurred"

.field public static final ACTION_SDK_CROSS_CARRIER_CHANGE:Ljava/lang/String; = "sdk.cross.carrier.change"

.field public static final ACTION_SDK_CTCC_AUTH_TOKEN:Ljava/lang/String; = "sdk.ctcc.getoken"

.field public static final ACTION_SDK_CUCC_AUTH_TOKEN:Ljava/lang/String; = "sdk.cucc.getoken"

.field public static final ACTION_SDK_DEBUG_MODE:Ljava/lang/String; = "sdk.debug.mode"

.field public static final ACTION_SDK_DESTROY:Ljava/lang/String; = "sdk.destroy"

.field public static final ACTION_SDK_LIFE_BODY_CERTIFY_ID:Ljava/lang/String; = "sdk.get.lifebody.certifyId"

.field public static final ACTION_SDK_LIFE_BODY_VERIFY:Ljava/lang/String; = "sdk.get.lifebody.verifytoken"

.field public static final ACTION_SDK_LOGIN_CODE:Ljava/lang/String; = ".get.logincode"

.field public static final ACTION_SDK_LOGIN_TOKEN:Ljava/lang/String; = ".get.logintoken"

.field public static final ACTION_SDK_PRE_AUTH_CODE:Ljava/lang/String; = ".pregetoken"

.field public static final ACTION_SDK_PRE_LOGIN_CODE:Ljava/lang/String; = ".get.prelogincode"

.field public static final ACTION_SDK_QUIT_AUTH_PAGE:Ljava/lang/String; = "sdk.quit.auth"

.field public static final ACTION_SDK_UNKNOWN_AUTH_TOKEN:Ljava/lang/String; = "sdk.unknown.getoken"

.field public static final API_LEVEL_0:I = 0x0

.field public static final API_LEVEL_1:I = 0x1

.field public static final API_LEVEL_2:I = 0x2

.field public static final API_PARAMS_KEY_ENABLE:Ljava/lang/String; = "isEnable"

.field public static final API_PARAMS_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final API_PARAMS_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final AUTH_TOKEN_STATUS:I = 0x1

.field public static final CHECKBOX_HIDDEN_PROTOCOL_PREFIX:Ljava/lang/String; = "\u70b9\u51fb%s\u8868\u793a\u60a8\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

.field public static final CHECKBOX_NO_HIDDEN_PROTOCOL_PREFIX:Ljava/lang/String; = "\u6211\u5df2\u9605\u8bfb\u5e76\u540c\u610f"

.field public static final CMCC:Ljava/lang/String; = "CMCC"

.field public static final CMCC_PROTOCOL:Ljava/lang/String; = "\u4e2d\u56fd\u79fb\u52a8\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

.field public static final CMCC_PROTOCOL_URL:Ljava/lang/String; = "https://wap.cmpassport.com/resources/html/contract.html"

.field public static final CMCC_SLOGAN:Ljava/lang/String; = "\u4e2d\u56fd\u79fb\u52a8\u63d0\u4f9b\u8ba4\u8bc1\u670d\u52a1"

.field public static final CODE_AUTHPAGE_ON_RESULT:Ljava/lang/String; = "6001"

.field public static final CODE_ERROR_APP_CANCEL:Ljava/lang/String; = "-72934"

.field public static final CODE_ERROR_BUTTON_TEXT_ILLEGAL:Ljava/lang/String; = "-72933"

.field public static final CODE_ERROR_FUNCTION_DEMOTE:Ljava/lang/String; = "-10009"

.field public static final CODE_ERROR_FUNCTION_LIMIT:Ljava/lang/String; = "-10010"

.field public static final CODE_ERROR_GET_CONFIG_FAIL:Ljava/lang/String; = "-10002"

.field public static final CODE_ERROR_NO_MOBILE_NETWORK_FAIL:Ljava/lang/String; = "-10006"

.field public static final CODE_ERROR_NO_PERMISSION_FAIL:Ljava/lang/String; = "-10004"

.field public static final CODE_ERROR_NO_SIM_FAIL:Ljava/lang/String; = "-10005"

.field public static final CODE_ERROR_OPERATOR_UNKNOWN_FAIL:Ljava/lang/String; = "-10007"

.field public static final CODE_ERROR_PHONE_UNSAFE_FAIL:Ljava/lang/String; = "-10003"

.field public static final CODE_ERROR_START_AUTHPAGE_FAIL:Ljava/lang/String; = "-10001"

.field public static final CODE_ERROR_UNKNOWN_FAIL:Ljava/lang/String; = "-10008"

.field public static final CODE_ERROR_USER_CANCEL:Ljava/lang/String; = "-72931"

.field public static final CODE_ERROR_USER_SWITCH:Ljava/lang/String; = "-72932"

.field public static final CODE_GET_TOKEN_SUCCESS:Ljava/lang/String; = "8000"

.field public static final CODE_START_AUTHPAGE_SUCCESS:Ljava/lang/String; = "6000"

.field public static final CTCC:Ljava/lang/String; = "CTCC"

.field public static final CTCC_PROTOCOL:Ljava/lang/String; = "\u5929\u7ffc\u8d26\u53f7\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

.field public static final CTCC_PROTOCOL_URL:Ljava/lang/String; = "https://e.189.cn/sdk/agreement/detail.do?isWap=true&hidetop=true&appKey=8138111118"

.field public static final CTCC_SLOGAN:Ljava/lang/String; = "\u4e2d\u56fd\u7535\u4fe1\u63d0\u4f9b\u8ba4\u8bc1\u670d\u52a1"

.field public static final CUCC:Ljava/lang/String; = "CUCC"

.field public static final CUCC_PROTOCOL:Ljava/lang/String; = "\u8054\u901a\u7edf\u4e00\u8ba4\u8bc1\u670d\u52a1\u6761\u6b3e"

.field public static final CUCC_PROTOCOL_URL:Ljava/lang/String; = "https://opencloud.wostore.cn/authz/resource/html/disclaimer.html?fromsdk=true"

.field public static final CUCC_SLOGAN:Ljava/lang/String; = "\u4e2d\u56fd\u8054\u901a\u63d0\u4f9b\u8ba4\u8bc1\u670d\u52a1"

.field public static final DEFAULT_SECURITY_VERIFY_TIMEOUT:I = 0x4e20

.field public static final DEFAULT_TIMEOUT:I = 0x1388

.field public static final LOGIN_ACTIVITY_ACCESSCODE:Ljava/lang/String; = "accesscode"

.field public static final LOGIN_ACTIVITY_DIAGLOG:Ljava/lang/String; = "isDialog"

.field public static final LOGIN_ACTIVITY_ENTER_ANIM:Ljava/lang/String; = "enterAnim"

.field public static final LOGIN_ACTIVITY_EXIT_ANIM:Ljava/lang/String; = "exitAnim"

.field public static final LOGIN_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "isForResult"

.field public static final LOGIN_ACTIVITY_NUMBER:Ljava/lang/String; = "number"

.field public static final LOGIN_ACTIVITY_PROTOCOL_NAME:Ljava/lang/String; = "protocolName"

.field public static final LOGIN_ACTIVITY_PROTOCOL_URL:Ljava/lang/String; = "protocolURL"

.field public static final LOGIN_ACTIVITY_REQUEST_CODE:Ljava/lang/String; = "requestCode"

.field public static final LOGIN_ACTIVITY_UI_MANAGER_ID:Ljava/lang/String; = "ui_manager_id"

.field public static final LOGIN_ACTIVITY_VENDOR_KEY:Ljava/lang/String; = "vendor"

.field public static final LOGIN_CODE_STATUS:I = 0x2

.field public static final LOGIN_TOKEN_STATUS:I = 0x3

.field public static final MSG_AUTHPAGE_ON_RESULT:Ljava/lang/String; = "\u6388\u6743\u9875\u6536\u5230onActivityResult"

.field public static final MSG_ERROR_APP_CANCEL:Ljava/lang/String; = "\u7a0b\u5e8f\u4e3b\u52a8\u9000\u51fa\u767b\u5f55"

.field public static final MSG_ERROR_BUTTON_TEXT_ILLEGAL:Ljava/lang/String; = "\u767b\u5f55\u6309\u94ae\u6587\u6848\u975e\u6cd5"

.field public static final MSG_ERROR_FUNCTION_DEMOTE:Ljava/lang/String; = "\u7cfb\u7edf\u7ef4\u62a4\uff0c\u529f\u80fd\u4e0d\u53ef\u7528"

.field public static final MSG_ERROR_FUNCTION_LIMIT:Ljava/lang/String; = "\u8be5\u529f\u80fd\u5df2\u8fbe\u6700\u5927\u8c03\u7528\u6b21\u6570"

.field public static final MSG_ERROR_GET_CONFIG_FAIL:Ljava/lang/String; = "\u83b7\u53d6\u8fd0\u8425\u5546\u914d\u7f6e\u4fe1\u606f\u5931\u8d25"

.field public static final MSG_ERROR_NO_MOBILE_NETWORK_FAIL:Ljava/lang/String; = "\u79fb\u52a8\u7f51\u7edc\u672a\u5f00\u542f"

.field public static final MSG_ERROR_NO_PERMISSION_FAIL:Ljava/lang/String; = "read phone state \u6743\u9650\u672a\u6388\u6743"

.field public static final MSG_ERROR_NO_SIM_FAIL:Ljava/lang/String; = "SIM\u5361\u65e0\u6cd5\u68c0\u6d4b"

.field public static final MSG_ERROR_OPERATOR_UNKNOWN_FAIL:Ljava/lang/String; = "\u65e0\u6cd5\u5224\u8fd0\u8425\u5546"

.field public static final MSG_ERROR_PHONE_UNSAFE_FAIL:Ljava/lang/String; = "\u624b\u673a\u7ec8\u7aef\u4e0d\u5b89\u5168"

.field public static final MSG_ERROR_START_AUTHPAGE_FAIL:Ljava/lang/String; = "\u5524\u8d77\u6388\u6743\u9875\u5931\u8d25"

.field public static final MSG_ERROR_UNKNOWN_FAIL:Ljava/lang/String; = "\u672a\u77e5\u5f02\u5e38"

.field public static final MSG_ERROR_USER_CANCEL:Ljava/lang/String; = "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

.field public static final MSG_ERROR_USER_SWITCH:Ljava/lang/String; = "\u7528\u6237\u5207\u6362\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

.field public static final MSG_GET_TOKEN_SUCCESS:Ljava/lang/String; = "\u83b7\u53d6token\u6210\u529f"

.field public static final MSG_START_AUTHPAGE_SUCCESS:Ljava/lang/String; = "\u5524\u8d77\u6388\u6743\u9875\u6210\u529f"

.field public static final NONE_ACTIVITY_LOGIN_CODE_STATUS:I = 0x5

.field public static final NONE_STATUS:I = -0x1

.field public static final PRE_AUTH_TOKEN_STATUS:I = 0x6

.field public static final PRE_CUCC_MAX_COUNT:I = 0x4

.field public static final PRE_LOGIN_ACCESS_CODE:Ljava/lang/String; = "preLoginAccesscode"

.field public static final PRE_LOGIN_CODE_STATUS:I = 0x4

.field public static final PRE_LOGIN_CUCC_COUNT:Ljava/lang/String; = "preLoginCUCCCount"

.field public static final PRE_LOGIN_EXPIRED_TIME:Ljava/lang/String; = "preLoginExpiredTime"

.field public static final PRE_LOGIN_IMSI:Ljava/lang/String; = "preLoginIMSI"

.field public static final PRE_LOGIN_OVERDUE_TIME:Ljava/lang/String; = "preLoginOverdueTime"

.field public static final PRE_LOGIN_PHONE:Ljava/lang/String; = "preLoginPhone"

.field public static final PRE_LOGIN_VALID_DATA:Ljava/lang/String; = "preLoginValidData"

.field public static final PRE_LOGIN_VENDOR:Ljava/lang/String; = "preLoginVendor"

.field public static final PROTOCOL_WEBVIEW_NAME:Ljava/lang/String; = "name"

.field public static final PROTOCOL_WEBVIEW_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PROTOCOL_WEBVIEW_URL:Ljava/lang/String; = "url"

.field public static final START_TIME:Ljava/lang/String; = "startTime"

.field public static final TOP_CODE_API_LIMIT:I = 0x7

.field public static final TOP_CODE_API_NOT_EXIST:I = 0x16

.field public static final TOP_CODE_INVALID_TIMESTAMP:I = 0x1f

.field public static final TOP_ERROR_OUT_OF_SERVICE:Ljava/lang/String; = "isv.OUT_OF_SERVICE"

.field public static final TOP_ERROR_PROD_NOT_EXIST:Ljava/lang/String; = "isv.COMM_PRODUCT_UN_SUBSCRIPT"

.field public static final VENDOR_CMCC:Ljava/lang/String; = "cm_zyhl"

.field public static final VENDOR_CTCC:Ljava/lang/String; = "ct_sjl"

.field public static final VENDOR_CUCC:Ljava/lang/String; = "cu_xw"

.field public static final VENDOR_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
