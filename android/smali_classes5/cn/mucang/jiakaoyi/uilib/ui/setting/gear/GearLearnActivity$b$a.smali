.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$GearLayout$editWatch$1",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->f()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->minTv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bf7\u586b\u5165\u6b63\u786e\u7684\u6570\u5b57"

    invoke-static {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->b(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->f()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->maxTv:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->b(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    .line 8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p1, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->value:F

    const/16 v0, 0x32

    .line 9
    iput v0, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->count:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 10
    iput p1, v1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->sum:F

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
