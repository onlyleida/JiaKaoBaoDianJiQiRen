.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;",
        ">;"
    }
.end annotation


# instance fields
.field public carStraightRunStartTime:J

.field public lastCalTime:J

.field public result:Z

.field public straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->lastCalTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->carStraightRunStartTime:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->result:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/HuiZhenVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->lastCalTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->result:Z

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->start()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->straightenChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget-wide v1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->onCheck(FFJ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->result:Z

    .line 8
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->lastCalTime:J

    .line 9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/HuiZhenHandler;->result:Z

    return p1
.end method
