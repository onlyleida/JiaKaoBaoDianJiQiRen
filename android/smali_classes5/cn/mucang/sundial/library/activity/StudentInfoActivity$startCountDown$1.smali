.class public final Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/StudentInfoActivity;->startCountDown(I)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1",
        "Landroid/os/CountDownTimer;",
        "Lkotlin/v;",
        "onFinish",
        "()V",
        "",
        "millisUntilFinished",
        "onTick",
        "(J)V",
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
.field final synthetic $delay:I

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/StudentInfoActivity;IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    iput p2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->$delay:I

    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tvDelayNum:Landroid/widget/TextView;

    const-string v1, "binding.tvDelayNum"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getDiffDelay$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$startTrainingFaceCheck(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u5b66\u5458\u5df2\u7b7e\u9000\uff0c\u4e2d\u9014\u62cd\u7167\u4e2d\u6b62\u8df3\u8f6c"

    .line 4
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v0}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tvDelayNum:Landroid/widget/TextView;

    const-string v1, "binding.tvDelayNum"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    int-to-long v3, v3

    add-long/2addr p1, v3

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr p1, v3

    iget-object v3, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {v3}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getDiffDelay$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/sundial/android/SundialManager;->studentLoginSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getCountDownTimer$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5b66\u5458\u5df2\u7b7e\u9000\uff0c\u53d6\u6d88\u5012\u8ba1\u65f6\u62cd\u7167\uff0c\u5269\u4f59\u8df3\u8f6c\u65f6\u95f4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/mucang/sundial/library/activity/StudentInfoActivity$startCountDown$1;->this$0:Lcn/mucang/sundial/library/activity/StudentInfoActivity;

    invoke-static {p2}, Lcn/mucang/sundial/library/activity/StudentInfoActivity;->access$getBinding$p(Lcn/mucang/sundial/library/activity/StudentInfoActivity;)Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/sundial/library/databinding/TtActivityStudentInfoBinding;->tvDelayNum:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 p2, 0x79d2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
