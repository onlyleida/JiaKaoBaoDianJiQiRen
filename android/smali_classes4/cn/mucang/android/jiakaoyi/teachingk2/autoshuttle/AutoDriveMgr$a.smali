.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Running:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Manual:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Pending:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$a;->a:[I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->Normal:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->DriveEnd:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->RadarBrake:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GPS:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->GPSRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;->RadarBrakeRecover:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoshuttle/AutoDriveMgr$a;->b:[I

    return-void
.end method
