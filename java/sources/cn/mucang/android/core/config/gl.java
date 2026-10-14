package cn.mucang.android.core.config;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;

/* JADX INFO: loaded from: classes.dex */
public class gl {
    private static int[] s = {23379, 22093, 35695, 19190, 22511, 34045, 19002, 29399, 30280, 64268, 36855, 18955, 35709, 28515, 30280, 19327, 28968, 64257};

    class a implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.android.core.config.gl$a$a, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0074a implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0074a(a aVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                cn.mucang.android.core.utils.r.a();
            }
        }

        class b implements DialogInterface.OnClickListener {
            b(a aVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                System.exit(1);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String strValueOf = String.valueOf(gl.gc(gl.s));
            Activity activityI = MucangConfig.i();
            if (activityI == null || activityI.isFinishing()) {
                cn.mucang.android.core.utils.u.h(strValueOf);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(activityI);
            builder.setCancelable(true);
            builder.setMessage(strValueOf);
            builder.setPositiveButton("确定", new DialogInterfaceOnClickListenerC0074a(this));
            builder.setNegativeButton("取消", new b(this));
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCanceledOnTouchOutside(true);
            alertDialogCreate.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static char[] gc(int[] iArr) {
        char[] cArr = new char[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            cArr[i] = (char) (iArr[i] ^ 1024);
        }
        return cArr;
    }

    public static void lg() {
        cn.mucang.android.core.utils.u.c(new a());
    }
}
