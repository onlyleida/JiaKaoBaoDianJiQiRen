.class public final Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;
.super Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;",
        "idCardType",
        "Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;",
        "idCard",
        "",
        "(Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;Ljava/lang/String;)V",
        "()V",
        "getIdCard",
        "()Ljava/lang/String;",
        "setIdCard",
        "(Ljava/lang/String;)V",
        "getIdCardType",
        "()Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;",
        "setIdCardType",
        "(Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;)V",
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
.field private idCard:Ljava/lang/String;

.field private idCardType:Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;->idCardType:Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;

    .line 4
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;->idCard:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getIdCard()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;->idCard:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdCardType()Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;->idCardType:Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;

    return-object v0
.end method

.method public final setIdCard(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;->idCard:Ljava/lang/String;

    return-void
.end method

.method public final setIdCardType(Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/model/IdCardLoginData;->idCardType:Lcn/mucang/jiakaoyi/uilib/login/model/IdCardType;

    return-void
.end method
