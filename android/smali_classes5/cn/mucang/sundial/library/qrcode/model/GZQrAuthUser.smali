.class public final Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;",
        "Ljava/io/Serializable;",
        "",
        "idCard",
        "Ljava/lang/String;",
        "getIdCard",
        "()Ljava/lang/String;",
        "setIdCard",
        "(Ljava/lang/String;)V",
        "checkStatus",
        "getCheckStatus",
        "setCheckStatus",
        "",
        "scanLoginStatus",
        "I",
        "getScanLoginStatus",
        "()I",
        "setScanLoginStatus",
        "(I)V",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private checkStatus:Ljava/lang/String;

.field private idCard:Ljava/lang/String;

.field private scanLoginStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->checkStatus:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->idCard:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCheckStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->checkStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->idCard:Ljava/lang/String;

    return-object v0
.end method

.method public final getScanLoginStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->scanLoginStatus:I

    return v0
.end method

.method public final setCheckStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->checkStatus:Ljava/lang/String;

    return-void
.end method

.method public final setIdCard(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->idCard:Ljava/lang/String;

    return-void
.end method

.method public final setScanLoginStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/library/qrcode/model/GZQrAuthUser;->scanLoginStatus:I

    return-void
.end method
