.class final Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/util/LoginUtil;->studentSilenceLogout(Ljava/lang/String;Lcn/mucang/sundial/library/SundialCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $callBack:Lcn/mucang/sundial/library/SundialCallBack;

.field final synthetic $logoutEvent:Landroidx/lifecycle/i0;

.field final synthetic $observer:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/SundialCallBack;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/i0;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    iput-object p2, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->$observer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->$logoutEvent:Landroidx/lifecycle/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;)V
    .locals 2

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-Sundial \u9759\u9ed8\u5b66\u5458\u7b7e\u9000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string v1, "\u5931\u8d25"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->$observer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/i0$b;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->$logoutEvent:Landroidx/lifecycle/i0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/util/LoginUtil$studentSilenceLogout$1;->onChanged(Lcn/mucang/sundial/android/eventbus/event/StudentLogoutResponseEvent;)V

    return-void
.end method
