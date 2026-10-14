.class public Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;
.super Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.source "SourceFile"


# instance fields
.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    const v0, 0x8303

    return v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;->responseCode:I

    return v0
.end method

.method public init([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-byte p1, p1, v0

    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/ReportQueryPhotoResponseResponse;->responseCode:I

    return-void
.end method
