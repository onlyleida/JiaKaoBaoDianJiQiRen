.class public final enum Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;",
        "",
        "index",
        "",
        "speedName",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getIndex",
        "()I",
        "getSpeedName",
        "()Ljava/lang/String;",
        "Slow",
        "Slower",
        "Standard",
        "Faster",
        "Fast",
        "framework_release"
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

.field public static final enum Fast:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

.field public static final enum Faster:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

.field public static final enum Slow:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

.field public static final enum Slower:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

.field public static final enum Standard:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;


# instance fields
.field private final index:I

.field private final speedName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Slow:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Slower:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Standard:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Faster:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Fast:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const-string v1, "Slow"

    const/4 v2, 0x0

    const-string v3, "\u7f13\u6162"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Slow:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const-string v1, "Slower"

    const/4 v2, 0x1

    const-string v3, "\u8f83\u6162"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Slower:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const-string v1, "Standard"

    const/4 v2, 0x2

    const-string v3, "\u6807\u51c6"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Standard:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const-string v1, "Faster"

    const/4 v2, 0x3

    const-string v3, "\u8f83\u5feb"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Faster:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    const-string v1, "Fast"

    const/4 v2, 0x4

    const-string v3, "\u5feb\u901f"

    invoke-direct {v0, v1, v2, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Fast:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->$values()[Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

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

    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->index:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->speedName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->index:I

    return v0
.end method

.method public final getSpeedName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->speedName:Ljava/lang/String;

    return-object v0
.end method
