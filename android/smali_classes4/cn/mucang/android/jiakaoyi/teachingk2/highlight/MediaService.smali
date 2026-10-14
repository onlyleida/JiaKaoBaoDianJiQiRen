.class public Lcn/mucang/android/jiakaoyi/teachingk2/highlight/MediaService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "MediaService"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 3
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 5
    :cond_0
    new-instance v0, Landroidx/core/app/i$f;

    invoke-direct {v0, p0, v2}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "\u6b63\u5728\u5f55\u5236\u89c6\u9891"

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$mipmap;->ic_launcher:I

    .line 7
    invoke-virtual {v1, v2}, Landroidx/core/app/i$f;->setSmallIcon(I)Landroidx/core/app/i$f;

    move-result-object v1

    const/4 v2, 0x4

    .line 8
    invoke-virtual {v1, v2}, Landroidx/core/app/i$f;->setDefaults(I)Landroidx/core/app/i$f;

    move-result-object v1

    const/4 v2, -0x2

    .line 9
    invoke-virtual {v1, v2}, Landroidx/core/app/i$f;->setPriority(I)Landroidx/core/app/i$f;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroidx/core/app/i$f;->setAutoCancel(Z)Landroidx/core/app/i$f;

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0}, Landroidx/core/app/i$f;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/MediaService;->a()V

    return-void
.end method
