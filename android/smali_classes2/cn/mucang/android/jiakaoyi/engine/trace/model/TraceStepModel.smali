.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# static fields
.field public static final StatusEnd:B = 0x2t

.field public static final StatusStart:B = 0x1t


# instance fields
.field public n:Ljava/lang/String;

.field public r:Z

.field public s:I

.field public ss:I

.field public st:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Step:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    return-void
.end method

.method public static createStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;FZZLcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    iput-object v0, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->n:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 2
    :goto_0
    iput-byte p2, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->st:B

    .line 3
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p0, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    .line 4
    iput p1, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    const/4 p0, 0x0

    .line 5
    iput p0, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    .line 6
    iput-boolean p3, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->r:Z

    return-object p4
.end method

.method public static createSubStep(Lcn/mucang/android/jiakaoyi/engine/model/Step;FIZLcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    iput-object v0, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-byte v0, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->st:B

    .line 3
    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p0, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    .line 4
    iput p1, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    .line 5
    iput p2, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    .line 6
    iput-boolean p3, p4, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->r:Z

    return-object p4
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->n:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->n:Ljava/lang/String;

    .line 3
    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->st:B

    iput-byte v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->st:B

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->s:I

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->ss:I

    .line 7
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->r:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->r:Z

    return-object v0
.end method
