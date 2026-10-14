package g.a.a.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Activity {
    protected String[] needPermissions = {"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f14546a = true;

    /* JADX INFO: renamed from: g.a.a.a.a$a, reason: collision with other inner class name */
    class DialogInterfaceOnClickListenerC0303a implements DialogInterface.OnClickListener {
        DialogInterfaceOnClickListenerC0303a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                a.this.finish();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                a.this.b();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @TargetApi(23)
    private List<String> b(String[] strArr) {
        try {
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 23 && getApplicationInfo().targetSdkVersion >= 23) {
                for (String str : strArr) {
                    if (a(str) != 0 || b(str)) {
                        arrayList.add(str);
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // android.app.Activity
    @TargetApi(23)
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        try {
            if (Build.VERSION.SDK_INT < 23 || i != 0 || a(iArr)) {
                return;
            }
            a();
            this.f14546a = false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
            if (Build.VERSION.SDK_INT < 23 || !this.f14546a) {
                return;
            }
            a(this.needPermissions);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @TargetApi(23)
    private void a(String... strArr) {
        List<String> listB;
        try {
            if (Build.VERSION.SDK_INT < 23 || getApplicationInfo().targetSdkVersion < 23 || (listB = b(strArr)) == null || listB.size() <= 0) {
                return;
            }
            try {
                getClass().getMethod("requestPermissions", String[].class, Integer.TYPE).invoke(this, (String[]) listB.toArray(new String[listB.size()]), 0);
            } catch (Throwable unused) {
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean b(String str) {
        try {
            return ((Boolean) getClass().getMethod("shouldShowRequestPermissionRationale", String.class).invoke(this, str)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    private int a(String str) {
        try {
            return ((Integer) getClass().getMethod("checkSelfPermission", String.class).invoke(this, str)).intValue();
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + getPackageName()));
            startActivity(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean a(int[] iArr) {
        try {
            for (int i : iArr) {
                if (i != 0) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    private void a() {
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle("提示");
            builder.setMessage("当前应用缺少必要权限。\\n\\n请点击\\\"设置\\\"-\\\"权限\\\"-打开所需权限");
            builder.setNegativeButton("取消", new DialogInterfaceOnClickListenerC0303a());
            builder.setPositiveButton("设置", new b());
            builder.setCancelable(false);
            builder.show();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
