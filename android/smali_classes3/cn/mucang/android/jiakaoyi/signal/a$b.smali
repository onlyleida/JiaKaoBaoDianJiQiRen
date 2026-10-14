.class public final Lcn/mucang/android/jiakaoyi/signal/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/signal/a;-><clinit>()V
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
        "cn/mucang/android/jiakaoyi/signal/HardwareInfoManager$hardwareInfoObserver$1",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;",
        "onChanged",
        "",
        "it",
        "signal_release"
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
.method public a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/a$a;

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->serialNumber:Ljava/lang/String;

    const-string v1, "\u56de\u8c03\u8bbe\u5907\u83b7\u53d6\u72b6\u6001\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/a$a;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/a$a;->a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    goto :goto_1

    :cond_3
    const-string v0, "\u56de\u8c03\u5bf9\u8c61\u83b7\u53d6\u4e3a\u7a7a"

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;->serialNumber:Ljava/lang/String;

    const-string v0, "\u83b7\u53d6\u5230\u786c\u4ef6\u53d1\u9001\u7684\u8bbe\u5907\u4fe1\u606f\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/a$b;->a(Lcn/mucang/android/jiakaoyi/framework/base/model/HardwareInfo;)V

    return-void
.end method
