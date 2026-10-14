.class public final enum Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0086\u0001\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;",
        "",
        "type",
        "",
        "module",
        "",
        "voice",
        "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V",
        "getModule",
        "()Ljava/lang/String;",
        "getType",
        "()I",
        "getVoice",
        "Other",
        "SteeringWheel",
        "GearLever",
        "LeftMirror",
        "DashBoard",
        "Central",
        "LightLever",
        "WiperLever",
        "KeySwitch",
        "Clutch",
        "Brake",
        "Throttle",
        "Companion",
        "signal_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum Brake:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum Central:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum Clutch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final Companion:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;

.field public static final enum DashBoard:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum GearLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum KeySwitch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum LeftMirror:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum LightLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum SteeringWheel:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum Throttle:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field public static final enum WiperLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

.field private static final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final module:Ljava/lang/String;

.field private final type:I

.field private final voice:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->SteeringWheel:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->GearLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->LeftMirror:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->DashBoard:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Central:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->LightLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->WiperLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->KeySwitch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Clutch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Brake:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Throttle:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v1, "Other"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "\u5176\u4ed6"

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v8, "SteeringWheel"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "\u65b9\u5411\u76d8"

    const-string v12, "\u6211\u662f\u65b9\u5411\u76d8"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->SteeringWheel:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v2, "GearLever"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "\u6321\u6746"

    const-string v6, "\u6211\u662f\u6321\u6746"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->GearLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v8, "LeftMirror"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v11, "\u5de6\u540e\u89c6\u955c"

    const-string v12, "\u6211\u662f\u5de6\u540e\u89c6\u955c"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->LeftMirror:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v2, "DashBoard"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-string v5, "\u4eea\u8868\u76d8"

    const-string v6, "\u6211\u662f\u4eea\u8868\u76d8"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->DashBoard:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v8, "Central"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const-string v11, "\u4e2d\u63a7\u5c4f"

    const-string v12, "\u6211\u662f\u4e2d\u63a7\u5c4f"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Central:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v2, "LightLever"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const-string v5, "\u706f\u5149\u62e8\u6746"

    const-string v6, "\u6211\u662f\u706f\u5149\u62e8\u6746"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->LightLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v8, "WiperLever"

    const/4 v9, 0x7

    const/4 v10, 0x7

    const-string v11, "\u96e8\u5237\u62e8\u6746"

    const-string v12, "\u6211\u662f\u96e8\u5237\u62e8\u6746"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->WiperLever:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v2, "KeySwitch"

    const/16 v3, 0x8

    const/16 v4, 0x8

    const-string v5, "\u94a5\u5319\u5f00\u5173"

    const-string v6, "\u6211\u662f\u94a5\u5319\u5f00\u5173"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->KeySwitch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v8, "Clutch"

    const/16 v9, 0x9

    const/16 v10, 0x65

    const-string v11, "\u79bb\u5408"

    const-string v12, "\u6211\u662f\u79bb\u5408"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Clutch:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v2, "Brake"

    const/16 v3, 0xa

    const/16 v4, 0x66

    const-string v5, "\u5239\u8f66"

    const-string v6, "\u6211\u662f\u5239\u8f66"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Brake:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    const-string v8, "Throttle"

    const/16 v9, 0xb

    const/16 v10, 0x67

    const-string v11, "\u6cb9\u95e8"

    const-string v12, "\u6211\u662f\u6cb9\u95e8"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Throttle:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->$values()[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Companion:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->cache:Ljava/util/HashMap;

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->values()[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    move-result-object v0

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->cache:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->type:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->module:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->voice:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCache$cp()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->cache:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final getModule(I)Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Companion:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;->a(I)Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    return-object v0
.end method


# virtual methods
.method public final getModule()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->module:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->type:I

    return v0
.end method

.method public final getVoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->voice:Ljava/lang/String;

    return-object v0
.end method
