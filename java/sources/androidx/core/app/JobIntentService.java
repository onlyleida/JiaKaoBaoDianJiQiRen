package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class JobIntentService extends Service {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final HashMap<ComponentName, h> f947g = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f948a;
    h b;
    a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f949d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f950e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ArrayList<d> f951f;

    final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e eVarA = JobIntentService.this.a();
                if (eVarA == null) {
                    return null;
                }
                JobIntentService.this.e(eVarA.getIntent());
                eVarA.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r1) {
            JobIntentService.this.g();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r1) {
            JobIntentService.this.g();
        }
    }

    interface b {
        IBinder a();

        e b();
    }

    static final class c extends h {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final PowerManager.WakeLock f953d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final PowerManager.WakeLock f954e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f955f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f956g;

        c(Context context, ComponentName componentName) {
            super(componentName);
            context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f953d = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f954e = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.h
        public void b() {
            synchronized (this) {
                if (this.f956g) {
                    if (this.f955f) {
                        this.f953d.acquire(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                    }
                    this.f956g = false;
                    this.f954e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void c() {
            synchronized (this) {
                if (!this.f956g) {
                    this.f956g = true;
                    this.f954e.acquire(600000L);
                    this.f953d.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.h
        public void d() {
            synchronized (this) {
                this.f955f = false;
            }
        }
    }

    final class d implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Intent f957a;
        final int b;

        d(Intent intent, int i) {
            this.f957a = intent;
            this.b = i;
        }

        @Override // androidx.core.app.JobIntentService.e
        public void b() {
            JobIntentService.this.stopSelf(this.b);
        }

        @Override // androidx.core.app.JobIntentService.e
        public Intent getIntent() {
            return this.f957a;
        }
    }

    interface e {
        void b();

        Intent getIntent();
    }

    static final class f extends JobServiceEngine implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final JobIntentService f958a;
        final Object b;
        JobParameters c;

        final class a implements e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final JobWorkItem f959a;

            a(JobWorkItem jobWorkItem) {
                this.f959a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.e
            public void b() {
                synchronized (f.this.b) {
                    JobParameters jobParameters = f.this.c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f959a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.e
            public Intent getIntent() {
                return this.f959a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.b = new Object();
            this.f958a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public IBinder a() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.b
        public e b() {
            synchronized (this.b) {
                JobParameters jobParameters = this.c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                if (jobWorkItemDequeueWork == null) {
                    return null;
                }
                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f958a.getClassLoader());
                return new a(jobWorkItemDequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.c = jobParameters;
            this.f958a.c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f958a.b();
            synchronized (this.b) {
                this.c = null;
            }
            return zB;
        }
    }

    static final class g extends h {
        g(Context context, ComponentName componentName, int i) {
            super(componentName);
            a(i);
            new JobInfo.Builder(i, this.f960a).setOverrideDeadline(0L).build();
        }
    }

    static abstract class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ComponentName f960a;
        boolean b;
        int c;

        h(ComponentName componentName) {
            this.f960a = componentName;
        }

        void a(int i) {
            if (!this.b) {
                this.b = true;
                this.c = i;
            } else {
                if (this.c == i) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.c);
            }
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f951f = null;
        } else {
            this.f951f = new ArrayList<>();
        }
    }

    static h d(Context context, ComponentName componentName, boolean z, int i) {
        h cVar;
        HashMap<ComponentName, h> map = f947g;
        h hVar = map.get(componentName);
        if (hVar != null) {
            return hVar;
        }
        if (Build.VERSION.SDK_INT < 26) {
            cVar = new c(context, componentName);
        } else {
            if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            cVar = new g(context, componentName, i);
        }
        h hVar2 = cVar;
        map.put(componentName, hVar2);
        return hVar2;
    }

    e a() {
        b bVar = this.f948a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.f951f) {
            if (this.f951f.size() <= 0) {
                return null;
            }
            return this.f951f.remove(0);
        }
    }

    boolean b() {
        a aVar = this.c;
        if (aVar != null) {
            aVar.cancel(this.f949d);
        }
        return f();
    }

    void c(boolean z) {
        if (this.c == null) {
            this.c = new a();
            h hVar = this.b;
            if (hVar != null && z) {
                hVar.c();
            }
            this.c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    protected abstract void e(Intent intent);

    public boolean f() {
        return true;
    }

    void g() {
        ArrayList<d> arrayList = this.f951f;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.c = null;
                ArrayList<d> arrayList2 = this.f951f;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    c(false);
                } else if (!this.f950e) {
                    this.b.b();
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        b bVar = this.f948a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f948a = new f(this);
            this.b = null;
        } else {
            this.f948a = null;
            this.b = d(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<d> arrayList = this.f951f;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f950e = true;
                this.b.b();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f951f == null) {
            return 2;
        }
        this.b.d();
        synchronized (this.f951f) {
            ArrayList<d> arrayList = this.f951f;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i2));
            c(true);
        }
        return 3;
    }
}
