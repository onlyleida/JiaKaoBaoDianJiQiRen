.class public final enum Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "",
        "grade",
        "",
        "typeName",
        "",
        "speaker",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;",
        "(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V",
        "getGrade",
        "()I",
        "getSpeaker",
        "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;",
        "getTypeName",
        "()Ljava/lang/String;",
        "SpecialVoice",
        "GlobalError",
        "TeachError",
        "TeachDeduct",
        "GlobalRemind",
        "ActiveRemember",
        "VoiceRobot",
        "AutoTeach",
        "SuperLevel",
        "Teach",
        "ExamTip",
        "ExamDeduct",
        "GlobalTip",
        "SynthVoice",
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum ActiveRemember:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum GlobalRemind:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum SynthVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public static final enum VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;


# instance fields
.field private final grade:I

.field private final speaker:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field private final typeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalRemind:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ActiveRemember:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SynthVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoYan:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const-string v1, "SpecialVoice"

    const/4 v2, 0x0

    const/16 v3, 0x2710

    const-string v4, "\u7279\u6b8a\u8bed\u97f3"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v14, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->MengMeng:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const-string v9, "GlobalError"

    const/4 v10, 0x1

    const/16 v11, 0xa

    const-string v12, "\u5168\u5c40\u7ea0\u9519"

    move-object v8, v0

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "TeachError"

    const/4 v3, 0x2

    const/16 v4, 0x9

    const-string v5, "\u6559\u5b66\u7ea0\u9519"

    move-object v1, v0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "TeachDeduct"

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v5, "\u6559\u5b66\u6263\u5206"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "GlobalRemind"

    const/4 v3, 0x4

    const/4 v4, 0x7

    const-string v5, "\u5168\u5c40\u63d0\u9192"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalRemind:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "ActiveRemember"

    const/4 v3, 0x5

    const/4 v4, 0x6

    const-string v5, "\u4e3b\u52a8\u63d0\u9192"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ActiveRemember:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "VoiceRobot"

    const/4 v3, 0x6

    const/16 v4, 0xb

    const-string v5, "\u8bed\u97f3\u52a9\u624b"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 8
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "AutoTeach"

    const/4 v2, 0x7

    const/16 v3, 0xc

    const-string v4, "\u81ea\u52a8\u793a\u6559"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    sget-object v14, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoLu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const-string v9, "SuperLevel"

    const/16 v10, 0x8

    const/16 v11, 0x2711

    const-string v12, "\u8d85\u7ea7\u522b\u8bed\u97f3"

    move-object v8, v0

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SuperLevel:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "Teach"

    const/16 v3, 0x9

    const/16 v4, 0xa

    const-string v5, "\u6559\u5b66\u8bed\u97f3"

    move-object v1, v0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->Teach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 11
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "ExamTip"

    const/16 v2, 0xa

    const-string v4, "\u8003\u8bd5\u63d0\u793a"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 12
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "ExamDeduct"

    const/16 v2, 0xb

    const/16 v3, 0x8

    const-string v4, "\u8003\u8bd5\u6263\u5206"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "GlobalTip"

    const/16 v3, 0xc

    const/4 v4, 0x7

    const-string v5, "\u5168\u5c40\u63d0\u793a"

    move-object v1, v0

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 14
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "SynthVoice"

    const/16 v2, 0xd

    const/4 v3, 0x0

    const-string v4, "\u5408\u6210\u8bed\u97f3"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;-><init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SynthVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->$values()[Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->grade:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->typeName:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->speaker:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    return-object v0
.end method


# virtual methods
.method public final getGrade()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->grade:I

    return v0
.end method

.method public final getSpeaker()Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->speaker:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->typeName:Ljava/lang/String;

    return-object v0
.end method
