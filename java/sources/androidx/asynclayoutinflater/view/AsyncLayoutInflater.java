package androidx.asynclayoutinflater.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.g;
import java.util.Objects;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public final class AsyncLayoutInflater {
    private static final String TAG = "AsyncLayoutInflater";
    LayoutInflater mInflater;
    private Handler.Callback mHandlerCallback = new a();
    Handler mHandler = new Handler(this.mHandlerCallback);
    d mInflateThread = d.b();

    public interface OnInflateFinishedListener {
        void onInflateFinished(View view, int i, ViewGroup viewGroup);
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            c cVar = (c) message.obj;
            if (cVar.f541d == null) {
                cVar.f541d = AsyncLayoutInflater.this.mInflater.inflate(cVar.c, cVar.b, false);
            }
            cVar.f542e.onInflateFinished(cVar.f541d, cVar.c, cVar.b);
            AsyncLayoutInflater.this.mInflateThread.d(cVar);
            return true;
        }
    }

    private static class b extends LayoutInflater {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final String[] f539a = {"android.widget.", "android.webkit.", "android.app."};

        b(Context context) {
            super(context);
        }

        @Override // android.view.LayoutInflater
        public LayoutInflater cloneInContext(Context context) {
            return new b(context);
        }

        @Override // android.view.LayoutInflater
        protected View onCreateView(String str, AttributeSet attributeSet) throws ClassNotFoundException {
            for (String str2 : f539a) {
                try {
                    View viewCreateView = createView(str, str2, attributeSet);
                    if (viewCreateView != null) {
                        return viewCreateView;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            return super.onCreateView(str, attributeSet);
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        AsyncLayoutInflater f540a;
        ViewGroup b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f541d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        OnInflateFinishedListener f542e;

        c() {
        }
    }

    private static class d extends Thread {
        private static final d c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ArrayBlockingQueue<c> f543a = new ArrayBlockingQueue<>(10);
        private g<c> b = new g<>(10);

        static {
            d dVar = new d();
            c = dVar;
            dVar.start();
        }

        private d() {
        }

        public static d b() {
            return c;
        }

        public void a(c cVar) {
            try {
                this.f543a.put(cVar);
            } catch (InterruptedException e2) {
                throw new RuntimeException("Failed to enqueue async inflate request", e2);
            }
        }

        public c c() {
            c cVarAcquire = this.b.acquire();
            return cVarAcquire == null ? new c() : cVarAcquire;
        }

        public void d(c cVar) {
            cVar.f542e = null;
            cVar.f540a = null;
            cVar.b = null;
            cVar.c = 0;
            cVar.f541d = null;
            this.b.release(cVar);
        }

        public void e() {
            try {
                c cVarTake = this.f543a.take();
                try {
                    cVarTake.f541d = cVarTake.f540a.mInflater.inflate(cVarTake.c, cVarTake.b, false);
                } catch (RuntimeException e2) {
                    Log.w(AsyncLayoutInflater.TAG, "Failed to inflate resource in the background! Retrying on the UI thread", e2);
                }
                Message.obtain(cVarTake.f540a.mHandler, 0, cVarTake).sendToTarget();
            } catch (InterruptedException e3) {
                Log.w(AsyncLayoutInflater.TAG, e3);
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                e();
            }
        }
    }

    public AsyncLayoutInflater(Context context) {
        this.mInflater = new b(context);
    }

    public void inflate(int i, ViewGroup viewGroup, OnInflateFinishedListener onInflateFinishedListener) {
        Objects.requireNonNull(onInflateFinishedListener, "callback argument may not be null!");
        c cVarC = this.mInflateThread.c();
        cVarC.f540a = this;
        cVarC.c = i;
        cVarC.b = viewGroup;
        cVarC.f542e = onInflateFinishedListener;
        this.mInflateThread.a(cVarC);
    }
}
