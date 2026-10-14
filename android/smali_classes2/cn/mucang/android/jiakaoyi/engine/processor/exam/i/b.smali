.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/engine/f/a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/f/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;->a:Lcn/mucang/android/jiakaoyi/engine/f/a;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;->b:I

    return-void
.end method


# virtual methods
.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExamEventCallback \u9879\u76ee\u7ed3\u675f : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExamEventCallback \u9879\u76ee\u5f00\u59cb : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/h/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p2}, Lcn/mucang/android/jiakaoyi/engine/h/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZZLcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 6
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->R(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->t:Landroidx/lifecycle/z;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->U(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->t:Landroidx/lifecycle/z;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/i/b;->a:Lcn/mucang/android/jiakaoyi/engine/f/a;

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/f/a;->onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method
