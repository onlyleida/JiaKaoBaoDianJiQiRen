.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

.field public final b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->c:Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->b:Ljava/util/HashSet;

    .line 5
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 6
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;-><init>()V

    .line 7
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepName:Ljava/lang/String;

    .line 8
    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v3, v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel$ExamStepItemModel;->stepId:I

    .line 9
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/ExamStepListModel;->itemList:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->i()V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->e(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/RobotTips;->r(I)V

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->setTraceType(I)V

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/w;->r:Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->i(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->posMapCode:Ljava/lang/String;

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K3:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/z;->a(Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0$a;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/j/b;->d()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;->h()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->f()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->e()V

    return-void
.end method
