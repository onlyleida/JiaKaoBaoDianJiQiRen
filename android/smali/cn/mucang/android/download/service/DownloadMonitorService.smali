.class public Lcn/mucang/android/download/service/DownloadMonitorService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcn/mucang/android/download/client/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/download/service/DownloadMonitorService$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/download/service/DownloadMonitorService$a;-><init>(Lcn/mucang/android/download/service/DownloadMonitorService;)V

    iput-object v0, p0, Lcn/mucang/android/download/service/DownloadMonitorService;->a:Lcn/mucang/android/download/client/a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/download/service/DownloadMonitorService;->a:Lcn/mucang/android/download/client/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->c(Lcn/mucang/android/download/client/a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/download/service/DownloadMonitorService;->a:Lcn/mucang/android/download/client/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->e(Lcn/mucang/android/download/client/a;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
