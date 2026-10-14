.class Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 2
    iget p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    iget p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-le p2, p3, :cond_0

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;->access$100(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100171_Event;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
