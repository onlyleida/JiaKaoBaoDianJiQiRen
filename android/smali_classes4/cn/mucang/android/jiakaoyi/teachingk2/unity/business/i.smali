.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/VideoDownloadInformer;",
        "",
        "()V",
        "CHANNEL_ID",
        "",
        "NOTIFICATION_ID",
        "",
        "builder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "updateProgress",
        "",
        "p",
        "",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;

.field private static final b:Landroid/app/NotificationManager;

.field private static final c:Landroidx/core/app/i$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->b:Landroid/app/NotificationManager;

    .line 2
    new-instance v1, Landroidx/core/app/i$f;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v2

    const-string v3, "VideoDownload"

    invoke-direct {v1, v2, v3}, Landroidx/core/app/i$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->c:Landroidx/core/app/i$f;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 4
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 6
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_downloading_video:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/i$f;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v0

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$mipmap;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setSmallIcon(I)Landroidx/core/app/i$f;

    move-result-object v0

    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setDefaults(I)Landroidx/core/app/i$f;

    move-result-object v0

    const/4 v1, -0x2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setPriority(I)Landroidx/core/app/i$f;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/core/app/i$f;->setAutoCancel(Z)Landroidx/core/app/i$f;

    move-result-object v0

    .line 11
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_download_progress:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/i$f;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    move-result-object v0

    const/16 v2, 0x64

    .line 12
    invoke-virtual {v0, v2, v1, v1}, Landroidx/core/app/i$f;->setProgress(IIZ)Landroidx/core/app/i$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->c()V

    return-void
.end method

.method public static final b(F)V
    .locals 7

    const/16 v0, 0x64

    int-to-float v1, v0

    mul-float p0, p0, v1

    float-to-int p0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_0

    .line 1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->c:Landroidx/core/app/i$f;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_video_download_complete:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/i$f;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/c;

    const-wide/16 v4, 0x3e8

    .line 2
    invoke-static {v3, v4, v5}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->c:Landroidx/core/app/i$f;

    sget-object v4, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_download_progress2:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.teachbase_download_progress2)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroidx/core/app/i$f;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/i$f;

    .line 4
    :goto_0
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->c:Landroidx/core/app/i$f;

    invoke-virtual {v3, v0, p0, v1}, Landroidx/core/app/i$f;->setProgress(IIZ)Landroidx/core/app/i$f;

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->b:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroidx/core/app/i$f;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static final c()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/i;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
