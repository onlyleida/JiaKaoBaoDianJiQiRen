.class public Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :goto_1
    return-void
.end method

.method static synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    return-void
.end method

.method private synthetic d(Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->b:Z

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->q(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    if-eqz p1, :cond_0

    .line 4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic f(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;IZ)Landroid/app/Dialog;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/p;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/p;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V

    iput-object v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

    .line 2
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;

    invoke-direct {p1, p0, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/n;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;)V

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->q(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 6
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    sget-object p4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {p3, p4, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->s(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->a:Lcn/mucang/android/jiakaoyi/framework/base/dialog/r;

    return-object p1
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public synthetic e(Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic g(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->f(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method

.method public h(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;IZ)Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;IZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->f()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {v6}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move v8, p5

    .line 5
    invoke-direct/range {v2 .. v8}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->i(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/String;IZ)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method
