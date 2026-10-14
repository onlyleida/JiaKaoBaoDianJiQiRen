.class public final Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J\u0008\u0010\u000e\u001a\u00020\u000cH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;",
        "",
        "()V",
        "mFootBrakeOn",
        "",
        "getMFootBrakeOn",
        "()Z",
        "setMFootBrakeOn",
        "(Z)V",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "checkPlayVoice",
        "",
        "isFootBrakeOn",
        "dingDong",
        "Companion",
        "exam_release"
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
.field private static final ALL_STEP:I = 0x1

.field public static final Companion:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

.field private static final NO:I = 0x2

.field private static final SPECIAL_STEP:I

.field private static footBrakeOnVoiceType:I


# instance fields
.field private mFootBrakeOn:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->Companion:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->dingDong$lambda-0(Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static final synthetic access$getFootBrakeOnVoiceType$cp()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->footBrakeOnVoiceType:I

    return v0
.end method

.method public static final synthetic access$setFootBrakeOnVoiceType$cp(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->footBrakeOnVoiceType:I

    return-void
.end method

.method private final dingDong()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/exam/R$raw;->dingdong:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/c;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :goto_2
    return-void
.end method

.method private static final dingDong$lambda-0(Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;Landroid/media/MediaPlayer;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :goto_0
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final checkPlayVoice(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mFootBrakeOn:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mFootBrakeOn:Z

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->dingDong()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mFootBrakeOn:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final getMFootBrakeOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mFootBrakeOn:Z

    return v0
.end method

.method public final setMFootBrakeOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->mFootBrakeOn:Z

    return-void
.end method
