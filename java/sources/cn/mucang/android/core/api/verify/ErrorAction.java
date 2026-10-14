package cn.mucang.android.core.api.verify;

import cn.mucang.android.core.utils.n0;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes.dex */
public enum ErrorAction {
    DIALOG_DEFAULT("/dialog/default", "1.1"),
    VERIFY_SMS("/verify/sms", "1.0", 444),
    VERIFY_GEETEST("/verify/geetest", "1.0", Integer.valueOf(Videoio.CAP_PROP_XI_BPC)),
    VERIFY_CAPTCHA("/verify/dun", "1.0", 446);

    public static final String BASE_URL = "http://error.nav.mucang.cn";
    public final Integer errorCode;
    public final String url;
    public final String version;

    ErrorAction(String str, String str2) {
        this(str, str2, null);
    }

    private static int compareVersions(String str, String str2) throws NumberFormatException {
        String[] strArrSplit = str.split("\\.");
        String[] strArrSplit2 = str2.split("\\.");
        int iMax = Math.max(strArrSplit.length, strArrSplit2.length);
        int i = 0;
        while (i < iMax) {
            int iCompareTo = Integer.valueOf(i < strArrSplit.length ? Integer.parseInt(strArrSplit[i]) : 0).compareTo(Integer.valueOf(i < strArrSplit2.length ? Integer.parseInt(strArrSplit2[i]) : 0));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            i++;
        }
        return 0;
    }

    public static boolean isActionSupported(String str, String str2) {
        ErrorAction errorAction;
        if (!n0.e(str)) {
            ErrorAction[] errorActionArrValues = values();
            int length = errorActionArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    errorAction = null;
                    break;
                }
                errorAction = errorActionArrValues[i];
                if (str.startsWith(errorAction.url)) {
                    break;
                }
                i++;
            }
        } else {
            errorAction = null;
            break;
        }
        if (errorAction != null && !n0.e(str2)) {
            try {
                if (compareVersions(errorAction.version, str2) >= 0) {
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public static boolean shouldIntercept(int i) {
        if (i >= 50000 && i < 60000) {
            return true;
        }
        for (ErrorAction errorAction : values()) {
            Integer num = errorAction.errorCode;
            if (num != null && num.intValue() == i) {
                return true;
            }
        }
        return false;
    }

    ErrorAction(String str, String str2, Integer num) {
        this.url = BASE_URL + str;
        this.version = str2;
        this.errorCode = num;
    }
}
