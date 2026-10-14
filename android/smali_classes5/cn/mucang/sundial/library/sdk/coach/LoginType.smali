.class public final enum Lcn/mucang/sundial/library/sdk/coach/LoginType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/sundial/library/sdk/coach/LoginType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/sundial/library/sdk/coach/LoginType;",
        "",
        "",
        "typeId",
        "Ljava/lang/String;",
        "getTypeId",
        "()Ljava/lang/String;",
        "desc",
        "getDesc",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "ID_CARD",
        "QR_CODE",
        "FACE",
        "SWITCH_LOGIN",
        "MOBILE",
        "MOBILE_OR_IDCARD",
        "TAIZHOU",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum FACE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum ID_CARD:Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum MOBILE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum MOBILE_OR_IDCARD:Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum QR_CODE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum SWITCH_LOGIN:Lcn/mucang/sundial/library/sdk/coach/LoginType;

.field public static final enum TAIZHOU:Lcn/mucang/sundial/library/sdk/coach/LoginType;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/mucang/sundial/library/sdk/coach/LoginType;

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "ID_CARD"

    const/4 v3, 0x0

    const-string v4, "\u8d26\u53f7\u767b\u5f55"

    const-string v5, "1"

    .line 1
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->ID_CARD:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "QR_CODE"

    const/4 v3, 0x1

    const-string v4, "\u626b\u7801\u767b\u5f55"

    const-string v5, "2"

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->QR_CODE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "FACE"

    const/4 v3, 0x2

    const-string v4, "\u4eba\u8138\u8bc6\u522b\u767b\u5f55"

    const-string v5, "4"

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->FACE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "SWITCH_LOGIN"

    const/4 v3, 0x3

    const-string v4, "\u5b66\u5458\u5207\u6362\u767b\u5f55"

    const-string v5, "5"

    .line 4
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->SWITCH_LOGIN:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "MOBILE"

    const/4 v3, 0x4

    const-string v4, "\u624b\u673a\u53f7\u767b\u5f55"

    const-string v5, "7"

    .line 5
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->MOBILE:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "MOBILE_OR_IDCARD"

    const/4 v3, 0x5

    const-string v4, "\u4efb\u610f\u8d26\u53f7\u767b\u5f55"

    const-string v5, "8"

    .line 6
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->MOBILE_OR_IDCARD:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    new-instance v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    const-string v2, "TAIZHOU"

    const/4 v3, 0x6

    const-string v4, "\u8ba1\u65f6\u8d26\u53f7\u767b\u5f55"

    const-string v5, "6"

    .line 7
    invoke-direct {v1, v2, v3, v4, v5}, Lcn/mucang/sundial/library/sdk/coach/LoginType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcn/mucang/sundial/library/sdk/coach/LoginType;->TAIZHOU:Lcn/mucang/sundial/library/sdk/coach/LoginType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/mucang/sundial/library/sdk/coach/LoginType;->$VALUES:[Lcn/mucang/sundial/library/sdk/coach/LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/sundial/library/sdk/coach/LoginType;->desc:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/sundial/library/sdk/coach/LoginType;->typeId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/sundial/library/sdk/coach/LoginType;
    .locals 1

    const-class v0, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/library/sdk/coach/LoginType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/sundial/library/sdk/coach/LoginType;
    .locals 1

    sget-object v0, Lcn/mucang/sundial/library/sdk/coach/LoginType;->$VALUES:[Lcn/mucang/sundial/library/sdk/coach/LoginType;

    invoke-virtual {v0}, [Lcn/mucang/sundial/library/sdk/coach/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/sundial/library/sdk/coach/LoginType;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/LoginType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/sdk/coach/LoginType;->typeId:Ljava/lang/String;

    return-object v0
.end method
