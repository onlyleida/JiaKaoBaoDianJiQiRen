.class public final Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$mRecordCallBack$1",
        "Lcn/mucang/android/jiakaoyi/speech/callback/IRecordCallback;",
        "onAudioRecord",
        "",
        "data",
        "",
        "length",
        "",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BI)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->x(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/m/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->e([BI)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine$b;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->p(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;)Lcn/mucang/android/jiakaoyi/speech/engine/l/a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/j;->e([BI)V

    :goto_1
    return-void
.end method
