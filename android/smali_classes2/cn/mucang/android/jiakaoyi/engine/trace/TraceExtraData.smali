.class public Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_ACCEPTANCE:I = 0x7

.field public static final TYPE_ALL_EXAM:I = 0x1

.field public static final TYPE_ALL_PRACTICE:I = 0x5

.field public static final TYPE_AUTO_TEACH:I = 0x6

.field public static final TYPE_CIRCLE_TRAIN:I = 0x1b

.field public static final TYPE_COMPLEX_TRAIN:I = 0x1c

.field public static final TYPE_EXAM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_EXERCISE:I = 0x0

.field public static final TYPE_FIRST_PRACTICE:I = 0x19

.field public static final TYPE_HELP_TEACH:I = 0x1a

.field public static final TYPE_PRACTICE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_SINGLE_EXAM:I = 0x2


# instance fields
.field public costRecordId:Ljava/lang/String;

.field public guideMark:Z

.field public kemu:Ljava/lang/String;

.field public orderNo:Ljava/lang/String;

.field private passScore:I

.field public posMapCode:Ljava/lang/String;

.field public studentId:Ljava/lang/String;

.field public subCode:Ljava/lang/String;

.field public traceId:Ljava/lang/String;

.field private type:I

.field public valid:Z

.field public xy:Ljava/lang/String;

.field public xyToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->passScore:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->type:I

    return v0
.end method

.method public isCircleTrain()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->type:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRobotExam()Z
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isRobotExercise()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPassScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->passScore:I

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->i(I)V

    return-void
.end method

.method public setTraceType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->type:I

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->k(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/TraceExtraData;->type:I

    return-void
.end method
