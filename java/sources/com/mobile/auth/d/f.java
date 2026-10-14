package com.mobile.auth.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mobile.auth.BuildConfig;
import com.sixents.sdk.base.SixentsCode;
import com.tencent.connect.common.Constants;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static int a(int i) {
        int i2 = SixentsCode.SIXENTS_RET_SOCKET_DISCONNECTED;
        if (i != -101) {
            i2 = -1;
            if (i != -1) {
                switch (i) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 2;
                    case 13:
                    case 18:
                    case 19:
                        return 3;
                    default:
                        return i;
                }
            }
        }
        return i2;
    }

    public static NetworkInfo a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo networkInfoA = a(context);
            return networkInfoA != null && networkInfoA.isAvailable();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public static boolean c(Context context) {
        try {
            NetworkInfo networkInfoA = a(context);
            return networkInfoA != null && networkInfoA.getType() == 0;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public static boolean d(Context context) {
        if (context == null) {
            return true;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Throwable th) {
            try {
                com.mobile.auth.a.a.a("NetUtil", "isMobileEnable error ", th);
                return true;
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return false;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return false;
                }
            }
        }
    }

    public static String e(Context context) {
        try {
            int iH = h(context);
            if (iH == -101) {
                return "WIFI";
            }
            if (iH == -1 || iH == 0) {
                return BuildConfig.COMMON_MODULE_COMMIT_ID;
            }
            if (iH == 1) {
                return "2G";
            }
            if (iH != 2) {
                return iH != 3 ? Integer.toString(iH) : "4G";
            }
            return "3G";
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String f(Context context) {
        try {
            String strE = e(context);
            return (strE != null && strE.equals("WIFI") && d(context)) ? "BOTH" : strE;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String g(Context context) {
        try {
            String strF = f(context);
            if (!TextUtils.isEmpty(strF) && !strF.equals(BuildConfig.COMMON_MODULE_COMMIT_ID)) {
                if (strF.equals("2G")) {
                    return Constants.VIA_REPORT_TYPE_SHARE_TO_QQ;
                }
                if (strF.equals("3G")) {
                    return Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE;
                }
                if (strF.equals("4G")) {
                    return Constants.VIA_REPORT_TYPE_SET_AVATAR;
                }
                if (strF.equals("WIFI")) {
                    return Constants.VIA_REPORT_TYPE_JOININ_GROUP;
                }
                if (strF.equals("BOTH")) {
                    return Constants.VIA_REPORT_TYPE_MAKE_FRIEND;
                }
            }
            return Constants.VIA_REPORT_TYPE_WPA_STATE;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    private static int h(Context context) {
        int subtype = 0;
        try {
            try {
                NetworkInfo networkInfoA = a(context);
                if (networkInfoA != null && networkInfoA.isAvailable() && networkInfoA.isConnected()) {
                    int type = networkInfoA.getType();
                    if (type == 1) {
                        subtype = SixentsCode.SIXENTS_RET_SOCKET_DISCONNECTED;
                    } else if (type == 0) {
                        try {
                            subtype = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                        if (subtype == 0) {
                            subtype = networkInfoA.getSubtype();
                        }
                    }
                } else {
                    subtype = -1;
                }
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return -1;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return -1;
                }
            }
        } catch (NullPointerException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return a(subtype);
    }
}
