.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->Error:Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/trace/storage/DataType;->typeId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->tp:I

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;IF)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;->d:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;->s:I

    .line 3
    iput p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;->t:F

    return-object p0
.end method
