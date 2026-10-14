.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;
    }
.end annotation


# instance fields
.field public pressDashLineTime:J

.field public pressFullLineTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressDashLineTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressFullLineTime:J

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressCenterDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p2, p1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressNonMotorVehicleDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p2, p1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 4
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {v3, p1, v1, v2, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressNonMotorVehicleLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {v3, p1, v1, v2, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_4

    .line 6
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressDashLineTime:J

    cmp-long p1, v3, v0

    if-nez p1, :cond_5

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressDashLineTime:J

    goto :goto_3

    .line 8
    :cond_4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressDashLineTime:J

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 9
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressFullLineTime:J

    cmp-long p1, v3, v0

    if-nez p1, :cond_7

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressFullLineTime:J

    goto :goto_4

    .line 11
    :cond_6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressFullLineTime:J

    .line 12
    :cond_7
    :goto_4
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;-><init>()V

    .line 13
    iput-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressDashedLine:Z

    .line 14
    iput-boolean v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressFullLine:Z

    .line 15
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressDashLineTime:J

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressDashLineTime:J

    .line 16
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker;->pressFullLineTime:J

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalPressLineChecker$PressLineInfo;->pressFullLineTime:J

    return-object p1
.end method
