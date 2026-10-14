.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

.field public static final enum Pause:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

.field public static final enum Resume:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

.field public static final enum Start:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

.field public static final enum Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;


# instance fields
.field public final cmd:B

.field public final desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_start_auto_driving:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Start:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_pause_auto_driving:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Pause"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v4, v6, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Pause:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget v5, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_resume_auto_driving:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Resume"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v6, v8, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Resume:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    sget v7, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_stop_auto_driving:I

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Stop"

    const/4 v10, 0x4

    invoke-direct {v5, v9, v8, v10, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    new-array v7, v10, [Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    aput-object v2, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

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
    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->cmd:B

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    return-object v0
.end method
