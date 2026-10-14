package com.mobile.auth.gatewayauth.utils;

import android.R;
import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;

/* JADX INFO: loaded from: classes5.dex */
public class i {
    private static int a(View view, ViewGroup viewGroup) {
        int i = 0;
        while (i < viewGroup.getChildCount() && viewGroup.getChildAt(i) != view) {
            try {
                i++;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return -1;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return -1;
                }
            }
        }
        return i;
    }

    public static void a(Activity activity) {
        try {
            Window window = activity.getWindow();
            window.setFlags(1024, 1024);
            View childAt = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
            window.clearFlags(AlarmInfo.VEHICLE_STOLEN);
            window.clearFlags(134217728);
            if (childAt != null) {
                childAt.setPadding(0, 0, 0, 0);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    @TargetApi(21)
    public static void a(Activity activity, int i) {
        try {
            Window window = activity.getWindow();
            if (Build.VERSION.SDK_INT >= 21) {
                window.addFlags(Integer.MIN_VALUE);
                window.clearFlags(AlarmInfo.VEHICLE_STOLEN);
                window.setStatusBarColor(i);
            } else if (a(i)) {
                window.addFlags(AlarmInfo.VEHICLE_STOLEN);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static void a(Activity activity, boolean z) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                View decorView = activity.getWindow().getDecorView();
                int systemUiVisibility = decorView.getSystemUiVisibility();
                if (z) {
                    if (systemUiVisibility == 0) {
                        systemUiVisibility = 8192;
                    } else if ((systemUiVisibility & 8192) == 0) {
                        systemUiVisibility |= 8192;
                    }
                } else if (systemUiVisibility == 8192) {
                    systemUiVisibility = 0;
                } else {
                    int i = systemUiVisibility & 8192;
                    if (i != 0) {
                        systemUiVisibility = i;
                    }
                }
                decorView.setSystemUiVisibility(systemUiVisibility);
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static boolean a(int i) {
        try {
            return Color.alpha(i) == 0;
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

    public static boolean a(View view) {
        try {
            try {
                Rect rect = new Rect();
                if (!(view.getGlobalVisibleRect(rect) && (rect.bottom - rect.top >= view.getMeasuredHeight()) && (rect.right - rect.left >= view.getMeasuredWidth()))) {
                    return true;
                }
                View view2 = view;
                while (view2.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view2.getParent();
                    if (viewGroup.getVisibility() != 0) {
                        return true;
                    }
                    for (int iA = a(view2, viewGroup) + 1; iA < viewGroup.getChildCount(); iA++) {
                        Rect rect2 = new Rect();
                        view.getGlobalVisibleRect(rect2);
                        View childAt = viewGroup.getChildAt(iA);
                        Rect rect3 = new Rect();
                        childAt.getGlobalVisibleRect(rect3);
                        if (Rect.intersects(rect2, rect3)) {
                            return true;
                        }
                    }
                    view2 = viewGroup;
                }
                return false;
            } catch (Exception e2) {
                f.a(e2);
                return false;
            }
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

    @TargetApi(21)
    public static void b(Activity activity, int i) {
        try {
            Window window = activity.getWindow();
            if (Build.VERSION.SDK_INT < 21) {
                if (a(i)) {
                    window.addFlags(134217728);
                    return;
                }
                return;
            }
            if (a(i)) {
                window.clearFlags(134217728);
                window.getDecorView().setSystemUiVisibility(1792);
                window.addFlags(Integer.MIN_VALUE);
            } else {
                window.addFlags(Integer.MIN_VALUE);
                window.clearFlags(134217728);
            }
            window.setNavigationBarColor(i);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }

    public static boolean b(Activity activity) {
        try {
            int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
            return rotation == 0 || rotation == 2;
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

    public static void c(Activity activity, int i) {
        try {
            Window window = activity.getWindow();
            View decorView = window.getDecorView();
            View childAt = ((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0);
            int i2 = 1;
            if (i != 1) {
                i2 = 1024;
                if (i != 1024) {
                    i2 = 0;
                } else {
                    if (Build.VERSION.SDK_INT < 16) {
                        i2 = 0;
                    }
                    ActionBar actionBar = activity.getActionBar();
                    if (actionBar != null) {
                        actionBar.hide();
                    }
                }
            }
            window.clearFlags(AlarmInfo.VEHICLE_STOLEN);
            window.clearFlags(134217728);
            if (childAt != null) {
                childAt.setFitsSystemWindows(false);
                childAt.setPadding(0, 0, 0, 0);
            }
            decorView.setSystemUiVisibility(i2);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
            }
        }
    }
}
