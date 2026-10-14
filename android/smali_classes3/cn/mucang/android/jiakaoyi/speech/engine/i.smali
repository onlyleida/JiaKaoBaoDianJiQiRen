.class public final synthetic Lcn/mucang/android/jiakaoyi/speech/engine/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field public final synthetic f:Lcn/mucang/android/jiakaoyi/framework/tts/f;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->b:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->c:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->e:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->f:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->b:Z

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->c:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->e:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/speech/engine/i;->f:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->d0(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    return-void
.end method
