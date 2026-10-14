.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;
.super Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HelpTeachAssistant"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0006\u0010\t\u001a\u00020\u0004J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0016J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0006\u0010\u0015\u001a\u00020\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V",
        "dismissDialog",
        "",
        "fromGps",
        "",
        "isAssisting",
        "isSupportAssist",
        "resumeCar",
        "sendOrder",
        "proj",
        "",
        "act",
        "showPauseDialog",
        "reason",
        "",
        "desc",
        "showStopDialog",
        "start",
        "stop",
        "stopCar",
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
.field final synthetic e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_help_teach:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.teachbase_help_teach)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->u(Landroid/app/Dialog;)V

    return-void
.end method

.method public static final synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->L(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->K(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->J(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/view/View;)V

    return-void
.end method

.method private static final J(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_user_stop:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.teachbase_user_stop)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->N(Ljava/lang/String;)V

    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->u(Landroid/app/Dialog;)V

    return-void
.end method

.method private final L(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$showStopDialog$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$showStopDialog$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$showStopDialog$2;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {v1, p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$showStopDialog$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->v(Ljava/lang/String;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method


# virtual methods
.method public final E(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object p1

    instance-of p1, p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;->b()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->r(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->H()V

    const-string p1, "dismissDialog fromGps"

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final H()V
    .locals 7

    .line 1
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$resumeCar$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$resumeCar$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPauseDialog\uff0c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 4
    :goto_0
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_help_teach_already_stop:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teach\u2026_help_teach_already_stop)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_teach_stop:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c0;

    invoke-direct {v5, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;)V

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getCurrentActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    invoke-direct {p1, v0, v9}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->u(Landroid/app/Dialog;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 10
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->AutoTeach:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    return-void
.end method

.method public M()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$start$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$start$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$start$2;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$start$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->r(IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public final O()V
    .locals 7

    .line 1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$stopCar$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$stopCar$1;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->q(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->isStart()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public q(II)V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    int-to-byte p1, p1

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    int-to-byte p1, p2

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->p(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/y;->d(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)B

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/16 v1, 0x3e8

    int-to-double v1, v1

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->g(J)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->g(J)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->u(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    mul-double p1, p1, v1

    double-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->g(J)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->c()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/d;->b()I

    move-result p1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->h(S)V

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoAssist:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->i()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const/4 v2, 0x5

    const/4 v3, 0x2

    .line 2
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$stop$1;

    invoke-direct {v4, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$stop$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->s(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->L(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
