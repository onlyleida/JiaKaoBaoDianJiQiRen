package cn.mucang.android.core.webview.k;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public class b {

    class a implements DialogInterface.OnKeyListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            Log.v("onJsPrompt", "keyCode==" + i + "event=" + keyEvent);
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.k.b$b, reason: collision with other inner class name */
    class DialogInterfaceOnCancelListenerC0087b implements DialogInterface.OnCancelListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f2792a;

        DialogInterfaceOnCancelListenerC0087b(l lVar) {
            this.f2792a = lVar;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            l lVar = this.f2792a;
            if (lVar != null) {
                lVar.onCancel();
            }
        }
    }

    class c implements DialogInterface.OnDismissListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ l f2793a;

        c(l lVar) {
            this.f2793a = lVar;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            l lVar = this.f2793a;
            if (lVar != null) {
                lVar.onDismiss();
            }
        }
    }

    class d implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f2794a;

        d(k kVar) {
            this.f2794a = kVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            k kVar = this.f2794a;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    class e implements DialogInterface.OnKeyListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            Log.v("onJsAlert", "keyCode==" + i + "event=" + keyEvent);
            return true;
        }
    }

    class f implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f2795a;

        f(k kVar) {
            this.f2795a = kVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            k kVar = this.f2795a;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    class g implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f2796a;

        g(k kVar) {
            this.f2796a = kVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            k kVar = this.f2796a;
            if (kVar != null) {
                kVar.onCancel();
            }
        }
    }

    class h implements DialogInterface.OnKeyListener {
        h() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            Log.v("onJsAlert", "keyCode==" + i + "event=" + keyEvent);
            return true;
        }
    }

    class i implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f2797a;

        i(k kVar) {
            this.f2797a = kVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            k kVar = this.f2797a;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    class j implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f2798a;

        j(k kVar) {
            this.f2798a = kVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            k kVar = this.f2798a;
            if (kVar != null) {
                kVar.onCancel();
            }
        }
    }

    public interface k {
        void a();

        void onCancel();
    }

    public interface l {
        void onCancel();

        void onDismiss();
    }

    public static AlertDialog a(Context context, String str, String str2, k kVar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str);
        builder.setTitle(str2);
        builder.setPositiveButton("确定", new d(kVar));
        builder.setOnKeyListener(new e());
        builder.setCancelable(false);
        return builder.create();
    }

    public static AlertDialog b(Context context, String str, String str2, String str3, String str4, k kVar) {
        EditText editText = new EditText(context);
        editText.setSingleLine();
        editText.setText(str2);
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str);
        builder.setView(editText);
        builder.setPositiveButton(str3, new i(kVar));
        builder.setNegativeButton(str4, new j(kVar));
        builder.setOnKeyListener(new a());
        builder.setCancelable(false);
        return builder.create();
    }

    public static AlertDialog c(Context context, String str, String str2, String str3, String str4, boolean z, k kVar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(str);
        builder.setTitle(str2);
        builder.setPositiveButton(str3, new f(kVar));
        builder.setNegativeButton(str4, new g(kVar));
        builder.setOnKeyListener(new h());
        builder.setCancelable(z);
        return builder.create();
    }

    public static ProgressDialog d(Context context, l lVar) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setMessage("加载中...");
        progressDialog.setCancelable(true);
        progressDialog.setOnCancelListener(new DialogInterfaceOnCancelListenerC0087b(lVar));
        progressDialog.setOnDismissListener(new c(lVar));
        return progressDialog;
    }
}
