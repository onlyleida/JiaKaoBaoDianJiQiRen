.class Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-virtual {v0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->s(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->t(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$string;->k3setting_count_down_dialog_msg:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->d:Lcn/mucang/jiakaoyi/uilib/r/a;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;->u(Lcn/mucang/android/jiakaoyi/k3setting/exam/z0;Z)V

    :cond_1
    :goto_0
    return-void
.end method
