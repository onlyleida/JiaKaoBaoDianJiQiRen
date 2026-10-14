.class final Lcn/mucang/sundial/library/activity/StudentInfoActivity$courseTimeObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;-><init>()V
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


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$courseTimeObserver$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

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

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$courseTimeObserver$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getViewModel$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->getSavedCourseTime()J

    move-result-wide v0

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->getCourseTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$courseTimeObserver$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v2}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getViewModel$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;

    move-result-object v2

    invoke-virtual {p1}, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->getTotalDistance()D

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/mucang/sundial/library/viewmodel/StudentInfoViewModel;->saveCourseTimeAndDistance(JD)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity$courseTimeObserver$1;->onChanged(Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;)V

    return-void
.end method
