.class public Lcn/mucang/android/jiakaoyi/framework/utils/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/media/MediaPlayer;


# direct methods
.method static synthetic a()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic b(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p0

    sput-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->a:Landroid/media/MediaPlayer;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/utils/g0$a;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/g0$a;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
