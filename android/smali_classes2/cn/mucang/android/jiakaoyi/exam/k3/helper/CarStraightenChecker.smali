.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DURATION:I = 0xbb8


# instance fields
.field private initAngel:Ljava/lang/Float;

.field private isStarted:Z

.field private time:I

.field private timeAtSpeed0:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xbb8

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->initAngel:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->isStarted:Z

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->time:I

    return-void
.end method


# virtual methods
.method public onCheck(FFJ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->isStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 3
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->initAngel:Ljava/lang/Float;

    return v1

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p1, p1, v0

    if-lez p1, :cond_5

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->initAngel:Ljava/lang/Float;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->timeAtSpeed0:Ljava/lang/Long;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->initAngel:Ljava/lang/Float;

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr p3, p1

    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->time:I

    int-to-long p1, p1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_3
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 8
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->initAngel:Ljava/lang/Float;

    :cond_4
    return v1

    .line 9
    :cond_5
    :goto_1
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 10
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->initAngel:Ljava/lang/Float;

    return v1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->isStarted:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStraightenChecker;->isStarted:Z

    return-void
.end method
