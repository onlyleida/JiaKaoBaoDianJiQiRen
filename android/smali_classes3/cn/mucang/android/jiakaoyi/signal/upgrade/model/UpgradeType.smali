.class public final enum Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareCollector:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareGNSS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareGear:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareLky:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareMain:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareOBD:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareSafe:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareThrottle:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareUltrasonic1:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum FirmwareUltrasonic2:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v1, "None"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->None:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v3, "FirmwareMain"

    const/4 v4, 0x1

    const-string v5, "\u4e3b\u63a7\u6a21\u5757"

    invoke-direct {v1, v3, v4, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareMain:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v5, "FirmwareOBD"

    const/4 v6, 0x2

    const-string v7, "\u8f66\u578b\u6570\u636e"

    invoke-direct {v3, v5, v6, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareOBD:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v7, "FirmwareCollector"

    const/4 v8, 0x3

    const-string v9, "\u91c7\u96c6\u677f\u56fa\u4ef6"

    invoke-direct {v5, v7, v8, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareCollector:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v9, "FirmwareUltrasonic1"

    const/4 v10, 0x4

    const-string v11, "\u8d85\u58f0\u6ce2\u6a21\u57571"

    invoke-direct {v7, v9, v10, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareUltrasonic1:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v11, "FirmwareUltrasonic2"

    const/4 v12, 0x5

    const-string v13, "\u8d85\u58f0\u6ce2\u6a21\u57572"

    invoke-direct {v9, v11, v12, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareUltrasonic2:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 7
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v13, "FirmwareSafe"

    const/4 v14, 0x6

    const-string v15, "\u5b89\u5168\u6267\u884c\u673a\u6784"

    invoke-direct {v11, v13, v14, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareSafe:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 8
    new-instance v13, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v15, "FirmwareThrottle"

    const/4 v14, 0x7

    const-string v12, "\u6cb9\u95e8\u6a21\u5757"

    invoke-direct {v13, v15, v14, v14, v12}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareThrottle:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 9
    new-instance v12, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v15, "FirmwareGear"

    const/16 v14, 0x8

    const-string v10, "\u6321\u4f4d\u6a21\u5757"

    invoke-direct {v12, v15, v14, v14, v10}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareGear:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 10
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v15, "FirmwareGNSS"

    const/16 v14, 0x9

    const-string v8, "GNSS\u6a21\u5757"

    invoke-direct {v10, v15, v14, v14, v8}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareGNSS:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    .line 11
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const-string v15, "FirmwareLky"

    const/16 v14, 0xa

    const-string v6, "\u8def\u8003\u4eea"

    invoke-direct {v8, v15, v14, v14, v6}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->FirmwareLky:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    const/16 v6, 0xb

    new-array v6, v6, [Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    .line 12
    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

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

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->name:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->values()[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    .line 2
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 3
    aget-object p0, v0, p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->None:Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/upgrade/model/UpgradeType;->type:I

    return v0
.end method
