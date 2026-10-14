.class public final Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;
.super Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008J\u0008\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
        "()V",
        "assistingDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/dialog/AssistingDialog;",
        "isAssisting",
        "",
        "onAssistEnd",
        "Lkotlin/Function0;",
        "",
        "isSupportAssist",
        "realStop",
        "reason",
        "",
        "setAssistEndCallback",
        "start",
        "stop",
        "sendOrder",
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


# static fields
.field public static final e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

.field private static f:Z

.field private static g:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

.field private static h:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_poqi_assist:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_poqi_assist)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic C()Lkotlin/jvm/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->h:Lkotlin/jvm/b/a;

    return-object v0
.end method

.method public static final synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->G(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->u(Landroid/app/Dialog;)V

    return-void
.end method

.method public static final synthetic F(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->f:Z

    return-void
.end method

.method private final G(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->g:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;->dismiss()V

    :goto_0
    const/4 v3, 0x0

    .line 2
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$realStop$1;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$realStop$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->w(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->d(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    return-void
.end method


# virtual methods
.method public final H(Lkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->h:Lkotlin/jvm/b/a;

    return-void
.end method

.method public I()V
    .locals 7

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u5761\u8d77\u8f85\u52a9\u4e2d..."

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "\u5f00\u59cb\u5761\u8d77\u8f85\u52a9"

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->g:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;->dismiss()V

    .line 5
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v1, "getCurrentActivity()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_shangpo_subsidiary_ing:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "getString(R.string.teach\u2026e_shangpo_subsidiary_ing)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_app_help_shangpo_done:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(R.string.teach\u2026se_app_help_shangpo_done)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$start$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$start$1;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$start$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$start$2;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->g:Lcn/mucang/android/jiakaoyi/teachingk2/assist/b/n;

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->f:Z

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/e;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->f:Z

    return v0
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ed3\u675f\u5761\u8d77\u8f85\u52a9, \u7406\u7531: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAssisting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->i()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->z()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$stop$1;

    invoke-direct {v4, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant$stop$1;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->G(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
