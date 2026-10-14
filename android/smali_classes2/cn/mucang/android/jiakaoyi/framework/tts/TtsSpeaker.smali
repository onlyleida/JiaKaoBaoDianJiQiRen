.class public final enum Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;",
        "",
        "speakerName",
        "",
        "voiceName",
        "speedArray",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V",
        "getSpeedArray",
        "()[I",
        "getVoiceName",
        "()Ljava/lang/String;",
        "XiaoYan",
        "XuJiu",
        "XiaoLu",
        "XuXiaoBao",
        "YiFei",
        "XiaoJing",
        "MengMeng",
        "Padiguli",
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum MengMeng:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum Padiguli:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum XiaoJing:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum XiaoLu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum XiaoYan:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum XuJiu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum XuXiaoBao:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

.field public static final enum YiFei:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;


# instance fields
.field private final speakerName:Ljava/lang/String;

.field private final speedArray:[I

.field private final voiceName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoYan:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XuJiu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoLu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XuXiaoBao:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->YiFei:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoJing:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->MengMeng:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->Padiguli:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    const/4 v7, 0x5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    const-string v1, "XiaoYan"

    const/4 v2, 0x0

    const-string v3, "\u5c0f\u71d5"

    const-string v4, "x2_xiaoyan"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v6, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoYan:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v13, v7, [I

    fill-array-data v13, :array_1

    const-string v9, "XuJiu"

    const/4 v10, 0x1

    const-string v11, "\u8bb8\u4e45"

    const-string v12, "aisjiuxu"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XuJiu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v6, v7, [I

    fill-array-data v6, :array_2

    const-string v2, "XiaoLu"

    const/4 v3, 0x2

    const-string v4, "\u5c0f\u9732"

    const-string v5, "x2_yezi"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoLu:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v13, v7, [I

    fill-array-data v13, :array_3

    const-string v9, "XuXiaoBao"

    const/4 v10, 0x3

    const-string v11, "\u8bb8\u5c0f\u5b9d"

    const-string v12, "aisbabyxu"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XuXiaoBao:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v6, v7, [I

    fill-array-data v6, :array_4

    const-string v2, "YiFei"

    const/4 v3, 0x4

    const-string v4, "\u4e00\u83f2"

    const-string v5, "x2_yifei"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->YiFei:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v13, v7, [I

    fill-array-data v13, :array_5

    const-string v9, "XiaoJing"

    const/4 v10, 0x5

    const-string v11, "\u5c0f\u5a67"

    const-string v12, "aisjinger"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoJing:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    const-string v2, "MengMeng"

    const/4 v3, 0x6

    const-string v4, "\u840c\u840c"

    const-string v5, "x_mengmenghappy"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->MengMeng:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    new-array v13, v7, [I

    fill-array-data v13, :array_7

    const-string v9, "Padiguli"

    const/4 v10, 0x7

    const-string v11, "\u5e15\u8482\u53e4\u91cc"

    const-string v12, "patiguli"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->Padiguli:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->$values()[Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    return-void

    :array_0
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x46
    .end array-data

    :array_1
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x46
    .end array-data

    :array_2
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x41
    .end array-data

    :array_3
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x46
    .end array-data

    :array_4
    .array-data 4
        0x14
        0x1e
        0x28
        0x32
        0x3c
    .end array-data

    :array_5
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x46
    .end array-data

    :array_6
    .array-data 4
        0x28
        0x32
        0x37
        0x3c
        0x41
    .end array-data

    :array_7
    .array-data 4
        0x28
        0x2d
        0x32
        0x37
        0x3c
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->speakerName:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->voiceName:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->speedArray:[I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->$VALUES:[Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    return-object v0
.end method


# virtual methods
.method public final getSpeedArray()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->speedArray:[I

    return-object v0
.end method

.method public final getVoiceName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->voiceName:Ljava/lang/String;

    return-object v0
.end method
