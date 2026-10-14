.class public final Lcn/mucang/android/jiakaoyi/speech/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/d/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J$\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0012\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u0012\u001a\u00020\u0006H\u0016J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001a\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u001a\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J$\u0010\u001d\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/ui/SpeechViewController;",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;",
        "()V",
        "mSpeechPanel",
        "Lcn/mucang/android/jiakaoyi/speech/ui/VoiceNewPanel;",
        "closePanel",
        "",
        "onAnswerText",
        "sessionId",
        "",
        "ttsText",
        "onAsrResult",
        "words",
        "isFinal",
        "",
        "onDismissHint",
        "onSessionEnd",
        "onShowHint",
        "onSpeakEnd",
        "onSpeakStart",
        "onStateChanged",
        "state",
        "",
        "onTimeout",
        "type",
        "onVolumeChanged",
        "volume",
        "data",
        "",
        "onWakeup",
        "keyWord",
        "Companion",
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
.field private a:Lcn/mucang/android/jiakaoyi/speech/ui/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final j()V
    .locals 2

    const-string v0, "SpeechViewController"

    const-string v1, "closePanel"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    if-nez v1, :cond_0

    const-string v1, "closePanel speechPanel == null"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->dismiss()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->C(Z)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "onTimeout sessionId="

    .line 1
    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpeechViewController"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    const-string v0, "onShowHint words="

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechViewController"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/ui/k;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcn/mucang/android/jiakaoyi/speech/ui/k;-><init>(Lkotlin/jvm/b/a;ILkotlin/jvm/internal/o;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    .line 6
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->B(I)V

    .line 7
    :cond_1
    instance-of v1, v0, Landroidx/fragment/app/d;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/fragment/app/d;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_4

    return-void

    .line 8
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string v1, "DefaultVoiceCallback"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 10
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->z(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onClose sessionId="

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechViewController"

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/i;->j()V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string p3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/i;->j()V

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onWakeup: sessionId:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", type:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpeechViewController"

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/speech/ui/k;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/k;-><init>(Lkotlin/jvm/b/a;ILkotlin/jvm/internal/o;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->B(I)V

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    instance-of p3, p1, Landroidx/fragment/app/d;

    if-eqz p3, :cond_1

    check-cast p1, Landroidx/fragment/app/d;

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string p3, "DefaultVoiceCallback"

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public i()V
    .locals 3

    const-string v0, "SpeechViewController"

    const-string v1, "onDismissHint"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->s()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/i;->j()V

    :cond_2
    return-void
.end method

.method public onSpeakEnd()V
    .locals 0

    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/i;->a:Lcn/mucang/android/jiakaoyi/speech/ui/k;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/ui/k;->x([B)V

    :cond_1
    :goto_0
    return-void
.end method
