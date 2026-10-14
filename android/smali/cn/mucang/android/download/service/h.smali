.class public Lcn/mucang/android/download/service/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-static {p2}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/download/service/DownloadService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ACTION_NETWORK_CHANGE"

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/i0;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
