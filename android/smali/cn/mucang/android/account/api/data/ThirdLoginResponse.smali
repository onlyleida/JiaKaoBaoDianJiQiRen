.class public Lcn/mucang/android/account/api/data/ThirdLoginResponse;
.super Lcn/mucang/android/account/api/data/UserInfoResponse;
.source "SourceFile"


# instance fields
.field private bind:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/account/api/data/UserInfoResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public isBind()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/account/api/data/ThirdLoginResponse;->bind:Z

    return v0
.end method

.method public setBind(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/account/api/data/ThirdLoginResponse;->bind:Z

    return-void
.end method
