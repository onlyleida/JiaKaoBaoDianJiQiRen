.class public Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/Send;


# static fields
.field public static final CAMERA_FAULT:I = 0x800

.field public static final DAILY_DRIVING_OVER_TIME:I = 0x40000

.field public static final DRIVING_DISTANCE_LACK_OR_OVER:I = 0x400000

.field public static final EMERGENCY:I = 0x1

.field public static final ENTER_EXIT_REGION:I = 0x100000

.field public static final ENTER_EXIT_ROUTE:I = 0x200000

.field public static final GNSS_MODULE_FAULT:I = 0x10

.field public static final GNSS_WIRE_NOT_CONNECTED:I = 0x20

.field public static final GNSS_WIRE_SHORT_CIRCUIT:I = 0x40

.field public static final OVER_SPEED:I = 0x2

.field public static final ROUTE_DEVIATION:I = 0x800000

.field public static final STOP_OVER_TIME:I = 0x80000

.field public static final TERMINAL_LCD_FAULT:I = 0x200

.field public static final TERMINAL_MAIN_POWER_LOW_VOLTAGE:I = 0x80

.field public static final TERMINAL_MAIN_POWER_OFF:I = 0x100

.field public static final TIRED_DRIVING:I = 0x4

.field public static final TTS_MODULE_FAULT:I = 0x400

.field public static final VEHICLE_ACC_ON_ILLEGAL:I = 0x8000000

.field public static final VEHICLE_GAS_EXCEPTION:I = 0x2000000

.field public static final VEHICLE_MOVE_ILLEGAL:I = 0x10000000

.field public static final VEHICLE_STOLEN:I = 0x4000000

.field public static final VEHICLE_VSS_FAULT:I = 0x1000000

.field public static final WARNING:I = 0x8


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNormal()Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMark(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->value:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->value:I

    return-void
.end method

.method public clearAllMarks()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->value:I

    return-void
.end method

.method public clearMark(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->value:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->value:I

    return-void
.end method

.method public encode()[B
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/data/gnss/AlarmInfo;->value:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
