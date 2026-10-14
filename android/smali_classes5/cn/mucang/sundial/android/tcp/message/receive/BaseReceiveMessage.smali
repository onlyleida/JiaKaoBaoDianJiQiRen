.class public Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/RawMessageAware;


# instance fields
.field private rawMessage:Lcn/mucang/sundial/android/tcp/message/RawMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawMessage()Lcn/mucang/sundial/android/tcp/message/RawMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;->rawMessage:Lcn/mucang/sundial/android/tcp/message/RawMessage;

    return-object v0
.end method

.method public setRawMessage(Lcn/mucang/sundial/android/tcp/message/RawMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;->rawMessage:Lcn/mucang/sundial/android/tcp/message/RawMessage;

    return-void
.end method
