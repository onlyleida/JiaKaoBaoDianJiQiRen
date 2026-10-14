.class public final Lcn/mucang/android/jiakaoyi/framework/tts/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0004H\u0007J\u0008\u0010\u0012\u001a\u00020\u0013H\u0007J\u0008\u0010\u0014\u001a\u00020\u0004H\u0007J\u0008\u0010\u0015\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0013H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsConfig;",
        "",
        "()V",
        "KEY_TTS_SPEED_GRADE",
        "",
        "KEY_TTS_VOICE_NAME",
        "KEY_TTS_VOICE_SPEED",
        "Offline",
        "Online",
        "SP_TTS_CONFIG_CACHE",
        "voiceName",
        "changePerson",
        "",
        "context",
        "Landroid/content/Context;",
        "speaker",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;",
        "getName",
        "getSpeed",
        "",
        "getType",
        "getVoiceGrade",
        "setVoiceGrade",
        "grade",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/tts/e;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/e;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/e;->a:Lcn/mucang/android/jiakaoyi/framework/tts/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speaker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x32

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->c()I

    move-result v0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getSpeedArray()[I

    move-result-object v2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->e()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/collections/k;->A([II)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x32

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    if-ne v0, v2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b:Ljava/lang/String;

    const-string v0, "tts_config_cache"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/j0;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b:Ljava/lang/String;

    const-string v3, "key_tts_voice_name"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getSpeedArray()[I

    move-result-object p1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->e()I

    move-result v2

    invoke-static {p1, v2}, Lkotlin/collections/k;->A([II)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    const-string p1, "key_tts_voice_speed"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->XiaoYan:Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/TtsSpeaker;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tts_config_cache"

    const-string v2, "key_tts_voice_name"

    .line 3
    invoke-static {v1, v2, v0}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c()I
    .locals 3

    const-string v0, "tts_config_cache"

    const-string v1, "key_tts_voice_speed"

    const/16 v2, 0x32

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->d(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    const-string v0, "cloud"

    return-object v0
.end method

.method public static final e()I
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->Standard:Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/VoiceSpeed;->getIndex()I

    move-result v0

    const-string v1, "tts_config_cache"

    const-string v2, "key_tts_speed_grade"

    .line 2
    invoke-static {v1, v2, v0}, Lcn/mucang/android/core/utils/j0;->d(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final f(I)V
    .locals 2

    const-string v0, "tts_config_cache"

    const-string v1, "key_tts_speed_grade"

    .line 1
    invoke-static {v0, v1, p0}, Lcn/mucang/android/core/utils/j0;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p0

    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/framework/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/a;->l()V

    :goto_1
    return-void
.end method
