.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->j(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;-><init>()V

    .line 2
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->desc:Ljava/lang/String;

    .line 3
    iget v2, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->code:I

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->step:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->score:I

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamScoreModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamScoreModel;-><init>()V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->t()I

    move-result v0

    iput v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamScoreModel;->score:I

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->d()Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->u(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;ZLcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->d(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamResultModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamResultModel;-><init>()V

    .line 5
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamResultModel;->isSuccess:Z

    .line 6
    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamResultModel;->score:I

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->i0(Z)V

    return-void
.end method
