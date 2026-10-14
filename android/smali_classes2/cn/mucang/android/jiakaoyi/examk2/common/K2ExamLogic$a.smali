.class Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/record/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->k(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 6
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->l(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->m(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;Z)Z

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/ReportStepModel;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    goto :goto_1

    .line 5
    :cond_0
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->exam_pass:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    goto :goto_1

    .line 9
    :cond_2
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->exam_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;I)I

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->e(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)I

    .line 12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/init/a;->reset()V

    .line 13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    :cond_3
    if-eqz v2, :cond_4

    .line 15
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 17
    :goto_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/e;

    .line 18
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/e;->R()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->g(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/common/q;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->g(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/common/q;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->h(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    iget v3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->a:I

    iget-boolean v4, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->b:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/examk2/common/q;->a(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Ljava/util/List;IZ)V

    goto :goto_4

    .line 21
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->h(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    move-result-object v0

    iput-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->b:Z

    .line 22
    :cond_7
    :goto_4
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->a:Lcn/mucang/jiakaoyi/uilib/record/e;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/record/e;->h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    .line 23
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$a;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->j(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/f/b;

    .line 24
    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    goto :goto_5

    :cond_8
    return-void
.end method
