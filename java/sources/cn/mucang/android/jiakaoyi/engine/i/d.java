package cn.mucang.android.jiakaoyi.engine.i;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.e;
import cn.mucang.android.jiakaoyi.framework.log.f;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private volatile Handler b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile e f3091e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f3090d = true;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile HandlerThread f3089a = new HandlerThread("EventCheckerThread");

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                d.this.g(message);
            } catch (Throwable th) {
                t.d("TAG", "发生了错误:" + th.getLocalizedMessage());
                u.h("执行错误:" + th.getLocalizedMessage());
                f.o("引擎执行错误 : " + message.what + " " + message.arg1 + " " + message.arg2 + " " + message.obj + " : " + th.getLocalizedMessage());
                StringBuilder sb = new StringBuilder();
                sb.append("引擎执行错误 : ");
                sb.append(Log.getStackTraceString(th));
                f.o(sb.toString());
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Step f3093a;
        final int[] b;

        public b(Step step, int[] iArr) {
            this.f3093a = step;
            this.b = iArr;
        }
    }

    public d(e eVar) {
        this.f3091e = eVar;
        this.f3089a.start();
    }

    private Handler d() {
        HandlerThread handlerThread = this.f3089a;
        if (handlerThread != null) {
            return new a(handlerThread.getLooper());
        }
        f.o("createCheckerHandler null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Message message) {
        e eVar = this.f3091e;
        if (eVar == null) {
            return;
        }
        int i = message.arg1;
        if (!this.f3090d || i == 20) {
            if (i == 520) {
                if (this.c) {
                    return;
                }
                eVar.c((cn.mucang.android.jiakaoyi.signal.c.e) message.obj);
                return;
            }
            if (i == 13) {
                b bVar = (b) message.obj;
                eVar.f(bVar.f3093a, bVar.b);
                return;
            }
            if (i == 14) {
                eVar.d((Step) message.obj);
                return;
            }
            if (i == 19) {
                eVar.g((Step) message.obj);
                return;
            }
            if (i == 20) {
                eVar.stop();
                eVar.c((cn.mucang.android.jiakaoyi.signal.c.e) message.obj);
                return;
            }
            if (i == 21) {
                eVar.a((cn.mucang.android.jiakaoyi.engine.model.a) message.obj);
                return;
            }
            if (i == 22) {
                eVar.b((cn.mucang.android.jiakaoyi.engine.model.a) message.obj);
            } else if (i == 23) {
                eVar.reset();
            } else if (i == 24) {
                eVar.e((Step) message.obj);
            }
        }
    }

    private void o(Message message) {
        Handler handler = this.b;
        if (handler == null) {
            t.d("ExamScheduler", "引擎消息发送失败:" + message.toString() + " , reason : checkerHandler is Null");
            f.o("引擎消息发送失败:" + message.toString() + " , reason : checkerHandler is Null");
            return;
        }
        try {
            if (handler.sendMessage(message)) {
                return;
            }
            t.d("ExamScheduler", "引擎消息发送失败:" + message.toString());
            f.o("引擎消息发送失败:" + message.toString());
        } catch (Throwable th) {
            f.o("引擎消息发送失败:" + message.toString() + " , error = " + th.getMessage());
            t.d("ExamScheduler", "引擎消息发送失败:" + message.toString() + " , error = " + th.getMessage());
        }
    }

    public void b(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        if (this.b == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 22;
        messageObtain.obj = aVar;
        o(messageObtain);
    }

    public void c(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (this.f3090d || this.b == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 520;
        messageObtain.obj = eVar;
        o(messageObtain);
    }

    public void e(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        if (this.b == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 21;
        messageObtain.obj = aVar;
        o(messageObtain);
    }

    public void f() {
        this.f3090d = true;
        Handler handler = this.b;
        this.b = null;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.f3089a;
        this.f3089a = null;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    public void h(Step step) {
        if (this.f3090d || this.b == null) {
            f.o("exeThisStep isStop " + this.f3090d + " ; checkerHandler " + this.b);
            return;
        }
        f.o("exeThisStep arg1 14 ; obj " + step);
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 14;
        messageObtain.obj = step;
        o(messageObtain);
    }

    public boolean i() {
        return this.c;
    }

    public boolean j() {
        e eVar = this.f3091e;
        return eVar != null && eVar.isStarted();
    }

    public void k(Step step, int[] iArr) {
        if (this.f3090d || this.b == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 13;
        messageObtain.obj = new b(step, iArr);
        o(messageObtain);
    }

    public void l() {
        this.c = true;
    }

    public void m() {
        if (this.b == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 23;
        o(messageObtain);
        this.f3090d = true;
    }

    public void n() {
        this.c = false;
    }

    public void p(e eVar) {
        this.f3091e = eVar;
    }

    public boolean q() {
        if (this.b == null) {
            this.b = d();
        }
        if (this.b == null) {
            return false;
        }
        this.f3090d = false;
        this.c = false;
        return true;
    }

    public void r() {
        if (this.b != null) {
            Message messageObtain = Message.obtain();
            messageObtain.arg1 = 20;
            messageObtain.obj = cn.mucang.android.jiakaoyi.signal.c.d.t();
            o(messageObtain);
        }
        this.f3090d = true;
    }

    public void s(Step step) {
        if (this.f3090d || this.b == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.arg1 = 19;
        messageObtain.obj = step;
        o(messageObtain);
    }
}
