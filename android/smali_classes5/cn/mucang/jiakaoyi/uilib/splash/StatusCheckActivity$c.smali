.class public final Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;-><init>()V
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
        "cn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDeviceTask$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->k(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->n(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->k(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u53d1\u9001\u7ed9\u5e95\u5c42\u4fe1\u606f\u65e0\u54cd\u5e94\uff0c\u8bbe\u5907\u65e0\u6cd5\u8bc6\u522b,\u91cd\u8bd5\u6b21\u6570:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->k(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I

    move-result v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->j(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 5
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->o(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/McCommandManager;->f()Z

    const-wide/16 v0, 0x3e8

    .line 9
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->k(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->m(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1f4

    .line 12
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_0
    return-void
.end method
