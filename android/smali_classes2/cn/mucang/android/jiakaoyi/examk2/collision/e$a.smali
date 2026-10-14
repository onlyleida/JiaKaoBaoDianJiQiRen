.class Lcn/mucang/android/jiakaoyi/examk2/collision/e$a;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/examk2/collision/e;->H(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/collision/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e$a;->a:Lcn/mucang/android/jiakaoyi/examk2/collision/e;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/collision/e$a;->a:Lcn/mucang/android/jiakaoyi/examk2/collision/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->t:Z

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/collision/e;->G(Lcn/mucang/android/jiakaoyi/examk2/collision/e;)Lcn/mucang/android/jiakaoyi/engine/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    return-void
.end method
