.class public final Lcn/mucang/jiakaoyi/uilib/deduct/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/deduct/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/z;->q(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;Lcn/mucang/jiakaoyi/uilib/deduct/z;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$initListener$1$1",
        "Lcn/mucang/jiakaoyi/uilib/deduct/DeductItemBinder$DeductDescEditListener;",
        "onConfirm",
        "",
        "desc",
        "",
        "uilib_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemDeductBinding;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemDeductBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/z$c;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/z$c;->b:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "\u6263\u5206\u8bf4\u660e\u4e0d\u80fd\u4e3a\u7a7a"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/z$c;->a:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemDeductBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingItemDeductBinding;->infoTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/z$c;->b:Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setDesc(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
