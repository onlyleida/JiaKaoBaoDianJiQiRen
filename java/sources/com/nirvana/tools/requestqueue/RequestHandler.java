package com.nirvana.tools.requestqueue;

import com.nirvana.tools.requestqueue.Response;
import com.nirvana.tools.requestqueue.strategy.CallbackStrategy;
import com.nirvana.tools.requestqueue.strategy.ThreadStrategy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.RunnableScheduledFuture;

/* JADX INFO: loaded from: classes6.dex */
final class RequestHandler<T extends Response> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<Callback<T>> f13621a = new ArrayList();
    RequestHandler<T>.a b;
    Request<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DoneAction f13622d;

    /* JADX INFO: renamed from: com.nirvana.tools.requestqueue.RequestHandler$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f13626a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[CallbackStrategy.values().length];
            b = iArr;
            try {
                iArr[CallbackStrategy.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[CallbackStrategy.COVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ThreadStrategy.values().length];
            f13626a = iArr2;
            try {
                iArr2[ThreadStrategy.THREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13626a[ThreadStrategy.THREAD_MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13626a[ThreadStrategy.SAME_WITH_CALLABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public interface DoneAction {
        void run(RequestHandler requestHandler);
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Runnable f13628d;
        private volatile boolean c = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        RunnableScheduledFuture<?> f13627a = null;

        public a(Runnable runnable) {
            this.f13628d = null;
            this.f13628d = runnable;
        }

        public final synchronized void a() {
            if (this.f13628d != null) {
                b bVarA = b.a();
                bVarA.b.removeCallbacks(this.f13628d);
            }
            if (this.f13627a != null) {
                b bVarA2 = b.a();
                bVarA2.f13631a.remove(this.f13627a);
            }
            this.c = true;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.c) {
                return;
            }
            try {
                T tCall = RequestHandler.this.c.getAction().call();
                if (this.c) {
                    return;
                }
                RequestHandler.this.a(tCall);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public RequestHandler(Request<T> request, DoneAction doneAction) {
        this.c = request;
        this.f13622d = doneAction;
    }

    final void a() {
        if (this.b == null) {
            Runnable runnable = new Runnable() { // from class: com.nirvana.tools.requestqueue.RequestHandler.3
                @Override // java.lang.Runnable
                public final void run() {
                    RequestHandler.this.a(RequestHandler.this.c.getAction().onTimeout());
                }
            };
            this.b = new a(runnable);
            int i = AnonymousClass4.f13626a[this.c.getThreadStrategy().ordinal()];
            if (i == 1) {
                b.a().b(this.b, 0L);
                this.b.f13627a = b.a().b(runnable, this.c.getTimeout());
            } else {
                if (i != 2) {
                    throw new IllegalArgumentException("Request Callable ThreadStrategy Illegal");
                }
                b.a().a(this.b);
                b.a().a(runnable, this.c.getTimeout());
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0042 A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:11:0x003a, B:13:0x0042, B:8:0x0024, B:9:0x002f, B:10:0x0033), top: B:19:0x0001 }] */
    final synchronized void a(Request<T> request) {
        List<Callback<T>> list;
        Callback<T> callback;
        request.getCallback().setExpiredTime(request.getTimeout() + System.currentTimeMillis());
        int i = AnonymousClass4.b[request.getCallbackStrategy().ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.f13621a.clear();
                list = this.f13621a;
                callback = request.getCallback();
            }
            if (this.f13621a.isEmpty()) {
                this.f13621a.add(request.getCallback());
            }
        } else {
            list = this.f13621a;
            callback = request.getCallback();
        }
        list.add(callback);
        if (this.f13621a.isEmpty()) {
            this.f13621a.add(request.getCallback());
        }
    }

    final synchronized void a(final T t) {
        if (this.f13621a.size() > 0) {
            ArrayList arrayList = new ArrayList(this.f13621a.size());
            Iterator<Callback<T>> it = this.f13621a.iterator();
            long j = 0;
            while (it.hasNext()) {
                final Callback<T> next = it.next();
                if (t.isTimeout()) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - next.getExpiredTime();
                    if (jCurrentTimeMillis > next.getThreshold()) {
                        if (j > jCurrentTimeMillis) {
                            j = jCurrentTimeMillis;
                        }
                    }
                }
                int i = AnonymousClass4.f13626a[next.getThreadStrategy().ordinal()];
                if (i == 1) {
                    b.a().b(new Runnable() { // from class: com.nirvana.tools.requestqueue.RequestHandler.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            next.onResult(t);
                        }
                    }, 0L);
                } else if (i == 2) {
                    b.a().a(new Runnable() { // from class: com.nirvana.tools.requestqueue.RequestHandler.2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public final void run() {
                            next.onResult(t);
                        }
                    });
                } else if (i == 3) {
                    arrayList.add(next);
                }
                it.remove();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((Callback) it2.next()).onResult(t);
            }
            arrayList.clear();
            if (this.f13621a.isEmpty()) {
                DoneAction doneAction = this.f13622d;
                if (doneAction != null) {
                    doneAction.run(this);
                }
            } else {
                Request<T> request = this.c;
                if (request != null) {
                    request.setTimeout(j);
                }
                a();
            }
        }
    }
}
