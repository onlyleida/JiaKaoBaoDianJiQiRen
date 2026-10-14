.class Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickClose()V
    .locals 0

    return-void
.end method

.method public onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-virtual {v0}, Lf/a/a/a/n/d/f;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->r(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->s(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Lcn/mucang/android/image/view/MucangImageView;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->step_icon_dengguang:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/image/view/MucangImageView;->d(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->t(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/s/p;->a:Lcn/mucang/jiakaoyi/uilib/s/p;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;->u(Lcn/mucang/android/jiakaoyi/k3setting/exam/g1;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
