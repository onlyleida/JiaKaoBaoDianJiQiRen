.class public final Lcn/mucang/android/jiakaoyi/k3setting/backup/q/b;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/backup/binder/LightOrderDiffBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "k3setting_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/backup/q/b;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->editTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->deleteTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->sortTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->iconIv:Lcn/mucang/android/image/view/MucangImageView;

    .line 5
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    .line 6
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->step_icon_dengguang:I

    .line 7
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/image/view/MucangImageView;->d(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->titleTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/s/p;->a:Lcn/mucang/jiakaoyi/uilib/s/p;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const/16 v1, 0x14

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    if-le v0, v1, :cond_1

    .line 11
    :cond_0
    iput v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    .line 12
    :cond_1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->playOrderTv:Landroid/widget/TextView;

    const-string p2, "(\u968f\u673a\u64ad\u653e)"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-lt v0, v1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->playOrderTv:Landroid/widget/TextView;

    const-string p2, "(\u6700\u540e\u4e00\u6761)"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->playOrderTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u6761)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
