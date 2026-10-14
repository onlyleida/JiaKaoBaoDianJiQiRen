.class public final enum Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;",
        "",
        "type",
        "",
        "desc",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "getType",
        "()I",
        "Share",
        "Lease",
        "BuyOut",
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


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

.field public static final enum BuyOut:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

.field public static final enum Lease:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

.field public static final enum Share:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final type:I


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->Share:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->Lease:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->BuyOut:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    const-string v1, "Share"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u5171\u4eab"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->Share:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    const-string v1, "Lease"

    const/4 v2, 0x2

    const-string v4, "\u79df\u8d41"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->Lease:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    const-string v1, "BuyOut"

    const/4 v3, 0x3

    const-string v4, "\u4e70\u65ad"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->BuyOut:Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->$values()[Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->type:I

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/CooperationMode;->type:I

    return v0
.end method
