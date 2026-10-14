package com.mobile.auth.gatewayauth;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.TextView;
import com.mobile.auth.gatewayauth.annotations.AuthNumber;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@AuthNumber
public class AuthUIConfig implements Serializable {
    public static int DEFAULT_BOTTOM_NAV_COLOR = -16777216;
    public static int DEFAULT_LOGIN_BTN_TEXT_COLOR = -1;
    public static int DEFAULT_NAV_COLOR = -16617774;
    public static int DEFAULT_NAV_TEXT_COLOR = -1;
    public static int DEFAULT_NUMBER_COLOR = -16777216;
    public static int DEFAULT_PROTOCOL_COLOR = -6710887;
    public static int DEFAULT_PROTOCOL_ONE_COLOR = -13070867;
    public static int DEFAULT_PROTOCOL_THREE_COLOR = -13070867;
    public static int DEFAULT_PROTOCOL_TWO_COLOR = -13070867;
    public static int DEFAULT_SLOGAN_TEXT_COLOR = -6710887;
    public static int DEFAULT_STATUS_BAR_COLOR = -1;
    public static int DEFAULT_SWITCH_ACC_TEXT_COLOR = -10066330;
    public static int DEFAULT_WEB_NAV_COLOR = -16617774;
    public static int DEFAULT_WEB_NAV_TEXT_COLOR = -1;
    public static int DEFAULT_WEB_STATUS_BAR_COLOR = -1;
    public static final int DP_MODE = 1073741824;
    private static final int MODE_MASK = -1073741824;
    private static final int MODE_SHIFT = 30;
    public static final int SP_MODE = 0;
    private String activityIn;
    private String activityOut;
    private String authPageActIn;
    private String authPageActOut;
    private int bottomNavBarColor;
    private int checkBoxHeight;
    private int checkBoxWidth;
    private boolean checkboxHidden;
    private Drawable checkedImgDrawable;
    private String checkedImgPath;
    private float dialogAlpha;
    private boolean dialogBottom;
    private int dialogHeight;
    private int dialogOffsetX;
    private int dialogOffsetY;
    private int dialogWidth;
    private boolean isLightColor;
    private boolean isStatusBarHidden;
    private Drawable loadingImgDrawable;
    private String loadingImgPath;
    private Drawable logBtnBackgroundDrawable;
    private String logBtnBackgroundPath;
    private int logBtnHeight;
    private int logBtnLayoutGravity;
    private int logBtnMarginLeftAndRight;
    private int logBtnOffsetX;
    private int logBtnOffsetY;
    private int logBtnOffsetY_B;
    private String logBtnText;
    private int logBtnTextColor;
    private int logBtnTextSize;
    private boolean logBtnToastHidden;
    private int logBtnWidth;
    private int logoHeight;
    private boolean logoHidden;
    private Drawable logoImgDrawable;
    private String logoImgPath;
    private int logoOffsetY;
    private int logoOffsetY_B;
    private ImageView.ScaleType logoScaleType;
    private int logoWidth;
    private int navColor;
    private boolean navHidden;
    private boolean navReturnHidden;
    private Drawable navReturnImgDrawable;
    private int navReturnImgHeight;
    private String navReturnImgPath;
    private int navReturnImgWidth;
    private ImageView.ScaleType navReturnScaleType;
    private String navText;
    private int navTextColor;
    private int navTextSize;
    private int numFieldOffsetY;
    private int numFieldOffsetY_B;
    private int numberColor;
    private int numberFieldOffsetX;
    private int numberLayoutGravity;
    private int numberSize;
    private String packageName;
    private Drawable pageBackgroundDrawable;
    private String pageBackgroundPath;
    private String privacyBefore;
    private String[] privacyConectTexts;
    private String privacyEnd;
    private int privacyMargin;
    private int privacyOffsetX;
    private int privacyOffsetY;
    private int privacyOffsetY_B;
    private int privacyOperatorIndex;
    private boolean privacyState;
    private int privacyTextSize;
    private String protocolAction;
    private int protocolColor;
    private int protocolGravity;
    private int protocolLayoutGravity;
    private int protocolOneColor;
    private String protocolOneName;
    private String protocolOneURL;
    private int protocolThreeColor;
    private String protocolThreeName;
    private String protocolThreeURL;
    private int protocolTwoColor;
    private String protocolTwoName;
    private String protocolTwoURL;
    private int screenOrientation;
    private boolean sloganHidden;
    private int sloganOffsetY;
    private int sloganOffsetY_B;
    private String sloganText;
    private int sloganTextColor;
    private int sloganTextSize;
    private int statusBarColor;
    private int statusBarUIFlag;
    private boolean switchAccHidden;
    private String switchAccText;
    private int switchAccTextColor;
    private int switchAccTextSize;
    private int switchOffsetY;
    private int switchOffsetY_B;
    private Drawable uncheckedImgDrawable;
    private String uncheckedImgPath;
    private String vendorPrivacyPrefix;
    private String vendorPrivacySuffix;
    private int webNavColor;
    private Drawable webNavReturnImgDrawable;
    private String webNavReturnImgPath;
    private int webNavTextColor;
    private int webNavTextSize;
    private boolean webSupportedJavascript;
    private int webViewStatusBarColor;

    @AuthNumber
    public static class Builder {
        private Drawable checkedImgDrawable;
        private Drawable loadingImgDrawable;
        private Drawable logBtnBackgroundDrawable;
        private Drawable logoImgDrawable;
        private Drawable navReturnImgDrawable;
        private String packageName;
        private Drawable pageBackgroundDrawable;
        private String[] privacyConectTexts;
        private int privacyOffsetX;
        private String protocolAction;
        private Drawable uncheckedImgDrawable;
        private Drawable webNavReturnImgDrawable;
        private int statusBarColor = AuthUIConfig.DEFAULT_STATUS_BAR_COLOR;
        private int bottomNavColor = AuthUIConfig.DEFAULT_BOTTOM_NAV_COLOR;
        private boolean isLightColor = false;
        private boolean isStatusBarHidden = false;
        private int statusBarUIFlag = -1;
        private int navColor = AuthUIConfig.DEFAULT_NAV_COLOR;
        private String navText = "免密登录";
        private int navTextColor = AuthUIConfig.DEFAULT_NAV_TEXT_COLOR;
        private String navReturnImgPath = "authsdk_return_bg";
        private int navReturnImgWidth = 30;
        private int navReturnImgHeight = 30;
        private boolean navReturnHidden = false;
        private ImageView.ScaleType navReturnScaleType = ImageView.ScaleType.CENTER;
        private boolean navHidden = false;
        private String logoImgPath = null;
        private boolean logoHidden = false;
        private int numberColor = AuthUIConfig.DEFAULT_NUMBER_COLOR;
        private int numberSize = makeTextSizeSpec(28, 1073741824);
        private boolean switchAccHidden = false;
        private int switchAccTextColor = AuthUIConfig.DEFAULT_SWITCH_ACC_TEXT_COLOR;
        private String logBtnText = "一键登录";
        private int logBtnTextSize = makeTextSizeSpec(16, 1073741824);
        private int logBtnTextColor = AuthUIConfig.DEFAULT_LOGIN_BTN_TEXT_COLOR;
        private String protocolOneName = null;
        private String protocolOneURL = null;
        private int protocolOneColor = AuthUIConfig.DEFAULT_PROTOCOL_ONE_COLOR;
        private String protocolTwoName = null;
        private String protocolTwoURL = null;
        private int protocolTwoColor = AuthUIConfig.DEFAULT_PROTOCOL_TWO_COLOR;
        private int protocolColor = AuthUIConfig.DEFAULT_PROTOCOL_COLOR;
        private int protocolLayoutGravity = 1;
        private int sloganTextColor = AuthUIConfig.DEFAULT_SLOGAN_TEXT_COLOR;
        private String sloganText = null;
        private String logBtnBackgroundPath = "authsdk_dialog_login_btn_bg";
        private String loadingImgPath = "authsdk_waiting_icon";
        private int sloganOffsetY = -1;
        private int logoOffsetY = -1;
        private int logoOffsetY_B = -1;
        private ImageView.ScaleType logoScaleType = ImageView.ScaleType.FIT_XY;
        private int numFieldOffsetY = -1;
        private int numFieldOffsetY_B = -1;
        private int numberFieldOffsetX = 0;
        private int numberLayoutGravity = 1;
        private int switchOffsetY = -1;
        private int switchOffsetY_B = -1;
        private int logBtnOffsetY = -1;
        private int logBtnOffsetY_B = -1;
        private int logBtnWidth = -1;
        private int logBtnHeight = 51;
        private int logBtnOffsetX = 0;
        private int logBtnMarginLeftAndRight = 28;
        private int logBtnLayoutGravity = 1;
        private int privacyOffsetY = -1;
        private int privacyOffsetY_B = 28;
        private int sloganOffsetY_B = -1;
        private int checkBoxWidth = 18;
        private int checkBoxHeight = 18;
        private boolean checkboxHidden = false;
        private int navTextSize = makeTextSizeSpec(18, 1073741824);
        private int logoWidth = 90;
        private int logoHeight = 90;
        private int switchAccTextSize = makeTextSizeSpec(16, 1073741824);
        private String switchAccText = "切换到其他方式";
        private int sloganTextSize = makeTextSizeSpec(16, 1073741824);
        private boolean sloganHidden = false;
        private String uncheckedImgPath = "authsdk_checkbox_uncheck_bg";
        private String checkedImgPath = "authsdk_checkbox_checked_bg";
        private boolean privacyState = false;
        private int protocolGravity = 17;
        private int privacyTextSize = makeTextSizeSpec(12, 1073741824);
        private int privacyMargin = 28;
        private String privacyBefore = "";
        private String privacyEnd = "";
        private String vendorPrivacyPrefix = "";
        private String vendorPrivacySuffix = "";
        private int dialogWidth = -1;
        private int dialogHeight = -1;
        private boolean dialogBottom = false;
        private int dialogOffsetX = 0;
        private int dialogOffsetY = 0;
        private String pageBackgroundPath = null;
        private int webViewStatusBarColor = AuthUIConfig.DEFAULT_WEB_STATUS_BAR_COLOR;
        private int webNavColor = AuthUIConfig.DEFAULT_WEB_NAV_COLOR;
        private int webNavTextColor = AuthUIConfig.DEFAULT_WEB_NAV_TEXT_COLOR;
        private int webNavTextSize = -1;
        private String webNavReturnImgPath = null;
        private boolean webSupportedJavascript = true;
        private String authPageActIn = null;
        private String activityOut = null;
        private String authPageActOut = null;
        private String activityIn = null;
        private int screenOrientation = -1;
        private boolean logBtnToastHidden = false;
        private float dialogAlpha = -1.0f;
        private String protocolThreeName = null;
        private String protocolThreeURL = null;
        private int protocolThreeColor = AuthUIConfig.DEFAULT_PROTOCOL_THREE_COLOR;
        private int privacyOperatorIndex = 0;

        static /* synthetic */ int access$000(Builder builder) {
            try {
                return builder.statusBarColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$100(Builder builder) {
            try {
                return builder.bottomNavColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$1000(Builder builder) {
            try {
                return builder.navReturnImgHeight;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ Drawable access$10000(Builder builder) {
            try {
                return builder.navReturnImgDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10100(Builder builder) {
            try {
                return builder.logoImgDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10200(Builder builder) {
            try {
                return builder.uncheckedImgDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10300(Builder builder) {
            try {
                return builder.checkedImgDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10400(Builder builder) {
            try {
                return builder.logBtnBackgroundDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10500(Builder builder) {
            try {
                return builder.pageBackgroundDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10600(Builder builder) {
            try {
                return builder.webNavReturnImgDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$10700(Builder builder) {
            try {
                return builder.packageName;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$10800(Builder builder) {
            try {
                return builder.protocolAction;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ Drawable access$10900(Builder builder) {
            try {
                return builder.loadingImgDrawable;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ boolean access$1100(Builder builder) {
            try {
                return builder.navReturnHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ ImageView.ScaleType access$1200(Builder builder) {
            try {
                return builder.navReturnScaleType;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$1300(Builder builder) {
            try {
                return builder.logoImgPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ boolean access$1400(Builder builder) {
            try {
                return builder.logoHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ ImageView.ScaleType access$1500(Builder builder) {
            try {
                return builder.logoScaleType;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$1600(Builder builder) {
            try {
                return builder.numberColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$1700(Builder builder) {
            try {
                return builder.switchAccHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ int access$1800(Builder builder) {
            try {
                return builder.switchAccTextColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$1900(Builder builder) {
            try {
                return builder.logBtnText;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ boolean access$200(Builder builder) {
            try {
                return builder.isLightColor;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ int access$2000(Builder builder) {
            try {
                return builder.logBtnTextColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$2100(Builder builder) {
            try {
                return builder.protocolOneName;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$2200(Builder builder) {
            try {
                return builder.protocolOneURL;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$2300(Builder builder) {
            try {
                return builder.protocolOneColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$2400(Builder builder) {
            try {
                return builder.protocolTwoColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$2500(Builder builder) {
            try {
                return builder.protocolTwoName;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$2600(Builder builder) {
            try {
                return builder.protocolTwoURL;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$2700(Builder builder) {
            try {
                return builder.protocolColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$2800(Builder builder) {
            try {
                return builder.sloganTextColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$2900(Builder builder) {
            try {
                return builder.numberSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$300(Builder builder) {
            try {
                return builder.isStatusBarHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ String access$3000(Builder builder) {
            try {
                return builder.logBtnBackgroundPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$3100(Builder builder) {
            try {
                return builder.loadingImgPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$3200(Builder builder) {
            try {
                return builder.sloganOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3300(Builder builder) {
            try {
                return builder.logoOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3400(Builder builder) {
            try {
                return builder.logoOffsetY_B;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3500(Builder builder) {
            try {
                return builder.numFieldOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3600(Builder builder) {
            try {
                return builder.numFieldOffsetY_B;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3700(Builder builder) {
            try {
                return builder.numberFieldOffsetX;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3800(Builder builder) {
            try {
                return builder.switchOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$3900(Builder builder) {
            try {
                return builder.switchOffsetY_B;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$400(Builder builder) {
            try {
                return builder.statusBarUIFlag;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4000(Builder builder) {
            try {
                return builder.logBtnTextSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4100(Builder builder) {
            try {
                return builder.logBtnOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4200(Builder builder) {
            try {
                return builder.logBtnOffsetY_B;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4300(Builder builder) {
            try {
                return builder.logBtnWidth;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4400(Builder builder) {
            try {
                return builder.logBtnHeight;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4500(Builder builder) {
            try {
                return builder.logBtnOffsetX;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4600(Builder builder) {
            try {
                return builder.logBtnMarginLeftAndRight;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4700(Builder builder) {
            try {
                return builder.privacyOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4800(Builder builder) {
            try {
                return builder.privacyOffsetY_B;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$4900(Builder builder) {
            try {
                return builder.sloganOffsetY_B;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$500(Builder builder) {
            try {
                return builder.navColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$5000(Builder builder) {
            try {
                return builder.checkboxHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ String access$5100(Builder builder) {
            try {
                return builder.sloganText;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$5200(Builder builder) {
            try {
                return builder.navTextSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$5300(Builder builder) {
            try {
                return builder.logoWidth;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$5400(Builder builder) {
            try {
                return builder.logoHeight;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$5500(Builder builder) {
            try {
                return builder.switchAccTextSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$5600(Builder builder) {
            try {
                return builder.switchAccText;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$5700(Builder builder) {
            try {
                return builder.sloganTextSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$5800(Builder builder) {
            try {
                return builder.sloganHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ String access$5900(Builder builder) {
            try {
                return builder.uncheckedImgPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$600(Builder builder) {
            try {
                return builder.navText;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$6000(Builder builder) {
            try {
                return builder.checkedImgPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$6100(Builder builder) {
            try {
                return builder.checkBoxHeight;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$6200(Builder builder) {
            try {
                return builder.checkBoxWidth;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$6300(Builder builder) {
            try {
                return builder.privacyState;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ int access$6400(Builder builder) {
            try {
                return builder.protocolGravity;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$6500(Builder builder) {
            try {
                return builder.privacyTextSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$6600(Builder builder) {
            try {
                return builder.privacyMargin;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$6700(Builder builder) {
            try {
                return builder.privacyBefore;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$6800(Builder builder) {
            try {
                return builder.vendorPrivacyPrefix;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$6900(Builder builder) {
            try {
                return builder.vendorPrivacySuffix;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$700(Builder builder) {
            try {
                return builder.navTextColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$7000(Builder builder) {
            try {
                return builder.privacyEnd;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$7100(Builder builder) {
            try {
                return builder.dialogWidth;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$7200(Builder builder) {
            try {
                return builder.dialogHeight;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$7300(Builder builder) {
            try {
                return builder.dialogBottom;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ int access$7400(Builder builder) {
            try {
                return builder.dialogOffsetX;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$7500(Builder builder) {
            try {
                return builder.dialogOffsetY;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$7600(Builder builder) {
            try {
                return builder.pageBackgroundPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ boolean access$7700(Builder builder) {
            try {
                return builder.navHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ int access$7800(Builder builder) {
            try {
                return builder.webViewStatusBarColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$7900(Builder builder) {
            try {
                return builder.webNavColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$800(Builder builder) {
            try {
                return builder.navReturnImgPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$8000(Builder builder) {
            try {
                return builder.webNavTextColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$8100(Builder builder) {
            try {
                return builder.webNavTextSize;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String access$8200(Builder builder) {
            try {
                return builder.webNavReturnImgPath;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$8300(Builder builder) {
            try {
                return builder.authPageActIn;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$8400(Builder builder) {
            try {
                return builder.activityOut;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$8500(Builder builder) {
            try {
                return builder.authPageActOut;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$8600(Builder builder) {
            try {
                return builder.activityIn;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$8700(Builder builder) {
            try {
                return builder.screenOrientation;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$8800(Builder builder) {
            try {
                return builder.protocolLayoutGravity;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$8900(Builder builder) {
            try {
                return builder.numberLayoutGravity;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$900(Builder builder) {
            try {
                return builder.navReturnImgWidth;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$9000(Builder builder) {
            try {
                return builder.logBtnLayoutGravity;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ int access$9100(Builder builder) {
            try {
                return builder.privacyOffsetX;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$9200(Builder builder) {
            try {
                return builder.logBtnToastHidden;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ float access$9300(Builder builder) {
            try {
                return builder.dialogAlpha;
            } catch (Throwable th) {
                a.a(th);
                return -1.0f;
            }
        }

        static /* synthetic */ String access$9400(Builder builder) {
            try {
                return builder.protocolThreeName;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ String access$9500(Builder builder) {
            try {
                return builder.protocolThreeURL;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        static /* synthetic */ int access$9600(Builder builder) {
            try {
                return builder.protocolThreeColor;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ boolean access$9700(Builder builder) {
            try {
                return builder.webSupportedJavascript;
            } catch (Throwable th) {
                a.a(th);
                return false;
            }
        }

        static /* synthetic */ int access$9800(Builder builder) {
            try {
                return builder.privacyOperatorIndex;
            } catch (Throwable th) {
                a.a(th);
                return -1;
            }
        }

        static /* synthetic */ String[] access$9900(Builder builder) {
            try {
                return builder.privacyConectTexts;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public AuthUIConfig create() {
            try {
                return new AuthUIConfig(this);
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public int makeTextSizeSpec(int i, int i2) {
            return (i & 1073741823) | (i2 & AuthUIConfig.MODE_MASK);
        }

        public Builder setAppPrivacyColor(int i, int i2) {
            try {
                this.protocolColor = i;
                this.protocolOneColor = i2;
                this.protocolTwoColor = i2;
                this.protocolThreeColor = i2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setAppPrivacyOne(String str, String str2) {
            try {
                this.protocolOneName = str;
                this.protocolOneURL = str2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setAppPrivacyThree(String str, String str2) {
            try {
                this.protocolThreeName = str;
                this.protocolThreeURL = str2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setAppPrivacyTwo(String str, String str2) {
            try {
                this.protocolTwoName = str;
                this.protocolTwoURL = str2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setAuthPageActIn(String str, String str2) {
            try {
                this.authPageActIn = str;
                this.activityOut = str2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setAuthPageActOut(String str, String str2) {
            try {
                this.authPageActOut = str;
                this.activityIn = str2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setBottomNavColor(int i) {
            try {
                this.bottomNavColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setCheckBoxHeight(int i) {
            try {
                this.checkBoxHeight = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setCheckBoxWidth(int i) {
            try {
                this.checkBoxWidth = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setCheckboxHidden(boolean z) {
            try {
                this.checkboxHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setCheckedImgDrawable(Drawable drawable) {
            try {
                this.checkedImgDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setCheckedImgPath(String str) {
            try {
                this.checkedImgPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setDialogAlpha(float f2) {
            try {
                this.dialogAlpha = f2;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setDialogBottom(boolean z) {
            try {
                this.dialogBottom = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setDialogHeight(int i) {
            try {
                this.dialogHeight = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setDialogOffsetX(int i) {
            try {
                this.dialogOffsetX = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setDialogOffsetY(int i) {
            try {
                this.dialogOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setDialogWidth(int i) {
            try {
                this.dialogWidth = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLightColor(boolean z) {
            try {
                this.isLightColor = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLoadingImgDrawable(Drawable drawable) {
            try {
                this.loadingImgDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLoadingImgPath(String str) {
            try {
                this.loadingImgPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnBackgroundDrawable(Drawable drawable) {
            try {
                this.logBtnBackgroundDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnBackgroundPath(String str) {
            try {
                this.logBtnBackgroundPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnHeight(int i) {
            try {
                this.logBtnHeight = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnLayoutGravity(int i) {
            try {
                this.logBtnLayoutGravity = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnMarginLeftAndRight(int i) {
            try {
                this.logBtnMarginLeftAndRight = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnOffsetX(int i) {
            try {
                this.logBtnOffsetX = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnOffsetY(int i) {
            try {
                this.logBtnOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnOffsetY_B(int i) {
            try {
                this.logBtnOffsetY_B = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnText(String str) {
            try {
                this.logBtnText = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnTextColor(int i) {
            try {
                this.logBtnTextColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        @Deprecated
        public Builder setLogBtnTextSize(int i) {
            try {
                this.logBtnTextSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnTextSizeDp(int i) {
            if (i > 0) {
                try {
                    this.logBtnTextSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setLogBtnToastHidden(boolean z) {
            try {
                this.logBtnToastHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogBtnWidth(int i) {
            try {
                this.logBtnWidth = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoHeight(int i) {
            try {
                this.logoHeight = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoHidden(boolean z) {
            try {
                this.logoHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoImgDrawable(Drawable drawable) {
            try {
                this.logoImgDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoImgPath(String str) {
            try {
                this.logoImgPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoOffsetY(int i) {
            try {
                this.logoOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoOffsetY_B(int i) {
            try {
                this.logoOffsetY_B = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoScaleType(ImageView.ScaleType scaleType) {
            try {
                this.logoScaleType = scaleType;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setLogoWidth(int i) {
            try {
                this.logoWidth = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavColor(int i) {
            try {
                this.navColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavHidden(boolean z) {
            try {
                this.navHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavReturnHidden(boolean z) {
            try {
                this.navReturnHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavReturnImgDrawable(Drawable drawable) {
            try {
                this.navReturnImgDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavReturnImgHeight(int i) {
            try {
                this.navReturnImgHeight = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavReturnImgPath(String str) {
            try {
                this.navReturnImgPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavReturnImgWidth(int i) {
            try {
                this.navReturnImgWidth = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavReturnScaleType(ImageView.ScaleType scaleType) {
            try {
                this.navReturnScaleType = scaleType;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavText(String str) {
            try {
                this.navText = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavTextColor(int i) {
            try {
                this.navTextColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        @Deprecated
        public Builder setNavTextSize(int i) {
            try {
                this.navTextSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNavTextSizeDp(int i) {
            if (i > 0) {
                try {
                    this.navTextSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setNumFieldOffsetY(int i) {
            try {
                this.numFieldOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNumFieldOffsetY_B(int i) {
            try {
                this.numFieldOffsetY_B = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNumberColor(int i) {
            try {
                this.numberColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNumberFieldOffsetX(int i) {
            try {
                this.numberFieldOffsetX = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNumberLayoutGravity(int i) {
            try {
                this.numberLayoutGravity = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        @Deprecated
        public Builder setNumberSize(int i) {
            try {
                this.numberSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setNumberSizeDp(int i) {
            if (i > 0) {
                try {
                    this.numberSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setPackageName(String str) {
            try {
                this.packageName = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPageBackgroundDrawable(Drawable drawable) {
            try {
                this.pageBackgroundDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPageBackgroundPath(String str) {
            try {
                this.pageBackgroundPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyBefore(String str) {
            try {
                this.privacyBefore = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyConectTexts(String[] strArr) {
            try {
                this.privacyConectTexts = strArr;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyEnd(String str) {
            try {
                this.privacyEnd = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyMargin(int i) {
            try {
                this.privacyMargin = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyOffsetX(int i) {
            try {
                this.privacyOffsetX = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyOffsetY(int i) {
            try {
                this.privacyOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyOffsetY_B(int i) {
            try {
                this.privacyOffsetY_B = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyOperatorIndex(int i) {
            try {
                this.privacyOperatorIndex = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyState(boolean z) {
            try {
                this.privacyState = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyTextSize(int i) {
            try {
                this.privacyTextSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setPrivacyTextSizeDp(int i) {
            if (i > 0) {
                try {
                    this.privacyTextSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setProtocolAction(String str) {
            try {
                this.protocolAction = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setProtocolGravity(int i) {
            try {
                this.protocolGravity = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setProtocolLayoutGravity(int i) {
            try {
                this.protocolLayoutGravity = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setScreenOrientation(int i) {
            try {
                this.screenOrientation = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSloganHidden(boolean z) {
            try {
                this.sloganHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSloganOffsetY(int i) {
            try {
                this.sloganOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSloganOffsetY_B(int i) {
            try {
                this.sloganOffsetY_B = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSloganText(String str) {
            try {
                this.sloganText = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSloganTextColor(int i) {
            try {
                this.sloganTextColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        @Deprecated
        public Builder setSloganTextSize(int i) {
            try {
                this.sloganTextSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSloganTextSizeDp(int i) {
            if (i > 0) {
                try {
                    this.sloganTextSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setStatusBarColor(int i) {
            try {
                this.statusBarColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setStatusBarHidden(boolean z) {
            try {
                this.isStatusBarHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setStatusBarUIFlag(int i) {
            try {
                this.statusBarUIFlag = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSwitchAccHidden(boolean z) {
            try {
                this.switchAccHidden = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSwitchAccText(String str) {
            try {
                this.switchAccText = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSwitchAccTextColor(int i) {
            try {
                this.switchAccTextColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        @Deprecated
        public Builder setSwitchAccTextSize(int i) {
            try {
                this.switchAccTextSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSwitchAccTextSizeDp(int i) {
            if (i > 0) {
                try {
                    this.switchAccTextSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setSwitchOffsetY(int i) {
            try {
                this.switchOffsetY = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setSwitchOffsetY_B(int i) {
            try {
                this.switchOffsetY_B = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setUncheckedImgDrawable(Drawable drawable) {
            try {
                this.uncheckedImgDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setUncheckedImgPath(String str) {
            try {
                this.uncheckedImgPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setVendorPrivacyPrefix(String str) {
            try {
                this.vendorPrivacyPrefix = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setVendorPrivacySuffix(String str) {
            try {
                this.vendorPrivacySuffix = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setWebNavColor(int i) {
            try {
                this.webNavColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setWebNavReturnImgDrawable(Drawable drawable) {
            try {
                this.webNavReturnImgDrawable = drawable;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setWebNavReturnImgPath(String str) {
            try {
                this.webNavReturnImgPath = str;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setWebNavTextColor(int i) {
            try {
                this.webNavTextColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        @Deprecated
        public Builder setWebNavTextSize(int i) {
            try {
                this.webNavTextSize = makeTextSizeSpec(i, 0);
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setWebNavTextSizeDp(int i) {
            if (i > 0) {
                try {
                    this.webNavTextSize = makeTextSizeSpec(i, 1073741824);
                } catch (Throwable th) {
                    a.a(th);
                    return null;
                }
            }
            return this;
        }

        public Builder setWebSupportedJavascript(boolean z) {
            try {
                this.webSupportedJavascript = z;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }

        public Builder setWebViewStatusBarColor(int i) {
            try {
                this.webViewStatusBarColor = i;
                return this;
            } catch (Throwable th) {
                a.a(th);
                return null;
            }
        }
    }

    private AuthUIConfig(Builder builder) {
        this.dialogAlpha = -1.0f;
        this.protocolThreeName = null;
        this.protocolThreeURL = null;
        this.protocolThreeColor = DEFAULT_PROTOCOL_THREE_COLOR;
        this.statusBarColor = Builder.access$000(builder);
        this.bottomNavBarColor = Builder.access$100(builder);
        this.isLightColor = Builder.access$200(builder);
        this.isStatusBarHidden = Builder.access$300(builder);
        this.statusBarUIFlag = Builder.access$400(builder);
        this.navColor = Builder.access$500(builder);
        this.navText = Builder.access$600(builder);
        this.navTextColor = Builder.access$700(builder);
        this.navReturnImgPath = Builder.access$800(builder);
        this.navReturnImgWidth = Builder.access$900(builder);
        this.navReturnImgHeight = Builder.access$1000(builder);
        this.navReturnHidden = Builder.access$1100(builder);
        this.navReturnScaleType = Builder.access$1200(builder);
        this.logoImgPath = Builder.access$1300(builder);
        this.logoHidden = Builder.access$1400(builder);
        this.logoScaleType = Builder.access$1500(builder);
        this.numberColor = Builder.access$1600(builder);
        this.switchAccHidden = Builder.access$1700(builder);
        this.switchAccTextColor = Builder.access$1800(builder);
        this.logBtnText = Builder.access$1900(builder);
        this.logBtnTextColor = Builder.access$2000(builder);
        this.protocolOneName = Builder.access$2100(builder);
        this.protocolOneURL = Builder.access$2200(builder);
        this.protocolOneColor = Builder.access$2300(builder);
        this.protocolTwoColor = Builder.access$2400(builder);
        this.protocolTwoName = Builder.access$2500(builder);
        this.protocolTwoURL = Builder.access$2600(builder);
        this.protocolColor = Builder.access$2700(builder);
        this.sloganTextColor = Builder.access$2800(builder);
        this.numberSize = Builder.access$2900(builder);
        this.logBtnBackgroundPath = Builder.access$3000(builder);
        this.loadingImgPath = Builder.access$3100(builder);
        this.sloganOffsetY = Builder.access$3200(builder);
        this.logoOffsetY = Builder.access$3300(builder);
        this.logoOffsetY_B = Builder.access$3400(builder);
        this.numFieldOffsetY = Builder.access$3500(builder);
        this.numFieldOffsetY_B = Builder.access$3600(builder);
        this.numberFieldOffsetX = Builder.access$3700(builder);
        this.switchOffsetY = Builder.access$3800(builder);
        this.switchOffsetY_B = Builder.access$3900(builder);
        this.logBtnTextSize = Builder.access$4000(builder);
        this.logBtnOffsetY = Builder.access$4100(builder);
        this.logBtnOffsetY_B = Builder.access$4200(builder);
        this.logBtnWidth = Builder.access$4300(builder);
        this.logBtnHeight = Builder.access$4400(builder);
        this.logBtnOffsetX = Builder.access$4500(builder);
        this.logBtnMarginLeftAndRight = Builder.access$4600(builder);
        this.privacyOffsetY = Builder.access$4700(builder);
        this.privacyOffsetY_B = Builder.access$4800(builder);
        this.sloganOffsetY_B = Builder.access$4900(builder);
        this.checkboxHidden = Builder.access$5000(builder);
        this.sloganText = Builder.access$5100(builder);
        this.navTextSize = Builder.access$5200(builder);
        this.logoWidth = Builder.access$5300(builder);
        this.logoHeight = Builder.access$5400(builder);
        this.switchAccTextSize = Builder.access$5500(builder);
        this.switchAccText = Builder.access$5600(builder);
        this.sloganTextSize = Builder.access$5700(builder);
        this.sloganHidden = Builder.access$5800(builder);
        this.uncheckedImgPath = Builder.access$5900(builder);
        this.checkedImgPath = Builder.access$6000(builder);
        this.checkBoxHeight = Builder.access$6100(builder);
        this.checkBoxWidth = Builder.access$6200(builder);
        this.privacyState = Builder.access$6300(builder);
        this.protocolGravity = Builder.access$6400(builder);
        this.privacyTextSize = Builder.access$6500(builder);
        this.privacyMargin = Builder.access$6600(builder);
        this.privacyBefore = Builder.access$6700(builder);
        this.vendorPrivacyPrefix = Builder.access$6800(builder);
        this.vendorPrivacySuffix = Builder.access$6900(builder);
        this.privacyEnd = Builder.access$7000(builder);
        this.dialogWidth = Builder.access$7100(builder);
        this.dialogHeight = Builder.access$7200(builder);
        this.dialogBottom = Builder.access$7300(builder);
        this.dialogOffsetX = Builder.access$7400(builder);
        this.dialogOffsetY = Builder.access$7500(builder);
        this.pageBackgroundPath = Builder.access$7600(builder);
        this.navHidden = Builder.access$7700(builder);
        this.webViewStatusBarColor = Builder.access$7800(builder);
        this.webNavColor = Builder.access$7900(builder);
        this.webNavTextColor = Builder.access$8000(builder);
        this.webNavTextSize = Builder.access$8100(builder);
        this.webNavReturnImgPath = Builder.access$8200(builder);
        this.authPageActIn = Builder.access$8300(builder);
        this.activityOut = Builder.access$8400(builder);
        this.authPageActOut = Builder.access$8500(builder);
        this.activityIn = Builder.access$8600(builder);
        this.screenOrientation = Builder.access$8700(builder);
        this.protocolLayoutGravity = Builder.access$8800(builder);
        this.numberLayoutGravity = Builder.access$8900(builder);
        this.logBtnLayoutGravity = Builder.access$9000(builder);
        this.privacyOffsetX = Builder.access$9100(builder);
        this.logBtnToastHidden = Builder.access$9200(builder);
        this.dialogAlpha = Builder.access$9300(builder);
        this.protocolThreeName = Builder.access$9400(builder);
        this.protocolThreeURL = Builder.access$9500(builder);
        this.protocolThreeColor = Builder.access$9600(builder);
        this.webSupportedJavascript = Builder.access$9700(builder);
        this.privacyOperatorIndex = (Builder.access$9800(builder) < 0 || Builder.access$9800(builder) > 3) ? 0 : Builder.access$9800(builder);
        this.privacyConectTexts = makePrivacyConectTexts(Builder.access$9900(builder));
        this.navReturnImgDrawable = Builder.access$10000(builder);
        this.logoImgDrawable = Builder.access$10100(builder);
        this.uncheckedImgDrawable = Builder.access$10200(builder);
        this.checkedImgDrawable = Builder.access$10300(builder);
        this.logBtnBackgroundDrawable = Builder.access$10400(builder);
        this.pageBackgroundDrawable = Builder.access$10500(builder);
        this.webNavReturnImgDrawable = Builder.access$10600(builder);
        this.packageName = Builder.access$10700(builder);
        this.protocolAction = Builder.access$10800(builder);
        this.loadingImgDrawable = Builder.access$10900(builder);
    }

    private String[] makePrivacyConectTexts(String[] strArr) {
        try {
            String[] strArr2 = {"和", "、", "、"};
            if (strArr != null && strArr.length != 0) {
                String[] strArr3 = {"和", "、", "、"};
                int length = strArr.length;
                for (int i = 0; i < length && i < 3; i++) {
                    strArr3[i] = strArr[i];
                }
                return strArr3;
            }
            return strArr2;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getActivityIn() {
        try {
            return this.activityIn;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getActivityOut() {
        try {
            return this.activityOut;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getAuthPageActIn() {
        try {
            return this.authPageActIn;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getAuthPageActOut() {
        try {
            return this.authPageActOut;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getBottomNavBarColor() {
        try {
            return this.bottomNavBarColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getCheckBoxHeight() {
        try {
            return this.checkBoxHeight;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getCheckBoxWidth() {
        try {
            return this.checkBoxWidth;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public Drawable getCheckedImgDrawable() {
        try {
            return this.checkedImgDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getCheckedImgPath() {
        try {
            return this.checkedImgPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public float getDialogAlpha() {
        try {
            return this.dialogAlpha;
        } catch (Throwable th) {
            a.a(th);
            return -1.0f;
        }
    }

    public int getDialogHeight() {
        try {
            return this.dialogHeight;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getDialogOffsetX() {
        try {
            return this.dialogOffsetX;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getDialogOffsetY() {
        try {
            return this.dialogOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getDialogWidth() {
        try {
            return this.dialogWidth;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public Drawable getLoadingImgDrawable() {
        try {
            return this.loadingImgDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getLoadingImgPath() {
        try {
            return this.loadingImgPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public Drawable getLogBtnBackgroundDrawable() {
        try {
            return this.logBtnBackgroundDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getLogBtnBackgroundPath() {
        try {
            return this.logBtnBackgroundPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getLogBtnHeight() {
        try {
            return this.logBtnHeight;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnLayoutGravity() {
        try {
            return this.logBtnLayoutGravity;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnMarginLeftAndRight() {
        try {
            return this.logBtnMarginLeftAndRight;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnOffsetX() {
        try {
            return this.logBtnOffsetX;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnOffsetY() {
        try {
            return this.logBtnOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnOffsetY_B() {
        try {
            return this.logBtnOffsetY_B;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getLogBtnText() {
        try {
            return this.logBtnText;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getLogBtnTextColor() {
        try {
            return this.logBtnTextColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnTextSize() {
        try {
            return this.logBtnTextSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogBtnWidth() {
        try {
            return this.logBtnWidth;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogoHeight() {
        try {
            return this.logoHeight;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public Drawable getLogoImgDrawable() {
        try {
            return this.logoImgDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getLogoImgPath() {
        try {
            return this.logoImgPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getLogoOffsetY() {
        try {
            return this.logoOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getLogoOffsetY_B() {
        try {
            return this.logoOffsetY_B;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        try {
            return this.logoScaleType;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getLogoWidth() {
        try {
            return this.logoWidth;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getMode(int i) {
        return i & MODE_MASK;
    }

    public int getNavColor() {
        try {
            return this.navColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public Drawable getNavReturnImgDrawable() {
        try {
            return this.navReturnImgDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getNavReturnImgHeight() {
        try {
            return this.navReturnImgHeight;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getNavReturnImgPath() {
        try {
            return this.navReturnImgPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getNavReturnImgWidth() {
        try {
            return this.navReturnImgWidth;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public ImageView.ScaleType getNavReturnScaleType() {
        try {
            return this.navReturnScaleType;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getNavText() {
        try {
            return this.navText;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getNavTextColor() {
        try {
            return this.navTextColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNavTextSize() {
        try {
            return this.navTextSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNumFieldOffsetY() {
        try {
            return this.numFieldOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNumFieldOffsetY_B() {
        try {
            return this.numFieldOffsetY_B;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNumberColor() {
        try {
            return this.numberColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNumberFieldOffsetX() {
        try {
            return this.numberFieldOffsetX;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNumberLayoutGravity() {
        try {
            return this.numberLayoutGravity;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getNumberSize() {
        try {
            return this.numberSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getPackageName() {
        try {
            return this.packageName;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public Drawable getPageBackgroundDrawable() {
        try {
            return this.pageBackgroundDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getPageBackgroundPath() {
        try {
            return this.pageBackgroundPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getPrivacyBefore() {
        try {
            return this.privacyBefore;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String[] getPrivacyConectTexts() {
        try {
            return this.privacyConectTexts;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getPrivacyEnd() {
        try {
            return this.privacyEnd;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getPrivacyMargin() {
        try {
            return this.privacyMargin;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getPrivacyOffsetX() {
        try {
            return this.privacyOffsetX;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getPrivacyOffsetY() {
        try {
            return this.privacyOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getPrivacyOffsetY_B() {
        try {
            return this.privacyOffsetY_B;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getPrivacyOperatorIndex() {
        try {
            return this.privacyOperatorIndex;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getPrivacyTextSize() {
        try {
            return this.privacyTextSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getProtocolAction() {
        try {
            return this.protocolAction;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getProtocolColor() {
        try {
            return this.protocolColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getProtocolGravity() {
        try {
            return this.protocolGravity;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getProtocolLayoutGravity() {
        try {
            return this.protocolLayoutGravity;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getProtocolOneColor() {
        try {
            return this.protocolOneColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getProtocolOneName() {
        try {
            return this.protocolOneName;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getProtocolOneURL() {
        try {
            return this.protocolOneURL;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getProtocolThreeColor() {
        try {
            return this.protocolThreeColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getProtocolThreeName() {
        try {
            return this.protocolThreeName;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getProtocolThreeURL() {
        try {
            return this.protocolThreeURL;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getProtocolTwoColor() {
        try {
            return this.protocolTwoColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getProtocolTwoName() {
        try {
            return this.protocolTwoName;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getProtocolTwoURL() {
        try {
            return this.protocolTwoURL;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getScreenOrientation() {
        try {
            return this.screenOrientation;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getSize(int i) {
        return i & 1073741823;
    }

    public int getSloganOffsetY() {
        try {
            return this.sloganOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getSloganOffsetY_B() {
        try {
            return this.sloganOffsetY_B;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getSloganText() {
        try {
            return this.sloganText;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getSloganTextColor() {
        try {
            return this.sloganTextColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getSloganTextSize() {
        try {
            return this.sloganTextSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getStatusBarColor() {
        try {
            return this.statusBarColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getStatusBarUIFlag() {
        try {
            return this.statusBarUIFlag;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public String getSwitchAccText() {
        try {
            return this.switchAccText;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getSwitchAccTextColor() {
        try {
            return this.switchAccTextColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getSwitchAccTextSize() {
        try {
            return this.switchAccTextSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getSwitchOffsetY() {
        try {
            return this.switchOffsetY;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getSwitchOffsetY_B() {
        try {
            return this.switchOffsetY_B;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public Drawable getUncheckedImgDrawable() {
        try {
            return this.uncheckedImgDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getUncheckedImgPath() {
        try {
            return this.uncheckedImgPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getVendorPrivacyPrefix() {
        try {
            return this.vendorPrivacyPrefix;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getVendorPrivacySuffix() {
        try {
            return this.vendorPrivacySuffix;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getWebNavColor() {
        try {
            return this.webNavColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public Drawable getWebNavReturnImgDrawable() {
        try {
            return this.webNavReturnImgDrawable;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public String getWebNavReturnImgPath() {
        try {
            return this.webNavReturnImgPath;
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }

    public int getWebNavTextColor() {
        try {
            return this.webNavTextColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getWebNavTextSize() {
        try {
            return this.webNavTextSize;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public int getWebViewStatusBarColor() {
        try {
            return this.webViewStatusBarColor;
        } catch (Throwable th) {
            a.a(th);
            return -1;
        }
    }

    public boolean isCheckboxHidden() {
        try {
            return this.checkboxHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isDialog() {
        try {
            return this.dialogWidth > 0 && this.dialogHeight > 0;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isDialogBottom() {
        try {
            return this.dialogBottom;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isLightColor() {
        try {
            return this.isLightColor;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isLogBtnToastHidden() {
        try {
            return this.logBtnToastHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isLogoHidden() {
        try {
            return this.logoHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isNavHidden() {
        try {
            return this.navHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isNavReturnHidden() {
        try {
            return this.navReturnHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isPrivacyState() {
        try {
            return this.privacyState;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isSloganHidden() {
        try {
            return this.sloganHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isStatusBarHidden() {
        try {
            return this.isStatusBarHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isSwitchAccHidden() {
        try {
            return this.switchAccHidden;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public boolean isWebSupportedJavascript() {
        try {
            return this.webSupportedJavascript;
        } catch (Throwable th) {
            a.a(th);
            return false;
        }
    }

    public void setDialogAlpha(float f2) {
        try {
            this.dialogAlpha = f2;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void setProtocolThreeColor(int i) {
        try {
            this.protocolThreeColor = i;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void setProtocolThreeName(String str) {
        try {
            this.protocolThreeName = str;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void setProtocolThreeURL(String str) {
        try {
            this.protocolThreeURL = str;
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public void setTextSize(TextView textView, int i) {
        int i2;
        int size;
        try {
            if (getMode(i) == 0) {
                i2 = 2;
                size = getSize(i);
            } else {
                i2 = 1;
                size = getSize(i);
            }
            textView.setTextSize(i2, size);
        } catch (Throwable th) {
            a.a(th);
        }
    }

    public String toString() {
        try {
            return "AuthUIConfig{statusBarColor=" + this.statusBarColor + ", bottomNavBarColor=" + this.bottomNavBarColor + ", isLightColor=" + this.isLightColor + ", isStatusBarHidden=" + this.isStatusBarHidden + ", statusBarUIFlag=" + this.statusBarUIFlag + ", navColor=" + this.navColor + ", navText='" + this.navText + "', navTextColor=" + this.navTextColor + ", navTextSize=" + this.navTextSize + ", navReturnImgPath='" + this.navReturnImgPath + "', navReturnImgWidth=" + this.navReturnImgWidth + ", navReturnImgHeight=" + this.navReturnImgHeight + ", navReturnHidden=" + this.navReturnHidden + ", navReturnScaleType=" + this.navReturnScaleType + ", navHidden=" + this.navHidden + ", logoImgPath='" + this.logoImgPath + "', logoWidth=" + this.logoWidth + ", logoHeight=" + this.logoHeight + ", logoHidden=" + this.logoHidden + ", logoOffsetY=" + this.logoOffsetY + ", logoOffsetY_B=" + this.logoOffsetY_B + ", logoScaleType=" + this.logoScaleType + ", checkboxHidden=" + this.checkboxHidden + ", uncheckedImgPath='" + this.uncheckedImgPath + "', checkedImgPath='" + this.checkedImgPath + "', checkBoxHeight=" + this.checkBoxHeight + ", checkBoxWidth=" + this.checkBoxWidth + ", numberColor=" + this.numberColor + ", numberSize=" + this.numberSize + ", numFieldOffsetY=" + this.numFieldOffsetY + ", numFieldOffsetY_B=" + this.numFieldOffsetY_B + ", numberFieldOffsetX=" + this.numberFieldOffsetX + ", numberLayoutGravity=" + this.numberLayoutGravity + ", switchAccHidden=" + this.switchAccHidden + ", switchAccTextColor=" + this.switchAccTextColor + ", switchAccTextSize=" + this.switchAccTextSize + ", switchAccText='" + this.switchAccText + "', switchOffsetY=" + this.switchOffsetY + ", switchOffsetY_B=" + this.switchOffsetY_B + ", logBtnText='" + this.logBtnText + "', logBtnTextColor=" + this.logBtnTextColor + ", logBtnTextSize=" + this.logBtnTextSize + ", logBtnBackgroundPath='" + this.logBtnBackgroundPath + "', logBtnOffsetX=" + this.logBtnOffsetX + ", logBtnOffsetY=" + this.logBtnOffsetY + ", logBtnOffsetY_B=" + this.logBtnOffsetY_B + ", logBtnWidth=" + this.logBtnWidth + ", logBtnHeight=" + this.logBtnHeight + ", logBtnMarginLeftAndRight=" + this.logBtnMarginLeftAndRight + ", loadingImgPath='" + this.loadingImgPath + "', logBtnLayoutGravity=" + this.logBtnLayoutGravity + ", logBtnToastHidden=" + this.logBtnToastHidden + ", protocolOneName='" + this.protocolOneName + "', protocolOneURL='" + this.protocolOneURL + "', protocolOneColor=" + this.protocolOneColor + ", protocolTwoName='" + this.protocolTwoName + "', protocolTwoURL='" + this.protocolTwoURL + "', protocolTwoColor=" + this.protocolTwoColor + ", protocolColor=" + this.protocolColor + ", privacyOffsetX=" + this.privacyOffsetX + ", privacyOffsetY=" + this.privacyOffsetY + ", privacyOffsetY_B=" + this.privacyOffsetY_B + ", privacyState=" + this.privacyState + ", protocolGravity=" + this.protocolGravity + ", privacyTextSize=" + this.privacyTextSize + ", privacyMargin=" + this.privacyMargin + ", privacyBefore='" + this.privacyBefore + "', privacyEnd='" + this.privacyEnd + "', vendorPrivacyPrefix='" + this.vendorPrivacyPrefix + "', vendorPrivacySuffix='" + this.vendorPrivacySuffix + "', protocolLayoutGravity=" + this.protocolLayoutGravity + ", sloganHidden=" + this.sloganHidden + ", sloganText='" + this.sloganText + "', sloganTextSize=" + this.sloganTextSize + ", sloganTextColor=" + this.sloganTextColor + ", sloganOffsetY=" + this.sloganOffsetY + ", sloganOffsetY_B=" + this.sloganOffsetY_B + ", dialogWidth=" + this.dialogWidth + ", dialogHeight=" + this.dialogHeight + ", dialogBottom=" + this.dialogBottom + ", dialogOffsetX=" + this.dialogOffsetX + ", dialogOffsetY=" + this.dialogOffsetY + ", pageBackgroundPath='" + this.pageBackgroundPath + "', webViewStatusBarColor=" + this.webViewStatusBarColor + ", webNavColor=" + this.webNavColor + ", webNavTextColor=" + this.webNavTextColor + ", webNavTextSize=" + this.webNavTextSize + ", webNavReturnImgPath='" + this.webNavReturnImgPath + "', webSupportedJavascript=" + this.webSupportedJavascript + ", authPageActIn='" + this.authPageActIn + "', activityOut='" + this.activityOut + "', authPageActOut='" + this.authPageActOut + "', activityIn='" + this.activityIn + "', screenOrientation=" + this.screenOrientation + ", dialogAlpha=" + this.dialogAlpha + ", protocolThreeName='" + this.protocolThreeName + "', protocolThreeURL='" + this.protocolThreeURL + "', privacyConectTexts='" + this.privacyConectTexts + "', privacyOperatorIndex='" + this.privacyOperatorIndex + "', protocolAction='" + this.protocolAction + "', packageName='" + this.packageName + "', protocolThreeColor=" + this.protocolThreeColor + '}';
        } catch (Throwable th) {
            a.a(th);
            return null;
        }
    }
}
