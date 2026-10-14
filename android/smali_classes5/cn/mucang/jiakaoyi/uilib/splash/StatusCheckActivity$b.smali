.class public final Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->F(Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$requestDevice$1",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
        "onChanged",
        "",
        "t",
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

.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;->b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareNumber:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;->a:Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;->l(Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;->b:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->hardwareNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/splash/StatusCheckActivity$b;->a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    return-void
.end method
