.class public final enum Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

.field public static final enum Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

.field public static final enum Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

.field public static final enum Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

.field public static final enum StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    const-string v1, "StepNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->StepNone:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    new-instance v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    const-string v3, "Step1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step1:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    new-instance v3, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    const-string v5, "Step2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step2:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    new-instance v5, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    const-string v7, "Step3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->$VALUES:[Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->$VALUES:[Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/examk2/common/PlayStartVoiceUtil$WayState;

    return-object v0
.end method
