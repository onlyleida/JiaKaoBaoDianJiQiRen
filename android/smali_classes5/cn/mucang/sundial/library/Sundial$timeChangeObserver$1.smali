.class final Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/Sundial;
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
        "Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;

    invoke-direct {v0}, Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;->INSTANCE:Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;)V
    .locals 5

    .line 2
    sget-object v0, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/GlobalData;->getStudentInfoModel()Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->getSavedCourseTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->getCourseTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->getTotalDistance()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->saveCourseTimeAndDistance(JD)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/Sundial$timeChangeObserver$1;->onChanged(Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;)V

    return-void
.end method
