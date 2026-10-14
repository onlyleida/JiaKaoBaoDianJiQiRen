.class public Lcn/mucang/android/download/notification/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/download/client/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/notification/a$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 5
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "core__download_channel"

    const-string v3, "\u4e0b\u8f7d"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/download/notification/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/download/notification/a;-><init>()V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/download/notification/a;Lcn/mucang/android/download/DownloadEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/notification/a;->l(Lcn/mucang/android/download/DownloadEntity;)V

    return-void
.end method

.method private g(Lcn/mucang/android/download/DownloadEntity;)Landroid/app/Notification;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-nez v0, :cond_3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Landroidx/core/app/i$f;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "core__download_channel"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Landroidx/core/app/i$f;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;)V

    :goto_0
    const-string v1, "\u4e0b\u8f7d"

    .line 5
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    const/high16 v1, 0x10d0000

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setSmallIcon(I)Landroidx/core/app/i$f;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2}, Landroidx/core/app/i$f;->setPriority(I)Landroidx/core/app/i$f;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Landroidx/core/app/i$f;->setOnlyAlertOnce(Z)Landroidx/core/app/i$f;

    .line 10
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcn/mucang/android/framework/download/R$layout;->download__notification_remote_view:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 11
    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_title:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/download/c;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 13
    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_image:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 14
    :cond_2
    sget v1, Lcn/mucang/android/framework/download/R$id;->remote_image:I

    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 15
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/core/app/i$f;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/i$f;->setWhen(J)Landroidx/core/app/i$f;

    .line 17
    invoke-direct {p0, p1}, Lcn/mucang/android/download/notification/a;->i(Lcn/mucang/android/download/DownloadEntity;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    .line 19
    invoke-virtual {v0}, Landroidx/core/app/i$f;->build()Landroid/app/Notification;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private h(Lcn/mucang/android/download/DownloadEntity;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.android.core.download.notification.clicked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "download_entity"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    const/high16 p1, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x8000000

    .line 4
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcn/mucang/android/download/DownloadEntity;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.mucang.android.core.download.notification.deleted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "download_entity"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    const/high16 p1, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x8000000

    .line 4
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public static j()Lcn/mucang/android/download/notification/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/download/notification/a$d;->a:Lcn/mucang/android/download/notification/a;

    return-object v0
.end method

.method private l(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v4, 0x4

    if-eq v1, v4, :cond_5

    const/16 v5, 0x8

    if-eq v1, v5, :cond_6

    const/16 v5, 0x10

    if-eq v1, v5, :cond_5

    if-eq v1, v2, :cond_4

    const/16 v4, 0x40

    if-eq v1, v4, :cond_3

    const/16 v4, 0x80

    if-eq v1, v4, :cond_2

    const/16 v4, 0x100

    if-eq v1, v4, :cond_3

    const/16 v4, 0x200

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcn/mucang/android/framework/download/R$drawable;->download__notification_pause:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 5
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v5, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcn/mucang/android/framework/download/R$drawable;->download__notification_start:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 8
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v5, "\u4e0b\u8f7d\u5f02\u5e38"

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5\u3002"

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 12
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcn/mucang/android/framework/download/R$drawable;->download__notification_start:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 13
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v5, "\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_6
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 15
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcn/mucang/android/framework/download/R$drawable;->download__notification_pause:I

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 16
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v5, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 17
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long v4, v4, v6

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 19
    :goto_1
    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcn/mucang/android/framework/download/R$id;->remote_progress:I

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 20
    new-instance v1, Landroid/content/Intent;

    const-string v4, "cn.mucang.android.core.download.notification.clicked"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "download_entity"

    .line 21
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    .line 22
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_8

    const/high16 v4, 0xc000000

    .line 23
    :cond_8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_9

    .line 25
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 26
    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_2

    .line 27
    :cond_9
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 28
    iput-object v4, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 29
    :goto_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x13378e8

    .line 30
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private m(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadProgress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/download/DownloadProgress;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v1

    iget-wide v2, v0, Lcn/mucang/android/download/DownloadProgress;->a:J

    new-instance v4, Lcn/mucang/android/download/notification/a$a;

    invoke-direct {v4, p0, v0}, Lcn/mucang/android/download/notification/a$a;-><init>(Lcn/mucang/android/download/notification/a;Lcn/mucang/android/download/DownloadProgress;)V

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/download/client/DownloadManager;->o(JLcn/mucang/android/download/client/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/download/DownloadProgress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/notification/a;->m(Ljava/util/List;)V

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/download/notification/a$c;

    invoke-direct {v1, p0}, Lcn/mucang/android/download/notification/a$c;-><init>(Lcn/mucang/android/download/notification/a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/android/download/client/DownloadManager;->o(JLcn/mucang/android/download/client/c;)V

    return-void
.end method

.method public c(Lcn/mucang/android/download/DownloadStatusChange;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget v0, p1, Lcn/mucang/android/download/DownloadStatusChange;->c:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/download/client/DownloadManager;->i()Lcn/mucang/android/download/client/DownloadManager;

    move-result-object v0

    iget-wide v1, p1, Lcn/mucang/android/download/DownloadStatusChange;->a:J

    new-instance v3, Lcn/mucang/android/download/notification/a$b;

    invoke-direct {v3, p0, p1}, Lcn/mucang/android/download/notification/a$b;-><init>(Lcn/mucang/android/download/notification/a;Lcn/mucang/android/download/DownloadStatusChange;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/download/client/DownloadManager;->o(JLcn/mucang/android/download/client/c;)V

    :cond_0
    return-void
.end method

.method public e(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x13378e8

    long-to-int p2, p1

    add-int/2addr p2, v1

    .line 4
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public f(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcn/mucang/android/download/notification/a;->g(Lcn/mucang/android/download/DownloadEntity;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/notification/a;->h(Lcn/mucang/android/download/DownloadEntity;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadStatus()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2

    .line 4
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v7, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u70b9\u51fb\u5b89\u88c5\u3002"

    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_progress:I

    invoke-virtual {v2, v3, v5, v5, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 6
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 8
    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 9
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_desc:I

    const-string v7, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-nez v9, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v2

    const-wide/16 v7, 0x64

    mul-long v2, v2, v7

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v7

    div-long/2addr v2, v7

    long-to-int v3, v2

    .line 13
    :goto_0
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v7, Lcn/mucang/android/framework/download/R$id;->remote_progress:I

    invoke-virtual {v2, v7, v5, v3, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 14
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v3, Lcn/mucang/android/framework/download/R$id;->remote_action:I

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 15
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v2, Lcn/mucang/android/framework/download/R$drawable;->download__notification_pause:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 17
    iput-object v4, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 18
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 19
    :goto_1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x13378e8

    .line 20
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "Exception"

    .line 21
    invoke-static {v0, p1}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public k(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/download/notification/a;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
