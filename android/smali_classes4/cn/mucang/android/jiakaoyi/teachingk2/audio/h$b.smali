.class public final Lcn/mucang/android/jiakaoyi/teachingk2/audio/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/audio/AudioManager$refresh$1",
        "Ljava/lang/Runnable;",
        "run",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->r()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->E(I)V

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->g(Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->e()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;->f(Lcn/mucang/android/jiakaoyi/teachingk2/audio/h;Z)V

    :cond_0
    return-void
.end method
