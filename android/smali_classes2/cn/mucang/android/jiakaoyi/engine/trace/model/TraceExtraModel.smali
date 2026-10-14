.class public Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;
.super Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;
.source "SourceFile"


# instance fields
.field public cm:I

.field public mp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceBaseModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;->mp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public set(ILjava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;->mp:Ljava/lang/String;

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceExtraModel;->cm:I

    return-object p0
.end method
