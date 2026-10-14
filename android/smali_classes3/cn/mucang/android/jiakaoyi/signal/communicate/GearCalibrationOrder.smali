.class public final enum Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

.field public static final enum Calibration:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

.field public static final enum CalibrationUpload:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

.field public static final enum GearBoundary:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

.field public static final enum GearData:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

.field public static final enum GyroscopeData:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

.field public static final enum ManualSettings:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final order:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    const-string v1, "GearData"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "\u6321\u4f4d\u6570\u636e"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->GearData:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    const-string v4, "GyroscopeData"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-string v7, "\u9640\u87ba\u4eea\u6570\u636e"

    invoke-direct {v1, v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->GyroscopeData:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    .line 3
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    const-string v7, "Calibration"

    const/4 v8, 0x5

    const-string v9, "\u4e0b\u4f4d\u673a\u6807\u5b9a"

    invoke-direct {v4, v7, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v4, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->Calibration:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    .line 4
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    const-string v9, "CalibrationUpload"

    const/4 v10, 0x6

    const-string v11, "\u6807\u5b9a\u4fe1\u606f\u4e0a\u4f20"

    invoke-direct {v7, v9, v6, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->CalibrationUpload:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    .line 5
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    const-string v11, "GearBoundary"

    const/4 v12, 0x4

    const/16 v13, 0x8

    const-string v14, "\u6321\u4f4d\u8fb9\u754c\u4fe1\u606f"

    invoke-direct {v9, v11, v12, v13, v14}, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->GearBoundary:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    .line 6
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    const-string v13, "ManualSettings"

    const/16 v14, 0xb

    const-string v15, "\uff08\u624b\u52a8/\u81ea\u52a8\uff09\u8bbe\u7f6e"

    invoke-direct {v11, v13, v8, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->ManualSettings:Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    new-array v10, v10, [Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v12

    aput-object v11, v10, v8

    .line 7
    sput-object v10, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->order:B

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/communicate/GearCalibrationOrder;

    return-object v0
.end method
