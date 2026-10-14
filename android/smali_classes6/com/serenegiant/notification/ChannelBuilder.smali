.class public Lcom/serenegiant/notification/ChannelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/notification/ChannelBuilder$NotificationVisibility;,
        Lcom/serenegiant/notification/ChannelBuilder$Importance;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field public static final IMPORTANCE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_VISIBILITY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ChannelBuilder"


# instance fields
.field private argb:I

.field private audioAttributes:Landroid/media/AudioAttributes;

.field private bypassDnd:Z

.field private channelId:Ljava/lang/String;

.field private createIfExists:Z

.field private description:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private importance:I

.field private lights:Z

.field private lockscreenVisibility:I

.field private final mContext:Landroid/content/Context;

.field private name:Ljava/lang/CharSequence;

.field private showBadge:Z

.field private sound:Landroid/net/Uri;

.field private vibration:Z

.field private vibrationPattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/serenegiant/notification/ChannelBuilder;->IMPORTANCE:Ljava/util/Set;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, -0x3e8

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v4, v1, v2

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v1, v8

    .line 6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v1, v9

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v1, v9

    .line 8
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/serenegiant/notification/ChannelBuilder;->NOTIFICATION_VISIBILITY:Ljava/util/Set;

    new-array v1, v8, [Ljava/lang/Integer;

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    const/4 v2, -0x1

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 11
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v2, "miscellaneous"

    const-string v3, "miscellaneous"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/notification/ChannelBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/notification/ChannelBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miscellaneous"

    .line 4
    iput-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    .line 6
    iput v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->lockscreenVisibility:I

    .line 7
    iput-boolean v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->bypassDnd:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->showBadge:Z

    .line 9
    iput v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->argb:I

    .line 10
    iput-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->createIfExists:Z

    .line 11
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p2, v0

    :cond_0
    iput-object p2, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/serenegiant/notification/ChannelBuilder;->name:Ljava/lang/CharSequence;

    .line 14
    iput p4, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    .line 15
    iput-object p5, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupName:Ljava/lang/String;

    return-void
.end method

.method public static getBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 5

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lcom/serenegiant/notification/ChannelBuilder;

    .line 4
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/serenegiant/notification/ChannelBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/serenegiant/notification/ChannelBuilder;->setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setBypassDnd(Z)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 7
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setShowBadge(Z)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 9
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 10
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 11
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->enableLights(Z)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 12
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->enableVibration(Z)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 13
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    .line 14
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object p0

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/serenegiant/notification/ChannelBuilder;->setCreateIfExists(Z)Lcom/serenegiant/notification/ChannelBuilder;

    return-object v2

    .line 16
    :cond_0
    new-instance v0, Lcom/serenegiant/notification/ChannelBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/serenegiant/notification/ChannelBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method private static readEntryOne(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_16

    .line 2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    const-string v7, "notificationChannel"

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v7, 0x2

    if-ne v2, v7, :cond_14

    const-string v2, "channelId"

    const-string v8, ""

    .line 5
    invoke-static {v0, v1, v3, v2, v8}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 7
    invoke-static {v0, v2}, Lcom/serenegiant/notification/ChannelBuilder;->getBuilder(Landroid/content/Context;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object v2

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v4}, Lcom/serenegiant/notification/ChannelBuilder;->setCreateIfExists(Z)Lcom/serenegiant/notification/ChannelBuilder;

    move-result-object v2

    .line 9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_11

    .line 10
    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 12
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const-string v13, "importance"

    const-string v14, "enableVibration"

    const-string v15, "createIfExists"

    const-string v5, "lockscreenVisibility"

    const-string v7, "vibrationPattern"

    const-string v6, "sound"

    const-string v4, "light"

    const-string v3, "name"

    move/from16 v16, v9

    const-string v9, "bypassDnd"

    move/from16 v17, v10

    const-string v10, "description"

    move-object/from16 v18, v8

    const-string v8, "enableLights"

    const-string v0, "showBadge"

    const/16 v19, -0x1

    sparse-switch v12, :sswitch_data_0

    :goto_2
    const/4 v11, -0x1

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    const/16 v11, 0xb

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    const/16 v11, 0xa

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const/16 v11, 0x9

    goto :goto_3

    :sswitch_3
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/16 v11, 0x8

    goto :goto_3

    :sswitch_4
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x7

    goto :goto_3

    :sswitch_5
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    const/4 v11, 0x6

    goto :goto_3

    :sswitch_6
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x5

    goto :goto_3

    :sswitch_7
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    const/4 v11, 0x4

    goto :goto_3

    :sswitch_8
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_2

    :cond_8
    const/4 v11, 0x3

    goto :goto_3

    :sswitch_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_2

    :cond_9
    const/4 v11, 0x2

    goto :goto_3

    :sswitch_a
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_2

    :cond_a
    const/4 v11, 0x1

    goto :goto_3

    :sswitch_b
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_2

    :cond_b
    const/4 v11, 0x0

    :goto_3
    packed-switch v11, :pswitch_data_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    :goto_4
    move-object/from16 v5, v18

    goto/16 :goto_a

    .line 13
    :pswitch_0
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->getImportance()I

    move-result v0

    const/4 v3, 0x0

    move-object/from16 v11, p0

    .line 14
    invoke-static {v11, v1, v3, v13, v0}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 15
    invoke-virtual {v2, v0}, Lcom/serenegiant/notification/ChannelBuilder;->setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;

    :goto_5
    move-object v7, v3

    move-object/from16 v5, v18

    goto/16 :goto_9

    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v11, p0

    .line 16
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->shouldVibrate()Z

    move-result v0

    .line 17
    invoke-static {v11, v1, v3, v14, v0}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/serenegiant/notification/ChannelBuilder;->enableVibration(Z)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_5

    :pswitch_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object/from16 v11, p0

    .line 18
    invoke-static {v11, v1, v3, v15, v0}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/serenegiant/notification/ChannelBuilder;->setCreateIfExists(Z)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_6

    :pswitch_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object/from16 v11, p0

    .line 19
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->getLockscreenVisibility()I

    move-result v4

    .line 20
    invoke-static {v11, v1, v3, v5, v4}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 21
    sget-object v5, Lcom/serenegiant/notification/ChannelBuilder;->NOTIFICATION_VISIBILITY:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 22
    invoke-virtual {v2, v4}, Lcom/serenegiant/notification/ChannelBuilder;->setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;

    :cond_c
    :goto_6
    move-object v7, v3

    goto :goto_4

    :pswitch_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 23
    invoke-static {v11, v1, v3, v7, v5}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 25
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 26
    array-length v4, v3

    if-lez v4, :cond_e

    .line 27
    array-length v4, v3

    new-array v4, v4, [J

    .line 28
    array-length v6, v3

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_d

    aget-object v8, v3, v7

    const-wide/16 v9, 0x0

    .line 29
    invoke-static {v8, v9, v10}, Lcom/serenegiant/utils/ObjectHelper;->asLong(Ljava/lang/Object;J)J

    move-result-wide v8

    add-int/lit8 v19, v19, 0x1

    .line 30
    aput-wide v8, v4, v19

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    if-ltz v19, :cond_e

    add-int/lit8 v3, v19, 0x1

    .line 31
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_a

    :pswitch_5
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 33
    invoke-static {v11, v1, v7, v6, v5}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 35
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/serenegiant/notification/ChannelBuilder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;

    goto/16 :goto_a

    :pswitch_6
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 36
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->getLightColor()I

    move-result v3

    .line 37
    invoke-static {v11, v1, v7, v4, v3}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_8

    :pswitch_7
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 38
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 39
    invoke-static {v11, v1, v7, v3, v4}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setName(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_a

    :pswitch_8
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 40
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->canBypassDnd()Z

    move-result v3

    .line 41
    invoke-static {v11, v1, v7, v9, v3}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setBypassDnd(Z)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_a

    :pswitch_9
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 42
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v11, v1, v7, v10, v3}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_a

    :pswitch_a
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object/from16 v5, v18

    .line 44
    :goto_8
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->shouldShowLights()Z

    move-result v3

    .line 45
    invoke-static {v11, v1, v7, v8, v3}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->enableLights(Z)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_a

    :pswitch_b
    const/4 v7, 0x0

    move-object/from16 v11, p0

    move-object v3, v0

    move-object/from16 v5, v18

    const/4 v0, 0x0

    .line 46
    invoke-virtual {v2}, Lcom/serenegiant/notification/ChannelBuilder;->canShowBadge()Z

    move-result v4

    .line 47
    invoke-static {v11, v1, v7, v3, v4}, Lcom/serenegiant/utils/XmlHelper;->getAttribute(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->setShowBadge(Z)Lcom/serenegiant/notification/ChannelBuilder;

    goto :goto_a

    :cond_f
    move-object v11, v0

    move-object v7, v3

    move-object v5, v8

    move/from16 v16, v9

    move/from16 v17, v10

    :goto_9
    const/4 v0, 0x0

    :cond_10
    :goto_a
    add-int/lit8 v10, v17, 0x1

    move-object v8, v5

    move-object v3, v7

    move-object v0, v11

    move/from16 v9, v16

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_11
    move-object v11, v0

    move-object v7, v3

    move-object v4, v2

    goto :goto_b

    :cond_12
    move-object v11, v0

    move-object v7, v3

    :cond_13
    :goto_b
    move-object/from16 v2, p2

    goto :goto_c

    :cond_14
    move-object v11, v0

    move-object v7, v3

    const/4 v0, 0x3

    if-ne v2, v0, :cond_13

    if-eqz v4, :cond_13

    .line 48
    invoke-virtual {v4}, Lcom/serenegiant/notification/ChannelBuilder;->build()Landroid/app/NotificationChannel;

    .line 49
    invoke-virtual {v4}, Lcom/serenegiant/notification/ChannelBuilder;->getId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_15
    move-object/from16 v2, p2

    move-object v11, v0

    move-object v7, v3

    .line 50
    :goto_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v2, v0

    move-object v3, v7

    move-object v0, v11

    goto/16 :goto_0

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7313d95a -> :sswitch_b
        -0x7121ee80 -> :sswitch_a
        -0x66ca7c04 -> :sswitch_9
        -0x539568ee -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x6233516 -> :sswitch_6
        0x688c90f -> :sswitch_5
        0x3609e89e -> :sswitch_4
        0x514a77c9 -> :sswitch_3
        0x629f2cf5 -> :sswitch_2
        0x768a704f -> :sswitch_1
        0x7eb2da74 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static updateNotificationChannel(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/serenegiant/notification/ChannelBuilder;->readEntryOne(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    sget-object p1, Lcom/serenegiant/notification/ChannelBuilder;->TAG:Ljava/lang/String;

    const-string v1, "IOException"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 7
    sget-object p1, Lcom/serenegiant/notification/ChannelBuilder;->TAG:Ljava/lang/String;

    const-string v1, "XmlPullParserException"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public build()Landroid/app/NotificationChannel;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/serenegiant/utils/BuildCheck;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/serenegiant/notification/ChannelBuilder;->createNotificationChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public canBypassDnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->bypassDnd:Z

    return v0
.end method

.method public canShowBadge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->showBadge:Z

    return v0
.end method

.method protected createNotificationChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "notification"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2
    iget-object v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->createIfExists:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    .line 4
    :cond_0
    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 5
    iput v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    :cond_1
    if-nez v1, :cond_2

    .line 6
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/serenegiant/notification/ChannelBuilder;->name:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 7
    :cond_2
    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 8
    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->lockscreenVisibility:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 9
    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->bypassDnd:Z

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 10
    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->showBadge:Z

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 11
    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->argb:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 12
    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->lights:Z

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 13
    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibrationPattern:[J

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 14
    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibration:Z

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 15
    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->sound:Landroid/net/Uri;

    iget-object v3, p0, Lcom/serenegiant/notification/ChannelBuilder;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_3
    if-eqz v1, :cond_5

    .line 16
    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/serenegiant/notification/ChannelBuilder;->createNotificationChannelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->name:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->description:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/serenegiant/notification/ChannelBuilder;->setupNotificationChannel(Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_5
    return-object v1
.end method

.method protected createNotificationChannelGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "notification"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 5
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    if-nez v1, :cond_3

    .line 6
    new-instance v0, Landroid/app/NotificationChannelGroup;

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p3, p2

    :cond_2
    invoke-direct {v0, p2, p3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/serenegiant/notification/ChannelBuilder;->setupNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_3
    return-void
.end method

.method public enableLights(Z)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->lights:Z

    return-object p0
.end method

.method public enableVibration(Z)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibration:Z

    return-object p0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    return v0
.end method

.method public getLightColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->argb:I

    return v0
.end method

.method public getLockscreenVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->lockscreenVisibility:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->sound:Landroid/net/Uri;

    return-object v0
.end method

.method public getVibrationPattern()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibrationPattern:[J

    return-object v0
.end method

.method public isCreateIfExists()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->createIfExists:Z

    return v0
.end method

.method public setBypassDnd(Z)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->bypassDnd:Z

    return-object p0
.end method

.method public setCreateIfExists(Z)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->createIfExists:Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "miscellaneous"

    :cond_0
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public setImportance(I)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    return-object p0
.end method

.method public setLightColor(I)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->argb:I

    return-object p0
.end method

.method public setLockscreenVisibility(I)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->lockscreenVisibility:I

    return-object p0
.end method

.method public setName(Ljava/lang/CharSequence;)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShowBadge(Z)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->showBadge:Z

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->sound:Landroid/net/Uri;

    .line 2
    iput-object p2, p0, Lcom/serenegiant/notification/ChannelBuilder;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setVibrationPattern([J)Lcom/serenegiant/notification/ChannelBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibration:Z

    .line 2
    iput-object p1, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibrationPattern:[J

    return-object p0
.end method

.method protected setupNotificationChannel(Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 0

    return-object p1
.end method

.method protected setupNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)Landroid/app/NotificationChannelGroup;
    .locals 0

    return-object p1
.end method

.method public shouldShowLights()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->lights:Z

    return v0
.end method

.method public shouldVibrate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibration:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibrationPattern:[J

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelBuilder{channelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", importance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->importance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockscreenVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->lockscreenVisibility:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bypassDnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->bypassDnd:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showBadge="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->showBadge:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", argb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->argb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lights="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->lights:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", vibrationPattern="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibrationPattern:[J

    .line 2
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", vibration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->vibration:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->sound:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", audioAttributes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", groupId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", groupName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/serenegiant/notification/ChannelBuilder;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", createIfExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/serenegiant/notification/ChannelBuilder;->createIfExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
