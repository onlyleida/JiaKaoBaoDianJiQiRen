.class public abstract Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;
.super Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/training/ExtendReceiveMessage;


# instance fields
.field private trainingMessage:Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/android/tcp/message/receive/BaseReceiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrainingMessage()Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;->trainingMessage:Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;

    return-object v0
.end method

.method public setTrainingMessage(Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/training/receive/BaseExtendReceiveMessage;->trainingMessage:Lcn/mucang/sundial/android/tcp/message/training/ReceiveTrainingMessage;

    return-void
.end method
