.class public final Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;-><init>()V
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
        "cn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$runnable$1",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;->a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;->b(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V

    return-void
.end method

.method private static final b(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/sso/r;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/sso/r;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->n()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginModel;->getToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/sso/r;->b(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getStatus()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getStatus()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;->getStatus()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 3
    :cond_1
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->j(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->o()Landroidx/lifecycle/z;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;->a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/sso/p;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/sso/p;-><init>(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;->a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->j(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel$a;->a:Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;->i(Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
