.class public Lcn/mucang/sundial/android/tcp/message/send/UnregisterRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;
.implements Lcn/mucang/sundial/android/tcp/message/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
