.class Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->E:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->c(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;I)I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401177:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->b(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;

    sget-object v2, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;->PauseExam:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$c;-><init>(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$PostFunction;)V

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->i(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/engine/c;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->p()V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->D:J

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401159:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/e;->b()V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->s()V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->d(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->d(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->c()Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 24
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->l(Ljava/util/ArrayList;)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h()V

    goto :goto_2

    .line 27
    :cond_4
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->enter_next_step:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->d(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 29
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->d(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->a(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    goto :goto_2

    .line 30
    :cond_5
    sget v0, Lcn/mucang/android/jiakaoyi/examk2/R$string;->restart_current_step:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->f(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/a/b;->e()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/e;->b()V

    .line 32
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->a(Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;)Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->f()V

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/common/K2ExamLogic;->F:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->h()V

    :cond_6
    :goto_2
    return-void
.end method
