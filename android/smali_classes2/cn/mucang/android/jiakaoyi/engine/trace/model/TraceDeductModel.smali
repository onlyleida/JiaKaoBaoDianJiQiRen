.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public ln:I

.field public transient reverse:Z

.field public s:I

.field public sc:I

.field public ss:I

.field public tips:Ljava/lang/String;

.field public wn:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Deduct:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    return-void
.end method

.method public static from(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;FLcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    iput v0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->c:I

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->deductScore:I

    iput v0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->sc:I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    iput-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->d:Ljava/lang/String;

    .line 4
    iput p2, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->s:I

    if-eqz p1, :cond_0

    .line 6
    iget p0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->wheel:I

    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->wn:I

    .line 7
    iget p0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->lineNum:I

    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ln:I

    .line 8
    iget p0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->subStep:I

    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ss:I

    .line 9
    iget p0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->x:I

    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->x:I

    .line 10
    iget p0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;->y:I

    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->y:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 11
    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->wn:I

    .line 12
    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ln:I

    .line 13
    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->ss:I

    .line 14
    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->x:I

    .line 15
    iput p0, p3, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->y:I

    :goto_0
    return-object p3
.end method
