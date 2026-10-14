.class public Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;
.super Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;
.source "SourceFile"


# static fields
.field private static final CODE_LOGIN_FAIL:I = 0x190

.field private static final CODE_LOGIN_SUCCESS:I = 0xc8

.field private static final CODE_LOGIN_TOKEN_EXPIRED:I = 0x191


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/socket/SocketModel;-><init>(I)V

    .line 2
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->code:I

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTokenExpired()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTokenFail()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/socket/model/LoginRespModel;->code:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
