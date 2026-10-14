.class final Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity;-><init>()V
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
        "Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;",
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
        "Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onChanged",
        "(Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;)V
    .locals 5

    .line 2
    iget-object v0, p1, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;-><init>(Landroid/content/Context;Z)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    sget v2, Lcn/mucang/sundial/library/R$string;->tt_clear_student_login_recode:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.tt_clear_student_login_recode)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;

    invoke-direct {v2, p0, p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;-><init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;->setContent(Ljava/lang/String;Lcn/mucang/sundial/library/widget/DialogCallBack;)Lcn/mucang/sundial/library/widget/ClearRecordConfirmDialog$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Builder;->show()Lcn/mucang/sundial/library/widget/BlankDialog;

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->onChanged(Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;)V

    return-void
.end method
