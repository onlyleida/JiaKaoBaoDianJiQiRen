package cn.mucang.android.jiakaoyi.engine.init;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.c;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.n0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    protected volatile c engine;
    protected final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> stateCallback;
    protected volatile EngineState state = EngineState.None;
    protected final Object lock = new Object();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.init.a$a, reason: collision with other inner class name */
    class RunnableC0100a implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.init.a$a$a, reason: collision with other inner class name */
        class RunnableC0101a implements Runnable {
            RunnableC0101a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (a.this.engine != null && a.this.state == EngineState.Initialed && a.this.engine.h().d()) {
                    w.r.setPassScore(a.this.engine.h().b);
                }
                a aVar = a.this;
                aVar.stateCallback.callback(aVar.state);
            }
        }

        RunnableC0100a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RunnableC0101a runnableC0101a;
            try {
                if (a.this.state == EngineState.Initializing) {
                    synchronized (a.this.lock) {
                        f.o("引擎初始化...");
                        a aVar = a.this;
                        aVar.engine = aVar.createEngine();
                        f.o("引擎初始化完成");
                    }
                    a.this.state = EngineState.Initialed;
                }
                runnableC0101a = new RunnableC0101a();
            } catch (Throwable th) {
                try {
                    f.o("引擎初始化失败 : " + t.g(th));
                    t.d("TAG", "引擎初始化失败 : " + t.g(th));
                    u.h("引擎初始化失败 : " + th.getLocalizedMessage());
                    a.this.state = EngineState.InitError;
                    runnableC0101a = new RunnableC0101a();
                } catch (Throwable th2) {
                    u.c(new RunnableC0101a());
                    throw th2;
                }
            }
            u.c(runnableC0101a);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.init.a$b$a, reason: collision with other inner class name */
        class RunnableC0102a implements Runnable {
            RunnableC0102a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                aVar.stateCallback.callback(aVar.state);
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RunnableC0102a runnableC0102a;
            try {
                if (a.this.state == EngineState.Resetting) {
                    synchronized (a.this.lock) {
                        a.this.engine.o();
                    }
                    a.this.state = EngineState.Initialed;
                }
                runnableC0102a = new RunnableC0102a();
            } catch (Throwable th) {
                try {
                    t.d("TAG", "引擎重置失败 : " + th.getLocalizedMessage());
                    f.o("引擎重置失败 : " + t.g(th));
                    u.h("引擎重置失败 : " + th.getLocalizedMessage());
                    a.this.state = EngineState.InitError;
                    runnableC0102a = new RunnableC0102a();
                } catch (Throwable th2) {
                    u.c(new RunnableC0102a());
                    throw th2;
                }
            }
            u.c(runnableC0102a);
        }
    }

    protected a(cn.mucang.android.jiakaoyi.framework.h.b<EngineState> bVar) {
        this.stateCallback = bVar;
    }

    public boolean canStart() {
        return this.state == EngineState.Initialed;
    }

    protected abstract c createEngine();

    public void destroy() {
        this.state = EngineState.Destroy;
        doDestroy();
    }

    protected void doDestroy() {
        synchronized (this.lock) {
            if (this.engine != null) {
                this.engine.c();
                this.engine = null;
            }
        }
    }

    public c getEngine() {
        return this.engine;
    }

    public void initEngine() {
        if (this.state == EngineState.Destroy || this.state == EngineState.Resetting) {
            return;
        }
        EngineState engineState = this.state;
        EngineState engineState2 = EngineState.Initializing;
        if (engineState == engineState2) {
            return;
        }
        this.state = engineState2;
        this.stateCallback.callback(this.state);
        doDestroy();
        n0.a(new RunnableC0100a());
    }

    public boolean isStart() {
        return this.state == EngineState.Start && this.engine != null && (this.engine.k() || this.engine.j());
    }

    public void reset() {
        if (this.state == EngineState.Destroy || this.engine == null) {
            return;
        }
        EngineState engineState = this.state;
        EngineState engineState2 = EngineState.Resetting;
        if (engineState == engineState2) {
            return;
        }
        f.o("reset() state " + this.state + " ; engine " + this.engine);
        this.state = engineState2;
        this.stateCallback.callback(this.state);
        n0.a(new b());
    }

    public boolean start() {
        f.o("start() state " + this.state + " ; engine " + this.engine);
        if (this.state != EngineState.Initialed || this.engine == null) {
            return false;
        }
        boolean zS = this.engine.s();
        if (zS) {
            this.state = EngineState.Start;
            this.stateCallback.callback(this.state);
        }
        return zS;
    }

    public void stop() {
        f.o("stop() state " + this.state + " ; engine " + this.engine);
        if (this.state != EngineState.Start || this.engine == null) {
            return;
        }
        this.engine.t();
        this.state = EngineState.None;
        this.stateCallback.callback(this.state);
    }
}
