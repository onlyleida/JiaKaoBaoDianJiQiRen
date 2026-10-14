package cn.mucang.android.core.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static Activity a(View view) {
        if (view == null) {
            return null;
        }
        while (!(view.getContext() instanceof Activity)) {
            if (!(view.getParent() instanceof View)) {
                return null;
            }
            view = (View) view.getParent();
        }
        return (Activity) view.getContext();
    }

    public static Activity b(Context context) {
        while (context != null) {
            if (!(context instanceof Activity)) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                return (Activity) context;
            }
        }
        return null;
    }

    public static boolean c(Context context) {
        return context instanceof Activity;
    }

    public static boolean d(Activity activity) {
        if (activity != null) {
            return activity.isDestroyed() || activity.isFinishing();
        }
        return false;
    }

    public static boolean e(String str) {
        Application context = MucangConfig.getContext();
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getLaunchIntentForPackage(str) != null;
        } catch (Exception e2) {
            t.c("e", e2);
            return false;
        }
    }

    private static boolean f() {
        return MucangConfig.g() == 1;
    }

    public static void g(Activity activity) {
        if (activity == null) {
            return;
        }
        Intent launchIntentForPackage = activity.getApplicationContext().getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntentForPackage != null) {
            h(activity, launchIntentForPackage);
        } else {
            activity.finish();
        }
    }

    public static void h(Activity activity, Intent intent) {
        if (activity != null) {
            if (intent != null && f()) {
                activity.startActivity(intent);
            }
            activity.finish();
        }
    }

    public static Bundle i(String str) {
        Long lI;
        Bundle bundle = new Bundle();
        if (n0.e(str)) {
            return bundle;
        }
        Uri uri = Uri.parse("https://www.mucang.cn?" + str);
        for (String str2 : uri.getQueryParameterNames()) {
            if (str2.length() > 2) {
                String strSubstring = str2.substring(0, 2);
                String strSubstring2 = str2.substring(2);
                String queryParameter = uri.getQueryParameter(str2);
                if ("S.".equals(strSubstring)) {
                    bundle.putString(strSubstring2, queryParameter);
                } else if ("B.".equals(strSubstring)) {
                    bundle.putBoolean(strSubstring2, Boolean.parseBoolean(queryParameter));
                } else if ("b.".equals(strSubstring)) {
                    Byte b = y.b(queryParameter);
                    if (b != null) {
                        bundle.putByte(strSubstring2, b.byteValue());
                    }
                } else if ("c.".equals(strSubstring)) {
                    bundle.putChar(strSubstring2, queryParameter.charAt(0));
                } else if ("d.".equals(strSubstring)) {
                    Double dC = y.c(queryParameter);
                    if (dC != null) {
                        bundle.putDouble(strSubstring2, dC.doubleValue());
                    }
                } else if ("f.".equals(strSubstring)) {
                    Float fE = y.e(queryParameter);
                    if (fE != null) {
                        bundle.putFloat(strSubstring2, fE.floatValue());
                    }
                } else if ("i.".equals(strSubstring)) {
                    Integer numF = y.f(queryParameter);
                    if (numF != null) {
                        bundle.putInt(strSubstring2, numF.intValue());
                    }
                } else if ("s.".equals(strSubstring)) {
                    Short shK = y.k(queryParameter);
                    if (shK != null) {
                        bundle.putShort(strSubstring2, shK.shortValue());
                    }
                } else if ("l.".equals(strSubstring) && (lI = y.i(queryParameter)) != null) {
                    bundle.putLong(strSubstring2, lI.longValue());
                }
            }
        }
        return bundle;
    }

    public static boolean j(String str) {
        Activity activityI = MucangConfig.i();
        if (activityI == null) {
            return false;
        }
        try {
            Intent launchIntentForPackage = activityI.getPackageManager().getLaunchIntentForPackage(str);
            if (launchIntentForPackage == null) {
                return false;
            }
            activityI.startActivity(launchIntentForPackage);
            return true;
        } catch (Exception e2) {
            t.c("e", e2);
            return false;
        }
    }
}
