.class public final Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->d(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;Ljava/util/Map;ZZZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipSpeaker$speak$2",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;",
        "callback",
        "",
        "data",
        "teachbase_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

.field final synthetic b:Z

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field final synthetic g:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;ZLkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->b:Z

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->e:Z

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->g:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/g;->a:Lcn/mucang/android/jiakaoyi/framework/tts/g;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->p(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->b:Z

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->e:Z

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->f:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->g:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->a(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsRule;)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;->i(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r;ZLjava/lang/String;Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/r$a;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method
