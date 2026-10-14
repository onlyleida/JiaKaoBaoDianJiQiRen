.class Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/signal/c/e;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field final synthetic d:Z

.field final synthetic e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->a:Lcn/mucang/android/jiakaoyi/signal/c/e;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->d:Z

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->e:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->a:Lcn/mucang/android/jiakaoyi/signal/c/e;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->c:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$a;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->playingStartVoiceAfter(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V

    return-void
.end method
