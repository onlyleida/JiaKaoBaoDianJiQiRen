.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$lightExamCallback$1",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
        "onClickClose",
        "",
        "onFailure",
        "model",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
        "onFinish",
        "onStart",
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickClose()V
    .locals 0

    return-void
.end method

.method public onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 8

    const-string p1, "deduct"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Z)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/c;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/e;->h(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->d(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->t(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Deduct:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->End:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V

    .line 4
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->U(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/e1;->x()V

    :goto_1
    return-void
.end method

.method public onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;Z)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->R(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage$b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/b0;->e()Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->pause()V

    :goto_0
    return-void
.end method
