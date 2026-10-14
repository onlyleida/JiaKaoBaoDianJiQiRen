.class public abstract Lcn/mucang/sundial/android/tcp/message/CommonResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;
    }
.end annotation


# instance fields
.field protected responseMessageId:I

.field protected responseSerialNo:I

.field protected result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseMessageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseMessageId:I

    return v0
.end method

.method public getResponseSerialNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->responseSerialNo:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->result:I

    return v0
.end method

.method public getResultEnum()Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/CommonResponse;->result:I

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;->from(I)Lcn/mucang/sundial/android/tcp/message/CommonResponse$Result;

    move-result-object v0

    return-object v0
.end method
