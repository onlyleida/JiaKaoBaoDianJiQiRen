.class public Landroidx/core/app/i$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field public mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/i$b;",
            ">;"
        }
    .end annotation
.end field

.field mAllowSystemGeneratedContextualActions:Z

.field mBadgeIcon:I

.field mBigContentView:Landroid/widget/RemoteViews;

.field mBubbleMetadata:Landroidx/core/app/i$e;

.field mCategory:Ljava/lang/String;

.field mChannelId:Ljava/lang/String;

.field mChronometerCountDown:Z

.field mColor:I

.field mColorized:Z

.field mColorizedSet:Z

.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContentView:Landroid/widget/RemoteViews;

.field public mContext:Landroid/content/Context;

.field mExtras:Landroid/os/Bundle;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mGroupAlertBehavior:I

.field mGroupKey:Ljava/lang/String;

.field mGroupSummary:Z

.field mHeadsUpContentView:Landroid/widget/RemoteViews;

.field mInvisibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/i$b;",
            ">;"
        }
    .end annotation
.end field

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mLocalOnly:Z

.field mLocusId:Landroidx/core/a/c;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field public mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/m;",
            ">;"
        }
    .end annotation
.end field

.field mPriority:I

.field mProgress:I

.field mProgressIndeterminate:Z

.field mProgressMax:I

.field mPublicVersion:Landroid/app/Notification;

.field mRemoteInputHistory:[Ljava/lang/CharSequence;

.field mSettingsText:Ljava/lang/CharSequence;

.field mShortcutId:Ljava/lang/String;

.field mShowWhen:Z

.field mSilent:Z

.field mSmallIcon:Landroid/graphics/drawable/Icon;

.field mSortKey:Ljava/lang/String;

.field mStyle:Landroidx/core/app/i$k;

.field mSubText:Ljava/lang/CharSequence;

.field mTickerView:Landroid/widget/RemoteViews;

.field mTimeout:J

.field mUseChronometer:Z

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Landroidx/core/app/i;->f(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3
    invoke-static {p2}, Landroidx/core/app/i$k;->r(Landroid/app/Notification;)Landroidx/core/app/i$k;

    move-result-object v1

    .line 4
    invoke-static {p2}, Landroidx/core/app/i;->j(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/core/app/i$f;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 5
    invoke-static {p2}, Landroidx/core/app/i;->i(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 6
    invoke-static {p2}, Landroidx/core/app/i;->h(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 7
    invoke-static {p2}, Landroidx/core/app/i;->x(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 8
    invoke-static {p2}, Landroidx/core/app/i;->t(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setSettingsText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Landroidx/core/app/i$f;->setStyle(Landroidx/core/app/i$k;)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 10
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 11
    invoke-static {p2}, Landroidx/core/app/i;->l(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setGroup(Ljava/lang/String;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 12
    invoke-static {p2}, Landroidx/core/app/i;->B(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setGroupSummary(Z)Landroidx/core/app/i$f;

    move-result-object v2

    .line 13
    invoke-static {p2}, Landroidx/core/app/i;->p(Landroid/app/Notification;)Landroidx/core/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setLocusId(Landroidx/core/a/c;)Landroidx/core/app/i$f;

    move-result-object v2

    iget-wide v3, p2, Landroid/app/Notification;->when:J

    .line 14
    invoke-virtual {v2, v3, v4}, Landroidx/core/app/i$f;->setWhen(J)Landroidx/core/app/i$f;

    move-result-object v2

    .line 15
    invoke-static {p2}, Landroidx/core/app/i;->v(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setShowWhen(Z)Landroidx/core/app/i$f;

    move-result-object v2

    .line 16
    invoke-static {p2}, Landroidx/core/app/i;->z(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setUsesChronometer(Z)Landroidx/core/app/i$f;

    move-result-object v2

    .line 17
    invoke-static {p2}, Landroidx/core/app/i;->b(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setAutoCancel(Z)Landroidx/core/app/i$f;

    move-result-object v2

    .line 18
    invoke-static {p2}, Landroidx/core/app/i;->r(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setOnlyAlertOnce(Z)Landroidx/core/app/i$f;

    move-result-object v2

    .line 19
    invoke-static {p2}, Landroidx/core/app/i;->q(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setOngoing(Z)Landroidx/core/app/i$f;

    move-result-object v2

    .line 20
    invoke-static {p2}, Landroidx/core/app/i;->o(Landroid/app/Notification;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setLocalOnly(Z)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 21
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 22
    invoke-static {p2}, Landroidx/core/app/i;->c(Landroid/app/Notification;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setBadgeIconType(I)Landroidx/core/app/i$f;

    move-result-object v2

    .line 23
    invoke-static {p2}, Landroidx/core/app/i;->e(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setCategory(Ljava/lang/String;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 24
    invoke-static {p2}, Landroidx/core/app/i;->d(Landroid/app/Notification;)Landroidx/core/app/i$e;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setBubbleMetadata(Landroidx/core/app/i$e;)Landroidx/core/app/i$f;

    move-result-object v2

    iget v3, p2, Landroid/app/Notification;->number:I

    .line 25
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setNumber(I)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 27
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 28
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 29
    invoke-static {p2}, Landroidx/core/app/i;->m(Landroid/app/Notification;)Z

    move-result v4

    .line 30
    invoke-virtual {v2, v3, v4}, Landroidx/core/app/i$f;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v4, p2, Landroid/app/Notification;->audioStreamType:I

    .line 31
    invoke-virtual {v2, v3, v4}, Landroidx/core/app/i$f;->setSound(Landroid/net/Uri;I)Landroidx/core/app/i$f;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Notification;->vibrate:[J

    .line 32
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setVibrate([J)Landroidx/core/app/i$f;

    move-result-object v2

    iget v3, p2, Landroid/app/Notification;->ledARGB:I

    iget v4, p2, Landroid/app/Notification;->ledOnMS:I

    iget v5, p2, Landroid/app/Notification;->ledOffMS:I

    .line 33
    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/app/i$f;->setLights(III)Landroidx/core/app/i$f;

    move-result-object v2

    iget v3, p2, Landroid/app/Notification;->defaults:I

    .line 34
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setDefaults(I)Landroidx/core/app/i$f;

    move-result-object v2

    iget v3, p2, Landroid/app/Notification;->priority:I

    .line 35
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setPriority(I)Landroidx/core/app/i$f;

    move-result-object v2

    .line 36
    invoke-static {p2}, Landroidx/core/app/i;->g(Landroid/app/Notification;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setColor(I)Landroidx/core/app/i$f;

    move-result-object v2

    .line 37
    invoke-static {p2}, Landroidx/core/app/i;->A(Landroid/app/Notification;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setVisibility(I)Landroidx/core/app/i$f;

    move-result-object v2

    .line 38
    invoke-static {p2}, Landroidx/core/app/i;->s(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 39
    invoke-static {p2}, Landroidx/core/app/i;->w(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setSortKey(Ljava/lang/String;)Landroidx/core/app/i$f;

    move-result-object v2

    .line 40
    invoke-static {p2}, Landroidx/core/app/i;->y(Landroid/app/Notification;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/app/i$f;->setTimeoutAfter(J)Landroidx/core/app/i$f;

    move-result-object v2

    .line 41
    invoke-static {p2}, Landroidx/core/app/i;->u(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/i$f;

    move-result-object v2

    const-string v3, "android.progressMax"

    .line 42
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "android.progress"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "android.progressIndeterminate"

    .line 43
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 44
    invoke-virtual {v2, v3, v4, v5}, Landroidx/core/app/i$f;->setProgress(IIZ)Landroidx/core/app/i$f;

    move-result-object v2

    .line 45
    invoke-static {p2}, Landroidx/core/app/i;->a(Landroid/app/Notification;)Z

    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Landroidx/core/app/i$f;->setAllowSystemGeneratedContextualActions(Z)Landroidx/core/app/i$f;

    move-result-object v2

    iget v3, p2, Landroid/app/Notification;->icon:I

    iget v4, p2, Landroid/app/Notification;->iconLevel:I

    .line 47
    invoke-virtual {v2, v3, v4}, Landroidx/core/app/i$f;->setSmallIcon(II)Landroidx/core/app/i$f;

    move-result-object v2

    .line 48
    invoke-static {p2, v1}, Landroidx/core/app/i$f;->getExtrasWithoutDuplicateData(Landroid/app/Notification;Landroidx/core/app/i$k;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/i$f;->addExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/i$f;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 50
    :cond_0
    iget-object v1, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    .line 51
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 52
    invoke-static {v5}, Landroidx/core/app/i$b$a;->d(Landroid/app/Notification$Action;)Landroidx/core/app/i$b$a;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/i$b$a;->b()Landroidx/core/app/i$b;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/core/app/i$f;->addAction(Landroidx/core/app/i$b;)Landroidx/core/app/i$f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 53
    invoke-static {p2}, Landroidx/core/app/i;->n(Landroid/app/Notification;)Ljava/util/List;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/i$b;

    .line 56
    invoke-virtual {p0, v3}, Landroidx/core/app/i$f;->addInvisibleAction(Landroidx/core/app/i$b;)Landroidx/core/app/i$f;

    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.people"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 58
    array-length v3, v1

    if-eqz v3, :cond_3

    .line 59
    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 60
    invoke-virtual {p0, v4}, Landroidx/core/app/i$f;->addPerson(Ljava/lang/String;)Landroidx/core/app/i$f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    .line 61
    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    .line 62
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 63
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 64
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Person;

    .line 65
    invoke-static {v1}, Landroidx/core/app/m;->a(Landroid/app/Person;)Landroidx/core/app/m;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/app/i$f;->addPerson(Landroidx/core/app/m;)Landroidx/core/app/i$f;

    goto :goto_3

    :cond_4
    const/16 p2, 0x18

    if-lt v0, p2, :cond_5

    const-string p2, "android.chronometerCountDown"

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Landroidx/core/app/i$f;->setChronometerCountDown(Z)Landroidx/core/app/i$f;

    :cond_5
    const/16 p2, 0x1a

    if-lt v0, p2, :cond_6

    const-string p2, "android.colorized"

    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/i$f;->setColorized(Z)Landroidx/core/app/i$f;

    :cond_6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$f;->mActions:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$f;->mPersonList:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$f;->mInvisibleActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/core/app/i$f;->mShowWhen:Z

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Landroidx/core/app/i$f;->mLocalOnly:Z

    .line 77
    iput v1, p0, Landroidx/core/app/i$f;->mColor:I

    .line 78
    iput v1, p0, Landroidx/core/app/i$f;->mVisibility:I

    .line 79
    iput v1, p0, Landroidx/core/app/i$f;->mBadgeIcon:I

    .line 80
    iput v1, p0, Landroidx/core/app/i$f;->mGroupAlertBehavior:I

    .line 81
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    .line 82
    iput-object p1, p0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Landroidx/core/app/i$f;->mChannelId:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 85
    iget-object p1, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 86
    iput v1, p0, Landroidx/core/app/i$f;->mPriority:I

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/i$f;->mPeople:Ljava/util/ArrayList;

    .line 88
    iput-boolean v0, p0, Landroidx/core/app/i$f;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method private static getExtrasWithoutDuplicateData(Landroid/app/Notification;Landroidx/core/app/i$k;)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p0, "android.title"

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.text"

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.infoText"

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.subText"

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.intent.extra.CHANNEL_ID"

    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.showWhen"

    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.progress"

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.progressMax"

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.progressIndeterminate"

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.chronometerCountDown"

    .line 13
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.colorized"

    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.people.list"

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.people"

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.support.sortKey"

    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.support.groupKey"

    .line 18
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.support.isGroupSummary"

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.support.localOnly"

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.support.actionExtras"

    .line 21
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "android.car.EXTENSIONS"

    .line 22
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "invisible_actions"

    .line 24
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1, v0}, Landroidx/core/app/i$k;->f(Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-eqz p1, :cond_2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, Landroidx/core/R$dimen;->compat_notification_large_icon_max_width:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    sget v2, Landroidx/core/R$dimen;->compat_notification_large_icon_max_height:I

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    return-object p1

    :cond_1
    int-to-double v1, v1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    div-double/2addr v1, v5

    int-to-double v5, v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v5, v7

    .line 10
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 13
    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private setFlag(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method private useExistingRemoteView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mStyle:Landroidx/core/app/i$k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/app/i$k;->q()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/i$b;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/i$b;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroidx/core/app/i$b;)Landroidx/core/app/i$f;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public addInvisibleAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mInvisibleActions:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/i$b;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/i$b;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addInvisibleAction(Landroidx/core/app/i$b;)Landroidx/core/app/i$f;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addPerson(Landroidx/core/app/m;)Landroidx/core/app/i$f;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$f;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/app/j;

    invoke-direct {v0, p0}, Landroidx/core/app/j;-><init>(Landroidx/core/app/i$f;)V

    invoke-virtual {v0}, Landroidx/core/app/j;->c()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public clearActions()Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public clearInvisibleActions()Landroidx/core/app/i$f;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v0, "invisible_actions"

    .line 4
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public clearPeople()Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/core/app/i$f;->mBigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/core/app/i$f;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$f;->mBigContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Landroidx/core/app/j;

    invoke-direct {v1, p0}, Landroidx/core/app/j;-><init>(Landroidx/core/app/i$f;)V

    .line 5
    iget-object v2, p0, Landroidx/core/app/i$f;->mStyle:Landroidx/core/app/i$k;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2, v1}, Landroidx/core/app/i$k;->u(Landroidx/core/app/h;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroidx/core/app/j;->c()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 10
    :cond_3
    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/core/app/i$f;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/core/app/j;

    invoke-direct {v0, p0}, Landroidx/core/app/j;-><init>(Landroidx/core/app/i$f;)V

    .line 4
    iget-object v1, p0, Landroidx/core/app/i$f;->mStyle:Landroidx/core/app/i$k;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Landroidx/core/app/i$k;->v(Landroidx/core/app/h;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroidx/core/app/j;->c()Landroid/app/Notification;

    move-result-object v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 8
    iget-object v1, p0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/core/app/i$f;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/core/app/i$f;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$f;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Landroidx/core/app/j;

    invoke-direct {v1, p0}, Landroidx/core/app/j;-><init>(Landroidx/core/app/i$f;)V

    .line 5
    iget-object v2, p0, Landroidx/core/app/i$f;->mStyle:Landroidx/core/app/i$k;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2, v1}, Landroidx/core/app/i$k;->w(Landroidx/core/app/h;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 7
    :cond_2
    invoke-virtual {v1}, Landroidx/core/app/j;->c()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    iget-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public extend(Landroidx/core/app/i$h;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Landroidx/core/app/i$h;->a(Landroidx/core/app/i$f;)Landroidx/core/app/i$f;

    return-object p0
.end method

.method public getBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mBigContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getBubbleMetadata()Landroidx/core/app/i$e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mBubbleMetadata:Landroidx/core/app/i$e;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/i$f;->mColor:I

    return v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/core/app/i$f;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/i$f;->mPriority:I

    return v0
.end method

.method public getWhenIfShowing()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/i$f;->mShowWhen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public setAllowSystemGeneratedContextualActions(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mAllowSystemGeneratedContextualActions:Z

    return-object p0
.end method

.method public setAutoCancel(Z)Landroidx/core/app/i$f;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/i$f;->setFlag(IZ)V

    return-object p0
.end method

.method public setBadgeIconType(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mBadgeIcon:I

    return-object p0
.end method

.method public setBubbleMetadata(Landroidx/core/app/i$e;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mBubbleMetadata:Landroidx/core/app/i$e;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroidx/core/app/i$f;
    .locals 2

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mChronometerCountDown:Z

    .line 2
    invoke-virtual {p0}, Landroidx/core/app/i$f;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setColor(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mColor:I

    return-object p0
.end method

.method public setColorized(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mColorized:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mColorizedSet:Z

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mContentInfo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mBigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mHeadsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 2
    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mFullScreenIntent:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/app/i$f;->setFlag(IZ)V

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mGroupKey:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mGroupAlertBehavior:I

    return-object p0
.end method

.method public setGroupSummary(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mGroupSummary:Z

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/app/i$f;->reduceLargeIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 2
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    .line 5
    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public setLocalOnly(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mLocalOnly:Z

    return-object p0
.end method

.method public setLocusId(Landroidx/core/a/c;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mLocusId:Landroidx/core/a/c;

    return-object p0
.end method

.method public setNotificationSilent()Landroidx/core/app/i$f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/core/app/i$f;->mSilent:Z

    return-object p0
.end method

.method public setNumber(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mNumber:I

    return-object p0
.end method

.method public setOngoing(Z)Landroidx/core/app/i$f;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/i$f;->setFlag(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroidx/core/app/i$f;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Landroidx/core/app/i$f;->setFlag(IZ)V

    return-object p0
.end method

.method public setPriority(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mPriority:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mProgressMax:I

    .line 2
    iput p2, p0, Landroidx/core/app/i$f;->mProgress:I

    .line 3
    iput-boolean p3, p0, Landroidx/core/app/i$f;->mProgressIndeterminate:Z

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mPublicVersion:Landroid/app/Notification;

    return-object p0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mRemoteInputHistory:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mSettingsText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public setShortcutInfo(Landroidx/core/a/e/a;)Landroidx/core/app/i$f;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/core/a/e/a;->a()Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public setShowWhen(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mShowWhen:Z

    return-object p0
.end method

.method public setSilent(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mSilent:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroidx/core/app/i$f;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSmallIcon(II)Landroidx/core/app/i$f;
    .locals 1

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 4
    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public setSmallIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->D(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/app/i$f;->mSortKey:Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroidx/core/app/i$f;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 2
    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 4
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 6
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroidx/core/app/i$f;
    .locals 2

    .line 8
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 9
    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 11
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public setStyle(Landroidx/core/app/i$k;)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mStyle:Landroidx/core/app/i$k;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/core/app/i$f;->mStyle:Landroidx/core/app/i$k;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroidx/core/app/i$k;->y(Landroidx/core/app/i$f;)V

    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$f;->mSubText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/i$f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/i$f;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Landroidx/core/app/i$f;->mTickerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setTimeoutAfter(J)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/core/app/i$f;->mTimeout:J

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/core/app/i$f;->mUseChronometer:Z

    return-object p0
.end method

.method public setVibrate([J)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroidx/core/app/i$f;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/app/i$f;->mVisibility:I

    return-object p0
.end method

.method public setWhen(J)Landroidx/core/app/i$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$f;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
