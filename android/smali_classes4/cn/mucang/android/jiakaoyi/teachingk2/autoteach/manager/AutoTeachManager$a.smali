.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager;
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
    .locals 6

    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->values()[Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->None:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Initialed:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Start:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->InitError:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/init/EngineState;->Destroy:Lcn/mucang/android/jiakaoyi/engine/init/EngineState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x5

    aput v5, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$a;->a:[I

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->values()[Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Running:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Manual:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;->Waiting:Lcn/mucang/android/jiakaoyi/signal/autopilot/AutoPilotMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/AutoTeachManager$a;->b:[I

    return-void
.end method
