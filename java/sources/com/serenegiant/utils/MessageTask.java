package com.serenegiant.utils;

import android.util.Log;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MessageTask implements Runnable {
    protected static final int REQUEST_TASK_NON = 0;
    protected static final int REQUEST_TASK_QUIT = -9;
    protected static final int REQUEST_TASK_RUN = -1;
    protected static final int REQUEST_TASK_RUN_AND_WAIT = -2;
    protected static final int REQUEST_TASK_START = -8;
    private static final String TAG = MessageTask.class.getSimpleName();
    private volatile boolean mFinished;
    private volatile boolean mIsRunning;
    private final int mMaxRequest;
    private final LinkedBlockingQueue<Request> mRequestPool;
    private final LinkedBlockingDeque<Request> mRequestQueue;
    private final Object mSync;
    private Thread mWorkerThread;

    protected static final class Request {
        int arg1;
        int arg2;
        Object obj;
        int request;
        int request_for_result;
        Object result;

        public boolean equals(Object obj) {
            if (!(obj instanceof Request)) {
                return super.equals(obj);
            }
            Request request = (Request) obj;
            return this.request == request.request && this.request_for_result == request.request_for_result && this.arg1 == request.arg1 && this.arg2 == request.arg2 && this.obj == request.obj;
        }

        public void setResult(Object obj) {
            synchronized (this) {
                this.result = obj;
                this.request_for_result = 0;
                this.request = 0;
                notifyAll();
            }
        }

        private Request() {
            this.request_for_result = 0;
            this.request = 0;
        }

        public Request(int i, int i2, int i3, Object obj) {
            this.request = i;
            this.arg1 = i2;
            this.arg2 = i3;
            this.obj = obj;
            this.request_for_result = 0;
        }
    }

    public static class TaskBreak extends RuntimeException {
    }

    public MessageTask() {
        this.mSync = new Object();
        this.mMaxRequest = -1;
        this.mRequestPool = new LinkedBlockingQueue<>();
        this.mRequestQueue = new LinkedBlockingDeque<>();
    }

    protected boolean callOnError(Exception exc) {
        try {
            return onError(exc);
        } catch (Exception unused) {
            return true;
        }
    }

    protected void init(int i, int i2, Object obj) {
        this.mFinished = false;
        this.mRequestQueue.offer(obtain(-8, i, i2, obj));
    }

    public boolean isFinished() {
        return this.mFinished;
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    protected Request obtain(int i, int i2, int i3, Object obj) {
        Request requestPoll = this.mRequestPool.poll();
        if (requestPoll == null) {
            return new Request(i, i2, i3, obj);
        }
        requestPoll.request = i;
        requestPoll.arg1 = i2;
        requestPoll.arg2 = i3;
        requestPoll.obj = obj;
        return requestPoll;
    }

    public boolean offer(int i, int i2, int i3, Object obj) {
        return !this.mFinished && this.mRequestQueue.offer(obtain(i, i2, i3, obj));
    }

    public Object offerAndWait(int i, int i2, int i3, Object obj) {
        if (this.mFinished || i <= 0) {
            return null;
        }
        Request requestObtain = obtain(-2, i2, i3, obj);
        synchronized (requestObtain) {
            requestObtain.request_for_result = i;
            requestObtain.result = null;
            this.mRequestQueue.offer(requestObtain);
            while (this.mIsRunning && requestObtain.request_for_result != 0) {
                try {
                    requestObtain.wait(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        return requestObtain.result;
    }

    public boolean offerFirst(int i, int i2, int i3, Object obj) {
        return !this.mFinished && this.mIsRunning && this.mRequestQueue.offerFirst(obtain(i, i2, i3, obj));
    }

    protected void onBeforeStop() {
    }

    protected boolean onError(Exception exc) {
        return true;
    }

    protected abstract void onInit(int i, int i2, Object obj);

    protected abstract void onRelease();

    protected abstract void onStart();

    protected abstract void onStop();

    protected abstract Object processRequest(int i, int i2, int i3, Object obj) throws TaskBreak;

    public boolean queueEvent(Runnable runnable) {
        return (this.mFinished || runnable == null || !offer(-1, runnable)) ? false : true;
    }

    public void release() {
        release(false);
    }

    public void releaseSelf() {
        this.mIsRunning = false;
        if (this.mFinished) {
            return;
        }
        this.mRequestQueue.clear();
        this.mRequestQueue.offerFirst(obtain(-9, 0, 0, null));
    }

    public void removeRequest(Request request) {
        for (Request request2 : this.mRequestQueue) {
            if (!this.mIsRunning || this.mFinished) {
                return;
            }
            if (request2.equals(request)) {
                this.mRequestQueue.remove(request2);
                this.mRequestPool.offer(request2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:95:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public void run() {
        Request requestTake;
        boolean zInterrupted;
        this.mIsRunning = true;
        try {
            requestTake = this.mRequestQueue.take();
        } catch (InterruptedException unused) {
            this.mIsRunning = false;
            this.mFinished = true;
            requestTake = null;
        }
        synchronized (this.mSync) {
            if (this.mIsRunning) {
                this.mWorkerThread = Thread.currentThread();
                try {
                    onInit(requestTake.arg1, requestTake.arg2, requestTake.obj);
                } catch (Exception e2) {
                    Log.w(TAG, e2);
                    this.mIsRunning = false;
                    this.mFinished = true;
                }
                this.mSync.notifyAll();
            } else {
                this.mSync.notifyAll();
            }
            throw th;
        }
        if (this.mIsRunning) {
            try {
                onStart();
            } catch (Exception e3) {
                if (callOnError(e3)) {
                    this.mIsRunning = false;
                    this.mFinished = true;
                }
            }
        }
        while (this.mIsRunning) {
            try {
                Request requestTakeRequest = takeRequest();
                int i = requestTakeRequest.request;
                if (i == -9) {
                    break;
                }
                if (i == -2) {
                    try {
                        try {
                            requestTakeRequest.setResult(processRequest(requestTakeRequest.request_for_result, requestTakeRequest.arg1, requestTakeRequest.arg2, requestTakeRequest.obj));
                        } catch (Exception e4) {
                            requestTakeRequest.setResult(null);
                            if (callOnError(e4)) {
                                zInterrupted = Thread.interrupted();
                                synchronized (this.mSync) {
                                    this.mWorkerThread = null;
                                    this.mIsRunning = false;
                                    this.mFinished = true;
                                    if (!zInterrupted) {
                                        onBeforeStop();
                                        onStop();
                                    }
                                    onRelease();
                                    synchronized (this.mSync) {
                                        this.mSync.notifyAll();
                                    }
                                }
                            }
                        }
                        requestTakeRequest.request_for_result = 0;
                        requestTakeRequest.request = 0;
                        this.mRequestPool.offer(requestTakeRequest);
                    } catch (TaskBreak unused2) {
                        requestTakeRequest.setResult(null);
                        zInterrupted = Thread.interrupted();
                        synchronized (this.mSync) {
                            this.mWorkerThread = null;
                            this.mIsRunning = false;
                            this.mFinished = true;
                            if (!zInterrupted) {
                                onBeforeStop();
                                onStop();
                            }
                            onRelease();
                            synchronized (this.mSync) {
                                this.mSync.notifyAll();
                            }
                        }
                    }
                } else if (i != -1) {
                    if (i != 0) {
                        try {
                            processRequest(i, requestTakeRequest.arg1, requestTakeRequest.arg2, requestTakeRequest.obj);
                        } catch (Exception e5) {
                            if (callOnError(e5)) {
                                zInterrupted = Thread.interrupted();
                                synchronized (this.mSync) {
                                    this.mWorkerThread = null;
                                    this.mIsRunning = false;
                                    this.mFinished = true;
                                    if (!zInterrupted) {
                                        try {
                                            onBeforeStop();
                                            onStop();
                                        } catch (Exception e6) {
                                            callOnError(e6);
                                        }
                                    }
                                    onRelease();
                                    synchronized (this.mSync) {
                                        this.mSync.notifyAll();
                                    }
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                    requestTakeRequest.request_for_result = 0;
                    requestTakeRequest.request = 0;
                    this.mRequestPool.offer(requestTakeRequest);
                } else {
                    Object obj = requestTakeRequest.obj;
                    if (obj instanceof Runnable) {
                        try {
                            ((Runnable) obj).run();
                        } catch (Exception e7) {
                            if (callOnError(e7)) {
                                zInterrupted = Thread.interrupted();
                                synchronized (this.mSync) {
                                    this.mWorkerThread = null;
                                    this.mIsRunning = false;
                                    this.mFinished = true;
                                    if (!zInterrupted) {
                                        onBeforeStop();
                                        onStop();
                                    }
                                    onRelease();
                                    synchronized (this.mSync) {
                                        this.mSync.notifyAll();
                                    }
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                    requestTakeRequest.request_for_result = 0;
                    requestTakeRequest.request = 0;
                    this.mRequestPool.offer(requestTakeRequest);
                }
            } catch (TaskBreak | InterruptedException unused3) {
            }
        }
        zInterrupted = Thread.interrupted();
        synchronized (this.mSync) {
            this.mWorkerThread = null;
            this.mIsRunning = false;
            this.mFinished = true;
        }
        if (!zInterrupted) {
            onBeforeStop();
            onStop();
        }
        try {
            onRelease();
        } catch (Exception unused4) {
        }
        synchronized (this.mSync) {
            this.mSync.notifyAll();
        }
    }

    protected Request takeRequest() throws InterruptedException {
        return this.mRequestQueue.take();
    }

    public void userBreak() throws TaskBreak {
        throw new TaskBreak();
    }

    public boolean waitReady() {
        boolean z;
        synchronized (this.mSync) {
            while (!this.mIsRunning && !this.mFinished) {
                try {
                    this.mSync.wait(500L);
                } catch (InterruptedException unused) {
                }
            }
            z = this.mIsRunning;
        }
        return z;
    }

    public boolean offer(int i, int i2, Object obj) {
        return !this.mFinished && this.mRequestQueue.offer(obtain(i, i2, 0, obj));
    }

    public void release(boolean z) {
        Thread thread;
        boolean z2 = this.mIsRunning;
        this.mIsRunning = false;
        if (this.mFinished) {
            return;
        }
        this.mRequestQueue.clear();
        this.mRequestQueue.offerFirst(obtain(-9, 0, 0, null));
        synchronized (this.mSync) {
            if (z2) {
                long id = Thread.currentThread().getId();
                Thread thread2 = this.mWorkerThread;
                if ((thread2 != null ? thread2.getId() : id) != id) {
                    if (z && (thread = this.mWorkerThread) != null) {
                        thread.interrupt();
                    }
                    while (!this.mFinished) {
                        try {
                            this.mSync.wait(300L);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public boolean offer(int i, int i2, int i3) {
        return !this.mFinished && this.mIsRunning && this.mRequestQueue.offer(obtain(i, i2, i3, null));
    }

    public boolean offer(int i, int i2) {
        return !this.mFinished && this.mIsRunning && this.mRequestQueue.offer(obtain(i, i2, 0, null));
    }

    public boolean offer(int i) {
        return !this.mFinished && this.mIsRunning && this.mRequestQueue.offer(obtain(i, 0, 0, null));
    }

    public MessageTask(int i) {
        this.mSync = new Object();
        this.mMaxRequest = -1;
        this.mRequestPool = new LinkedBlockingQueue<>();
        this.mRequestQueue = new LinkedBlockingDeque<>();
        for (int i2 = 0; i2 < i && this.mRequestPool.offer(new Request()); i2++) {
        }
    }

    public boolean offer(int i, Object obj) {
        return !this.mFinished && this.mIsRunning && this.mRequestQueue.offer(obtain(i, 0, 0, obj));
    }

    public void removeRequest(int i) {
        for (Request request : this.mRequestQueue) {
            if (!this.mIsRunning || this.mFinished) {
                return;
            }
            if (request.request == i) {
                this.mRequestQueue.remove(request);
                this.mRequestPool.offer(request);
            }
        }
    }

    public MessageTask(int i, int i2) {
        this.mSync = new Object();
        this.mMaxRequest = i;
        this.mRequestPool = new LinkedBlockingQueue<>(i);
        this.mRequestQueue = new LinkedBlockingDeque<>(i);
        for (int i3 = 0; i3 < i2 && this.mRequestPool.offer(new Request()); i3++) {
        }
    }
}
