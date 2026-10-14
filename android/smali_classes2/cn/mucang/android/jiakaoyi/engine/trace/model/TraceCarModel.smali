.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# instance fields
.field public a:F

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Car:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->x:I

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->y:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->a:F

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;FF)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;
    .locals 3

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;->x:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->x:I

    if-ne v0, v1, :cond_0

    iget v1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;->y:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->y:I

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->x:I

    .line 3
    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/trace/XYPos;->y:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->y:I

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;->a:F

    .line 5
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    return-object p0
.end method
