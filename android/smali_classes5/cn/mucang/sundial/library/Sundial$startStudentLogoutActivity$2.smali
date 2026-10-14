.class final Lcn/mucang/sundial/library/Sundial$startStudentLogoutActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/Sundial;->startStudentLogoutActivity(Landroid/content/Context;Lcn/mucang/sundial/library/SundialCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "resultCode",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 2>",
        "Lkotlin/v;",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
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


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/SundialCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogoutActivity$2;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    sget-object p2, Lcn/mucang/sundial/library/Sundial;->INSTANCE:Lcn/mucang/sundial/library/Sundial;

    invoke-static {p2}, Lcn/mucang/sundial/library/Sundial;->access$stopTrainManager(Lcn/mucang/sundial/library/Sundial;)V

    .line 2
    :cond_1
    iget-object p2, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogoutActivity$2;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcn/mucang/sundial/library/SundialCallBack;->onResult(Z)V

    .line 3
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-Sundial \u5b66\u5458\u7b7e\u9000\u62cd\u7167\u8fd4\u56de\u503c1 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    return-void
.end method
