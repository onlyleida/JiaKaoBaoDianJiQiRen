.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;,
        Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private d:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private g:Landroid/app/Dialog;

.field private h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/s0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/s0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->k:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    .line 8
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->i:Ljava/util/List;

    .line 9
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->c:Ljava/lang/String;

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->j:Landroid/os/Handler;

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->G()V

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;->ExamIng:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->d:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    return-void
.end method

.method private synthetic A(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->CloseLight:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->d:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;->ExamIng:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->H()V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->Motor:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic E(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->Motor:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->d:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    return-object p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->H()V

    return-void
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    return-object p1
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->r()V

    return-void
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->s(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->q()V

    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->o()V

    return-void
.end method

.method static synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->p()V

    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->r()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->FingerPrint:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_fingerprint_start_exam:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_btn_confirm:I

    .line 6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/q0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/q0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 7
    invoke-static {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/exam/r0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/r0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->r()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->CloseLight:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_exam_before_close_lights:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$b;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_continue_exam:I

    .line 6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/v0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/v0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 7
    invoke-static {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/exam/w0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/w0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->r()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->Motor:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a:Landroid/app/Activity;

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_open_engine:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_continue_exam:I

    .line 5
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/u0;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/u0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 6
    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/exam/t0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/t0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->c:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private s(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->r()V

    return-void
.end method

.method private synthetic u(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->FingerPrint:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic w(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e:Ljava/util/Map;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->CloseLight:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public synthetic B(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->A(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic D(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->C(Landroid/view/View;)V

    return-void
.end method

.method public synthetic F(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->E(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic v(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->u(Landroid/view/View;)V

    return-void
.end method

.method public synthetic x(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->w(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->y(Landroid/view/View;)V

    return-void
.end method
