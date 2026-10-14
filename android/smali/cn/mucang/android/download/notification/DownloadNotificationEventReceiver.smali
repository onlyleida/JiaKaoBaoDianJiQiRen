.class public Lcn/mucang/android/download/notification/DownloadNotificationEventReceiver;
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
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn.mucang.android.core.download.notification.clicked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "download_entity"

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/download/DownloadEntity;

    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 p1, 0x40

    if-eq v0, p1, :cond_4

    const/16 p1, 0x80

    if-eq v0, p1, :cond_1

    const/16 p1, 0x100

    if-eq v0, p1, :cond_4

    const/16 p1, 0x200

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->s(J)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/download/c;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/download/DownloadEntity;->getStorePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcn/mucang/android/download/c;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->r(J)V

    const-string p1, "\u5b89\u88c5\u5305\u5f02\u5e38\uff0c\u65e0\u6cd5\u5b89\u88c5\u3002"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->t(J)V

    goto :goto_0

    .line 11
    :cond_5
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object p1

    invoke-virtual {p2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/download/client/DownloadManager;->m(J)V

    goto :goto_0

    .line 12
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn.mucang.android.core.download.notification.deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/download/DownloadEntity;

    if-eqz p1, :cond_7

    .line 14
    invoke-static {}, Lcn/mucang/android/download/notification/a;->j()Lcn/mucang/android/download/notification/a;

    move-result-object p2

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/download/notification/a;->k(J)V

    :cond_7
    :goto_0
    return-void
.end method
