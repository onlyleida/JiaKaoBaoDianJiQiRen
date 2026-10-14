.class public Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi$UploadTraceResult;
.super Lcn/mucang/android/core/api/upload/UploadResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/engine/trace/upload/UploadTraceApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadTraceResult"
.end annotation


# instance fields
.field public clientContext:Ljava/lang/String;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/api/upload/UploadResult;-><init>()V

    return-void
.end method
