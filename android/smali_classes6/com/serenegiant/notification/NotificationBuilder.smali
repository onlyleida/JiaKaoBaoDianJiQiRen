.class public abstract Lcom/serenegiant/notification/NotificationBuilder;
.super Landroidx/core/app/i$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/notification/NotificationBuilder$BadgeIconType;,
        Lcom/serenegiant/notification/NotificationBuilder$DefaultIntentFactory;,
        Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;,
        Lcom/serenegiant/notification/NotificationBuilder$IntentFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PRIORITY_UNSPECIFIED:I = -0x3

.field private static final TAG:Ljava/lang/String; = "NotificationBuilder"


# instance fields
.field private final mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mHighPriorityFullScreenIntent:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x3

    .line 2
    iput v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mPriority:I

    .line 3
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->getBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    .line 5
    invoke-virtual {p0, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;

    return-void
.end method

.method private static notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    .line 3
    invoke-static {p0}, Landroidx/core/app/l;->d(Landroid/content/Context;)Landroidx/core/app/l;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/l;->g(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/serenegiant/notification/NotificationBuilder;->showNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V

    return-void
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/serenegiant/notification/NotificationBuilder$1;

    invoke-direct {p1, p0, p3, p6, p7}, Lcom/serenegiant/notification/NotificationBuilder$1;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/serenegiant/notification/NotificationBuilder$IntentFactory;)V

    .line 3
    invoke-virtual {p1, p4}, Lcom/serenegiant/notification/NotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p5}, Lcom/serenegiant/notification/NotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    .line 5
    instance-of p0, p7, Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;

    if-eqz p0, :cond_0

    .line 6
    check-cast p7, Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;

    invoke-interface {p7, p1}, Lcom/serenegiant/notification/NotificationBuilder$NotificationBuilderFactory;->setupBuilder(Lcom/serenegiant/notification/NotificationBuilder;)V

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->notify(I)Lcom/serenegiant/notification/NotificationBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAction(Landroidx/core/app/i$b;)Landroidx/core/app/i$f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addAction(Landroidx/core/app/i$b;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/i$f;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public addAction(Landroidx/core/app/i$b;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->addAction(Landroidx/core/app/i$b;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic addExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic addPerson(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->addPerson(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPerson(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->addPerson(Ljava/lang/String;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getImportance()I

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mPriority:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, -0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, v2}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    .line 8
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->build()Landroid/app/NotificationChannel;

    .line 9
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/core/app/i$f;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    .line 10
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/core/app/i$f;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    .line 11
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->createFullScreenIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->isHighPriorityFullScreenIntent()Z

    move-result v1

    invoke-super {p0, v0, v1}, Landroidx/core/app/i$f;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/i$f;

    .line 12
    invoke-super {p0}, Landroidx/core/app/i$f;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createContentIntent()Landroid/app/PendingIntent;
.end method

.method protected createDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected createFullScreenIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mFullScreenIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public enableLights(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->enableLights(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public enableVibration(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->enableVibration(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic extend(Landroidx/core/app/i$h;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->extend(Landroidx/core/app/i$h;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public extend(Landroidx/core/app/i$h;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->extend(Landroidx/core/app/i$h;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public getChannelBuilder()Lcom/serenegiant/notification/ChannelBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFullScreenIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mFullScreenIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getImportance()I

    move-result v0

    return v0
.end method

.method public getLockscreenVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getLockscreenVisibility()I

    move-result v0

    return v0
.end method

.method public isHighPriorityFullScreenIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mHighPriorityFullScreenIntent:Z

    return v0
.end method

.method public notify(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/serenegiant/notification/NotificationBuilder;->notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    return-object p0
.end method

.method public notify(Ljava/lang/String;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/serenegiant/notification/NotificationBuilder;->notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    return-object p0
.end method

.method public notifyForeground(Landroid/app/Service;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/serenegiant/notification/NotificationBuilder;->notifyForeground(Landroid/app/Service;Ljava/lang/String;I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public notifyForeground(Landroid/app/Service;Ljava/lang/String;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/notification/NotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 3
    invoke-virtual {p1, p3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 4
    invoke-static {p1, p2, p3, v0}, Lcom/serenegiant/notification/NotificationBuilder;->notify(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    return-object p0
.end method

.method public bridge synthetic setAutoCancel(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setAutoCancel(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAutoCancel(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setAutoCancel(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setBadgeIconType(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setBadgeIconType(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBadgeIconType(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setBadgeIconType(I)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setBypassDnd(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setBypassDnd(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setCategory(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCategory(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCategory(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setCategory(Ljava/lang/String;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setChannelGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0}, Lcom/serenegiant/notification/ChannelBuilder;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setChannelGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->setGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setChannelId(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setChannelId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setChannelId(Ljava/lang/String;)Landroidx/core/app/i$f;

    .line 3
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setId(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setChannelName(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setName(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setColor(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setColor(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setColor(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setColor(I)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setColorized(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setColorized(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setColorized(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setColorized(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContent(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentInfo(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-super {p0, v0}, Landroidx/core/app/i$f;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    .line 3
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public bridge synthetic setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setDefaults(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setDefaults(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDefaults(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setDefaults(I)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    .line 3
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/core/app/i$f;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/i$f;

    .line 3
    iput-object p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 4
    iput-boolean p2, p0, Lcom/serenegiant/notification/NotificationBuilder;->mHighPriorityFullScreenIntent:Z

    return-object p0
.end method

.method public bridge synthetic setGroup(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGroup(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setGroup(Ljava/lang/String;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setGroupAlertBehavior(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroupAlertBehavior(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGroupAlertBehavior(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setGroupAlertBehavior(I)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setGroupSummary(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setGroupSummary(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGroupSummary(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setGroupSummary(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setImportance(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLargeIcon(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setLightColor(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setLights(III)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setLights(III)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLights(III)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/i$f;->setLights(III)Landroidx/core/app/i$f;

    .line 3
    iget-object p2, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {p2, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setLocalOnly(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setLocalOnly(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLocalOnly(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setLocalOnly(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setLockscreenVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setNumber(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setNumber(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNumber(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setNumber(I)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setOngoing(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setOngoing(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOngoing(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setOngoing(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setOnlyAlertOnce(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setOnlyAlertOnce(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnlyAlertOnce(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setOnlyAlertOnce(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setPriority(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setPriority(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setPriority(I)Landroidx/core/app/i$f;

    .line 3
    iput p1, p0, Lcom/serenegiant/notification/NotificationBuilder;->mPriority:I

    return-object p0
.end method

.method public bridge synthetic setProgress(IIZ)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/serenegiant/notification/NotificationBuilder;->setProgress(IIZ)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setProgress(IIZ)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/app/i$f;->setProgress(IIZ)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setPublicVersion(Landroid/app/Notification;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPublicVersion(Landroid/app/Notification;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setShortcutId(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setShortcutId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setShortcutId(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setShowBadge(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setShowBadge(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setShowWhen(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setShowWhen(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setShowWhen(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setShowWhen(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setSmallIcon(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSmallIcon(II)Landroidx/core/app/i$f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setSmallIcon(II)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSmallIcon(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setSmallIcon(I)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setSmallIcon(II)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/core/app/i$f;->setSmallIcon(II)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setSortKey(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSortKey(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSortKey(Ljava/lang/String;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setSortKey(Ljava/lang/String;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setSound(Landroid/net/Uri;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSound(Landroid/net/Uri;I)Landroidx/core/app/i$f;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setSound(Landroid/net/Uri;I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSound(Landroid/net/Uri;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 2

    .line 5
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setSound(Landroid/net/Uri;)Landroidx/core/app/i$f;

    .line 6
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/core/app/i$f;->setSound(Landroid/net/Uri;I)Landroidx/core/app/i$f;

    .line 8
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 3
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setSound(Landroid/net/Uri;)Landroidx/core/app/i$f;

    .line 4
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setStyle(Landroidx/core/app/i$k;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setStyle(Landroidx/core/app/i$k;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setStyle(Landroidx/core/app/i$k;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setStyle(Landroidx/core/app/i$k;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setSubText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setTicker(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2}, Landroidx/core/app/i$f;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setTimeoutAfter(J)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setTimeoutAfter(J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeoutAfter(J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/core/app/i$f;->setTimeoutAfter(J)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setUsesChronometer(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setUsesChronometer(Z)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUsesChronometer(Z)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setUsesChronometer(Z)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public bridge synthetic setVibrate([J)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setVibrate([J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVibrate([J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setVibrate([J)Landroidx/core/app/i$f;

    .line 3
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public setVibrationPattern([J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setVisibility(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/NotificationBuilder;->setVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVisibility(I)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroidx/core/app/i$f;->setVisibility(I)Landroidx/core/app/i$f;

    .line 3
    iget-object v0, p0, Lcom/serenegiant/notification/NotificationBuilder;->mChannelBuilder:Lcom/serenegiant/notification/ChannelBuilder;

    invoke-virtual {v0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic setWhen(J)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/notification/NotificationBuilder;->setWhen(J)Lcom/serenegiant/notification/NotificationBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setWhen(J)Lcom/serenegiant/notification/NotificationBuilder;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/core/app/i$f;->setWhen(J)Landroidx/core/app/i$f;

    return-object p0
.end method
