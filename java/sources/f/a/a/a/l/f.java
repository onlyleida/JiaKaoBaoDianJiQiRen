package f.a.a.a.l;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Looper;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import java.io.PrintWriter;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class f implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f14462a;
    private f.a.a.a.l.d b;
    private Thread.UncaughtExceptionHandler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread f14463d = Looper.getMainLooper().getThread();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread f14464a;
        final /* synthetic */ Throwable b;

        a(Thread thread, Throwable th) {
            this.f14464a = thread;
            this.b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.b.a(this.f14464a, this.b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Throwable f14465a;
        final /* synthetic */ Thread b;

        b(Throwable th, Thread thread) {
            this.f14465a = th;
            this.b = thread;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.f(this.f14465a, this.b);
        }
    }

    class c implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ StringWriter f14466a;
        final /* synthetic */ Thread b;

        c(StringWriter stringWriter, Thread thread) {
            this.f14466a = stringWriter;
            this.b = thread;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            f.this.e(this.f14466a.toString());
            if (f.this.f14463d == this.b) {
                System.exit(0);
            }
        }
    }

    class d implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread f14467a;

        d(Thread thread) {
            this.f14467a = thread;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (f.this.f14463d == this.f14467a) {
                System.exit(0);
            }
        }
    }

    public f(Context context, f.a.a.a.l.d dVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f14462a = context;
        this.b = dVar;
        this.c = uncaughtExceptionHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        ((ClipboardManager) this.f14462a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("出错了", str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Throwable th, Thread thread) {
        if (MucangConfig.i() == null) {
            return;
        }
        StringWriter stringWriter = new StringWriter();
        Looper.prepare();
        th.printStackTrace(new PrintWriter(stringWriter));
        new androidx.appcompat.app.c.a(MucangConfig.i()).setTitle("提示").setCancelable(false).setMessage("很抱歉，当前程序出现异常：\n" + stringWriter.toString()).setNegativeButton("关闭", new d(thread)).setPositiveButton("复制异常信息", new c(stringWriter, thread)).create().show();
        Looper.loop();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        new Thread(new a(thread, th)).start();
        if (!MucangConfig.v()) {
            e.c(th);
            this.c.uncaughtException(thread, th);
        } else {
            t.c("默认替换", th);
            if (this.f14463d == thread) {
                new Thread(new b(th, thread)).start();
            }
        }
    }
}
