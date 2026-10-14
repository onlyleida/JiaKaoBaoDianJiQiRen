.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Behavior:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    return-void
.end method


# virtual methods
.method public set(IF)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBehaviorModel;->c:I

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    return-object p0
.end method
