.class public final Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$onCreate$3",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;


# direct methods
.method constructor <init>(Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$c;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$c;->b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$c;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->clearTv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$c;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/DeductSettingActivityBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/IncludeRuleTitleLayoutBinding;->clearTv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity$c;->b:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;->h(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingActivity;)Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->A(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
