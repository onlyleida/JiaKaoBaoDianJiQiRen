.class public final enum Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;",
        "",
        "type",
        "",
        "typeName",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getType",
        "()I",
        "getTypeName",
        "()Ljava/lang/String;",
        "EMULATOR",
        "LUKAOYI",
        "ROBOT",
        "ROBOT_B2",
        "MOTO",
        "CHANGKAOYI_B2",
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
.field private static final synthetic $VALUES:[Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

.field public static final enum CHANGKAOYI_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

.field public static final enum EMULATOR:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

.field public static final enum LUKAOYI:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

.field public static final enum MOTO:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

.field public static final enum ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

.field public static final enum ROBOT_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;


# instance fields
.field private final type:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->EMULATOR:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->LUKAOYI:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->MOTO:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->CHANGKAOYI_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const-string v1, "EMULATOR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u6a21\u62df\u5668"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->EMULATOR:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const-string v1, "LUKAOYI"

    const/4 v2, 0x2

    const-string v4, "\u8def\u8003\u4eea"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->LUKAOYI:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const-string v1, "ROBOT"

    const/4 v3, 0x3

    const-string v4, "\u673a\u5668\u4eba"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const-string v1, "ROBOT_B2"

    const/4 v2, 0x4

    const-string v4, "\u5927\u8f66\u673a\u5668\u4eba"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const-string v1, "MOTO"

    const/4 v3, 0x5

    const-string v4, "\u6469\u6258\u8f66"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->MOTO:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    const-string v1, "CHANGKAOYI_B2"

    const/4 v2, 0x6

    const-string v4, "\u5927\u8f66\u573a\u8003\u4eea"

    invoke-direct {v0, v1, v3, v2, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->CHANGKAOYI_B2:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->$values()[Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

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

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->type:I

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;
    .locals 1

    const-class v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;
    .locals 1

    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->$VALUES:[Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->type:I

    return v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->typeName:Ljava/lang/String;

    return-object v0
.end method
