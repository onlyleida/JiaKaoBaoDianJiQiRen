.class public final Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;",
        "Ljava/io/Serializable;",
        "()V",
        "enabled",
        "",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "loginMethod",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "getLoginMethod",
        "()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "setLoginMethod",
        "(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private enabled:Z

.field private loginMethod:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->enabled:Z

    return v0
.end method

.method public final getLoginMethod()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->loginMethod:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-object v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->enabled:Z

    return-void
.end method

.method public final setLoginMethod(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->loginMethod:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-void
.end method
