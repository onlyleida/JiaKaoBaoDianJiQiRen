.class public final Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/SundialCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/Sundial;->startStudentLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/mucang/sundial/library/SundialCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/Sundial$startStudentLogin$1",
        "Lcn/mucang/sundial/library/SundialCallBack;",
        "",
        "success",
        "Lkotlin/v;",
        "onResult",
        "(Z)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $authToken:Ljava/lang/String;

.field final synthetic $callBack:Lcn/mucang/sundial/library/SundialCallBack;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $idCardNo:Ljava/lang/String;

.field final synthetic $isK2:Z

.field final synthetic $xyToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/SundialCallBack;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$callBack:Lcn/mucang/sundial/library/SundialCallBack;

    iput-object p2, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$idCardNo:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$authToken:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$xyToken:Ljava/lang/String;

    iput-boolean p6, p0, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;->$isK2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/sundial/library/Sundial;->INSTANCE:Lcn/mucang/sundial/library/Sundial;

    invoke-static {p1}, Lcn/mucang/sundial/library/Sundial;->access$startTrainManager(Lcn/mucang/sundial/library/Sundial;)V

    .line 2
    new-instance p1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$1;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$1;-><init>(Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p1, "-Sundial \u9759\u9ed8\u7b7e\u5230\u5931\u8d25\uff0c\u5f39\u51fa\u5b66\u5458\u7b7e\u5230\u9875\u9762"

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$2;

    invoke-direct {p1, p0}, Lcn/mucang/sundial/library/Sundial$startStudentLogin$1$onResult$2;-><init>(Lcn/mucang/sundial/library/Sundial$startStudentLogin$1;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
