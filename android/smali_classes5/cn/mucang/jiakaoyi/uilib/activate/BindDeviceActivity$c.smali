.class public final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;-><init>()V
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
        "cn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$rollCheckActiveStateTask$1",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->g(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->j(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;J)V

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->g(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    const-string v1, "\u4e8c\u7ef4\u7801\u8fc7\u671f\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->k(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;->i(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity;)Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->l()V

    const-wide/16 v0, 0x3e8

    .line 6
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    const-string v0, "viewModel"

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
