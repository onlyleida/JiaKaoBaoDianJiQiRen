.class public final enum Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

.field public static final enum K2_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

.field public static final enum K3_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

.field public static final enum Robot_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;


# instance fields
.field public final name:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    const-string v1, "K2_Voice"

    const/4 v2, 0x0

    const/16 v3, 0x65

    const-string v4, "\u79d1\u4e8c\u8bed\u97f3\u5305"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->K2_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    const-string v3, "K3_Voice"

    const/4 v4, 0x1

    const/16 v5, 0x66

    const-string v6, "\u79d1\u4e09\u8bed\u97f3\u5305"

    invoke-direct {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->K3_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    const-string v5, "Robot_Voice"

    const/4 v6, 0x2

    const/16 v7, 0x67

    const-string v8, "\u673a\u5668\u4eba\u8bed\u97f3\u5305"

    invoke-direct {v3, v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->Robot_Voice:Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

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
    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->type:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoicePackType;

    return-object v0
.end method
