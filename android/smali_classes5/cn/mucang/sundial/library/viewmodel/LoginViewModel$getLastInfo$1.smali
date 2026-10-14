.class final Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->getLastInfo()V
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
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/viewmodel/LoginViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/viewmodel/LoginViewModel;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    invoke-static {v0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->access$getPersonMode$p(Lcn/mucang/sundial/library/viewmodel/LoginViewModel;)I

    move-result v0

    .line 2
    sget-object v1, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "SundialManager.getInstance()"

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->getCoachLiveData()Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastCoach()Lcn/mucang/sundial/android/db/entity/CoachInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/sundial/library/viewmodel/LoginViewModel$getLastInfo$1;->this$0:Lcn/mucang/sundial/library/viewmodel/LoginViewModel;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/LoginViewModel;->getStudentLiveData()Landroidx/lifecycle/i0;

    move-result-object v0

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/sundial/android/SundialManager;->getLastStudent()Lcn/mucang/sundial/android/db/entity/StudentInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
