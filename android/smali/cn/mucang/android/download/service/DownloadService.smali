.class public Lcn/mucang/android/download/service/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/download/service/f;

.field private b:Landroid/os/Handler;

.field private final c:Landroid/os/Messenger;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private final f:Lcn/mucang/android/download/service/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/download/service/g;

    invoke-direct {v0}, Lcn/mucang/android/download/service/g;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->c:Landroid/os/Messenger;

    .line 4
    new-instance v0, Lcn/mucang/android/download/service/h;

    invoke-direct {v0}, Lcn/mucang/android/download/service/h;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->f:Lcn/mucang/android/download/service/h;

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/service/f;->C(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/download/service/DownloadService;->b(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    if-nez v0, :cond_2

    const-string v0, "DownloadManager"

    const-string v1, "DownloadService createQueueManagerIfNeeded"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EXCLUDE_GROUP_WHEN_RESTART"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREFS_THREAD_COUNT"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 5
    :cond_1
    :goto_0
    new-instance v1, Lcn/mucang/android/download/service/f;

    iget-object v2, p0, Lcn/mucang/android/download/service/DownloadService;->b:Landroid/os/Handler;

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/download/service/f;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->e:Landroid/os/Handler;

    new-instance v2, Lcn/mucang/android/download/service/d;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/download/service/d;-><init>(Lcn/mucang/android/download/service/DownloadService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method b(Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    if-eqz v0, :cond_8

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadService handleIntent intent:."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManager"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ACTION_NETWORK_CHANGE"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "DownloadService ACTION_NETWORK_CHANGE is received."

    .line 5
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1}, Lcn/mucang/android/download/service/f;->u()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "ACTION_NOTIFY_PROGRESS"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1}, Lcn/mucang/android/download/service/f;->v()V

    goto/16 :goto_0

    :cond_1
    const-string v2, "ACTION_PAUSE_BY_GROUP"

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "PARAM_TASK_GROUPS"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/download/service/f;->x(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "PARAM_TASK_ID"

    const-wide/16 v3, -0x1

    .line 12
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadService passed in taskId :"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v5, v3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "ACTION_ENQUEUE"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "DownloadService ACTION_ENQUEUE action"

    .line 15
    invoke-static {v1, p1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1, v5, v6}, Lcn/mucang/android/download/service/f;->l(J)V

    goto :goto_0

    :cond_4
    const-string p1, "ACTION_PAUSE"

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1, v5, v6}, Lcn/mucang/android/download/service/f;->w(J)V

    goto :goto_0

    :cond_5
    const-string p1, "ACTION_RESUME"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1, v5, v6}, Lcn/mucang/android/download/service/f;->D(J)V

    goto :goto_0

    :cond_6
    const-string p1, "ACTION_REMOVE"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1, v5, v6}, Lcn/mucang/android/download/service/f;->z(J)V

    goto :goto_0

    :cond_7
    const-string p1, "ACTION_RESTART"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    invoke-virtual {p1, v5, v6}, Lcn/mucang/android/download/service/f;->A(J)V

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/download/service/DownloadService;->c(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic f(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/download/service/DownloadService;->e(Landroid/content/Intent;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/download/service/DownloadService;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "DownloadManager"

    const-string v1, "DownloadService onCreate"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->f:Lcn/mucang/android/download/service/h;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->d:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->e:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DownloadManager"

    const-string v1, "DownloadService onDestroy"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/download/service/f;->y()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->b:Landroid/os/Handler;

    .line 6
    iput-object v1, p0, Lcn/mucang/android/download/service/DownloadService;->a:Lcn/mucang/android/download/service/f;

    .line 7
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->f:Lcn/mucang/android/download/service/h;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/download/service/DownloadService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/download/service/DownloadService;->a()V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/download/service/DownloadService;->e:Landroid/os/Handler;

    new-instance p3, Lcn/mucang/android/download/service/e;

    invoke-direct {p3, p0, p1}, Lcn/mucang/android/download/service/e;-><init>(Lcn/mucang/android/download/service/DownloadService;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
