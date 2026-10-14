.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/g;
.super Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachStopCheck;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;",
        "()V",
        "initStatus",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;",
        "checkStatus",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
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


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckStop:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_emergency_button_not_off:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->i(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/g;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
